using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.EnterpriseServices;
namespace PickByLight
{
    public partial class frmMain : Form
    {
        PickByLightSDK.PBLInterface _pickByLight = new PickByLightSDK.PBLInterface();
        public frmMain()
        {
            InitializeComponent();
        }
        private void frmMain_Load(object sender, EventArgs e)
        {
            _pickByLight.StartCommunication("COM7",9600); //Open serial communication
            _pickByLight.InputStateChanged += _pickByLight_InputStateChanged;//subscribe on event
            setPanelOnGray();
       
  
        }
        private void frmMain_FormClosing(object sender, FormClosingEventArgs e)
        {
            _pickByLight.StopCommunication();//stop communictation and close port
            _pickByLight.InputStateChanged -= _pickByLight_InputStateChanged;//destroy event
        }
        //events
        private void _pickByLight_StatusMessageChanged(object sender, EventArgs e)
        {
            
        }
        private void _pickByLight_InputStateChanged(object sender, EventArgs e)
        {    
            if (_pickByLight.InputA1 == 1) pnl1.BackColor = Color.Red;//check is input1 activate
            if (_pickByLight.InputA2 == 1) pnl2.BackColor = Color.Red;//check is input2 activate
            if (_pickByLight.InputA3 == 1) pnl3.BackColor = Color.Red;//check is input3 activate
            if (_pickByLight.InputA4 == 1) pnl4.BackColor = Color.Red;//check is input4 activate        
        }
        private void cmd1_Click(object sender, EventArgs e)
        {
            _pickByLight.OutputA1 = 1;//set output1 on high level
            _pickByLight.CommitOutputs();//apply changes on output
        }

        private void cmd2_Click(object sender, EventArgs e)
        {
            _pickByLight.OutputA2 = 1;
            _pickByLight.CommitOutputs();
        }

        private void cmd3_Click(object sender, EventArgs e)
        {
            _pickByLight.OutputA3 = 1;
            _pickByLight.CommitOutputs();
        }

        private void cmd4_Click(object sender, EventArgs e)
        {
            _pickByLight.OutputA4 = 1;
            _pickByLight.CommitOutputs();
        }

        private void cmdSetLogicZero_Click(object sender, EventArgs e)
        {
            _pickByLight.OutputA1 = 0;
            _pickByLight.OutputA2 = 0;
            _pickByLight.OutputA3 = 0;
            _pickByLight.OutputA4 = 0;
            _pickByLight.CommitOutputs();
        }
        private void cmdClearInput_Click(object sender, EventArgs e)
        {
            setPanelOnGray();
        }
        private void setPanelOnGray()
        {
            pnl1.BackColor = Color.Gray;
            pnl2.BackColor = Color.Gray;
            pnl3.BackColor = Color.Gray;
            pnl4.BackColor = Color.Gray;
        }
        private void button1_Click(object sender, EventArgs e)
        {
            _pickByLight.MaintenanceMode(true);
        }

        private void button2_Click(object sender, EventArgs e)
        {
            _pickByLight.MaintenanceMode(false);
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            txtStatus.Text = _pickByLight.StatusMessage;
        }
    }
}
