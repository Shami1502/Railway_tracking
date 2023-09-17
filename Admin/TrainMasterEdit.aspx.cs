#region Imports...
using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using Railway_Tracking.Web.UI;
#endregion

public partial class TrainMasterEdit : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{		
		FormUtil.RedirectAfterInsertUpdate(FormView1, "TrainMasterEdit.aspx?{0}", TrainMasterDataSource);
		FormUtil.RedirectAfterAddNew(FormView1, "TrainMasterEdit.aspx");
		FormUtil.RedirectAfterCancel(FormView1, "TrainMaster.aspx");
		FormUtil.SetDefaultMode(FormView1, "TrainId");
	}
	protected void GridViewTrainSchedule1_SelectedIndexChanged(object sender, EventArgs e)
	{
		string urlParams = string.Format("ScheduleId={0}", GridViewTrainSchedule1.SelectedDataKey.Values[0]);
		Response.Redirect("TrainScheduleEdit.aspx?" + urlParams, true);		
	}	
}


