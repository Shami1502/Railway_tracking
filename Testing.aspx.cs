using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Railway_Tracking.Entities;
using Railway_Tracking.Data;
public partial class Testing : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }

    protected void btnInsert_Click(object sender, EventArgs e)
    {
        try
        {
            Railway_Tracking.Entities.TrainMaster trainMaster = new Railway_Tracking.Entities.TrainMaster();
            trainMaster.TrainName = "Karakaram";
            trainMaster.StartStation = "Rawalpindi";
            trainMaster.DestinationStation = "karachi";
            trainMaster.ArrivalTime = "02:00";
            trainMaster.DepartureTime = "03:00";

            DataRepository.TrainMasterProvider.Insert(trainMaster);
        }
        catch (Exception exp) 
        {
            throw;
        }
    }
}