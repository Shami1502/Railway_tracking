<%@ Page Language="C#" Theme="Default" MasterPageFile="~/MasterPages/admin.master" AutoEventWireup="true"  CodeFile="TrainUpdates.aspx.cs" Inherits="TrainUpdates" Title="TrainUpdates List" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">Train Updates List</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
		<data:GridViewSearchPanel ID="GridViewSearchPanel1" runat="server" GridViewControlID="GridView1" PersistenceMethod="Session" />
		<br />
		<data:EntityGridView ID="GridView1" runat="server"			
				AutoGenerateColumns="False"					
				OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
				DataSourceID="TrainUpdatesDataSource"
				DataKeyNames="TrainId"
				AllowMultiColumnSorting="false"
				DefaultSortColumnName="" 
				DefaultSortDirection="Ascending"	
				ExcelExportFileName="Export_TrainUpdates.xls"  		
			>
			<Columns>
				<asp:CommandField ShowSelectButton="True" ShowEditButton="True" />				
				<asp:BoundField DataField="TrainName" HeaderText="Train Name" SortExpression="[Train_Name]"  />
				<asp:BoundField DataField="NextStation" HeaderText="Next Station" SortExpression="[Next_station]"  />
				<asp:BoundField DataField="SceduledArrival" HeaderText="Sceduled Arrival" SortExpression="[Sceduled_Arrival]"  />
				<asp:BoundField DataField="EstimatedArrival" HeaderText="Estimated Arrival" SortExpression="[Estimated_Arrival]"  />
				<asp:BoundField DataField="Delay" HeaderText="Delay" SortExpression="[Delay]"  />
				<asp:BoundField DataField="LastUpdate" HeaderText="Last Update" SortExpression="[Last_Update]"  />
				<asp:BoundField DataField="CurrentSpeed" HeaderText="Current Speed" SortExpression="[Current_Speed]"  />
			</Columns>
			<EmptyDataTemplate>
				<b>No TrainUpdates Found!</b>
			</EmptyDataTemplate>
		</data:EntityGridView>
		<br />
		<asp:Button runat="server" ID="btnTrainUpdates" OnClientClick="javascript:location.href='TrainUpdatesEdit.aspx'; return false;" Text="Add New"></asp:Button>
		<data:TrainUpdatesDataSource ID="TrainUpdatesDataSource" runat="server"
			SelectMethod="GetPaged"
			EnablePaging="True"
			EnableSorting="True"
		>
			<Parameters>
				<data:CustomParameter Name="WhereClause" Value="" ConvertEmptyStringToNull="false" />
				<data:CustomParameter Name="OrderByClause" Value="" ConvertEmptyStringToNull="false" />
				<asp:ControlParameter Name="PageIndex" ControlID="GridView1" PropertyName="PageIndex" Type="Int32" />
				<asp:ControlParameter Name="PageSize" ControlID="GridView1" PropertyName="PageSize" Type="Int32" />
				<data:CustomParameter Name="RecordCount" Value="0" Type="Int32" />
			</Parameters>
		</data:TrainUpdatesDataSource>
	    		
</asp:Content>



