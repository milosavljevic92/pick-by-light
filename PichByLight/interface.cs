using System;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;

namespace PickByLightSDK
{
    public interface iInterface
    {
        int InputA1 { get; set; }
        int InputA2 { get; set; }
        int InputA3 { get; set; }
        int InputA4 { get; set; }
        int OutputA1 { get; set; }
        int OutputA2 { get; set; }
        int OutputA3 { get; set; }
        int OutputA4 { get; set; }
        string StatusMessage { get; }
        bool MaintenanceMode(bool active);
        bool StartCommunication(string commName = "COM1", int baundRate = 9600);
        bool StopCommunication();
        bool CommitOutputs();
        bool IsConnected();
        bool ClearInputs();
        


    }
}
