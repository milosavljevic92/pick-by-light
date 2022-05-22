using System;
using System.IO.Ports;
using System.Threading;
namespace PickByLightSDK
{
    public class PBLInterface : iInterface
    {
        static bool _continue = false;
        static bool _maintenanceMode = false;
        public int InputA1 { get; set; }
        public int InputA2 { get; set; }
        public int InputA3 { get; set; }
        public int InputA4 { get; set; }
        public int OutputA1 { get; set; }
        public int OutputA2 { get; set; }
        public int OutputA3 { get; set; }
        public int OutputA4 { get; set; }
        public string InterfaceSn { get; set; }
        public string StatusMessage { get; set; }

        public event EventHandler InputStateChanged;

        private SerialPort _serialPort = new SerialPort();
        public bool StartCommunication(string commName = "COM1", int baundRate = 9600)
        {
            try
            {
                _serialPort.PortName = commName;
                _serialPort.BaudRate = baundRate;
                _serialPort.Parity = _serialPort.Parity;
                _serialPort.DataBits = _serialPort.DataBits;
                _serialPort.StopBits = _serialPort.StopBits;
                _serialPort.Handshake = _serialPort.Handshake;
                _serialPort.ReadTimeout = 500;
                _serialPort.WriteTimeout = 500;
                _serialPort.Open();
                setStatusMessage($"OK: Serial port {commName} is open");
                if (_serialPort.IsOpen == true)
                {
                    _continue = true;
                    Thread readThread = new Thread(readSerialThread);
                    readThread.Start();
                    return true;
                }
                else
                    return false;
            }
            catch { return false; }

        }
        public bool StopCommunication()
        {
            if (!checkIsPortOpen()) return true;
            try
            {
                AllOff();
                _continue = false;
                _maintenanceMode = false;
                _serialPort.Close();
                setStatusMessage("OK: port is closed");
                return true;
            }
            catch
            {
                return false;
            }
        }
        public bool IsConnected()
        {
            return false;
        }
        private void readSerialThread()
        {
            string inputData;
            while (_continue)
            {
                if (!checkIsPortOpen()) _continue = false;
                if (_serialPort.BytesToRead != 0)
                {
                    inputData = _serialPort.ReadLine();
                    if (inputData.Substring(0, 8) == "PBL-IN->")
                    {
                        //PBL-IN->0000
                        //PBL-IN->1111
                        InputA1 = Convert.ToInt32(inputData.Substring(8, 1));
                        InputA2 = Convert.ToInt32(inputData.Substring(9, 1));
                        InputA3 = Convert.ToInt32(inputData.Substring(10, 1));
                        InputA4 = Convert.ToInt32(inputData.Substring(11, 1));
                        setStatusMessage("OK: Connected on PBL");
                        fireEvent();
                    }
                    if (inputData.Substring(0, 13) == "Interface SN:")
                    {
                        InterfaceSn = inputData.Substring(12, 4);
                        setStatusMessage($"OK: Interface SN:{InterfaceSn}");
                    }
                }
            }
        }
        public bool ClearInputs()
        {
            if (!checkIsPortOpen()) return false;
            InputA1 = 0;
            InputA2 = 0;
            InputA3 = 0;
            InputA4 = 0;
            return true;
        }
        public bool CommitOutputs()
        {
            if (!checkIsPortOpen()) return false;
            string tmp = @"PBL-OUT->" + OutputA1.ToString() + OutputA2.ToString() + OutputA3.ToString() + OutputA4.ToString();
            sendToSerial(tmp);
            return true;
        }
        public bool MaintenanceMode(bool active)
        {
            if (active)
                startMaintenanceMode();
            else
                stopMaintenanceMode();
            return true;
        }
        private void startMaintenanceMode()
        {
            _maintenanceMode = true;
            Thread maintenanceThread = new Thread(maintenanceModeThread);
            maintenanceThread.Start();
        }
        private void stopMaintenanceMode()
        {
            _maintenanceMode = false;
        }
        private void maintenanceModeThread()
        {
            while (_maintenanceMode)
            {
                AllOn();
                Thread.Sleep(450);
                AllOff();
                Thread.Sleep(450);
            }
            AllOff();
        }
        private bool checkIsPortOpen()
        {
            return _serialPort.IsOpen;
        }
        private bool AllOn()
        {
            if (!checkIsPortOpen()) return false;
            OutputA1 = 1;
            OutputA2 = 1;
            OutputA3 = 1;
            OutputA4 = 1;
            CommitOutputs();
            return true;
        }
        private bool AllOff()
        {
            if (!checkIsPortOpen()) return false;
            OutputA1 = 0;
            OutputA2 = 0;
            OutputA3 = 0;
            OutputA4 = 0;
            CommitOutputs();
            return true;
        }
        private void sendToSerial(string data)
        {
            if (!checkIsPortOpen()) return;
            _serialPort.Write("");
            _serialPort.WriteLine(data);
            Thread.Sleep(50);
        }
        private void setStatusMessage(string message)
        {
            StatusMessage = message;
        }
        private void fireEvent()
        {
            InputStateChanged(this, null);
        }

    }

}

