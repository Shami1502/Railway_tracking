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

public partial class TrainScheduleEdit : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{		
		FormUtil.RedirectAfterInsertUpdate(FormView1, "TrainScheduleEdit.aspx?{0}", TrainScheduleDataSource);
		FormUtil.RedirectAfterAddNew(FormView1, "TrainScheduleEdit.aspx");
		FormUtil.RedirectAfterCancel(FormView1, "TrainSchedule.aspx");
		FormUtil.SetDefaultMode(FormView1, "ScheduleId");
	}
}


