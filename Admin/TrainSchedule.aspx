<%@ Page Language="C#" Theme="Default" MasterPageFile="~/MasterPages/admin.master" AutoEventWireup="true"  CodeFile="TrainSchedule.aspx.cs" Inherits="TrainSchedule" Title="TrainSchedule List" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">Train Schedule List</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
		<data:GridViewSearchPanel ID="GridViewSearchPanel1" runat="server" GridViewControlID="GridView1" PersistenceMethod="Session" />
		<br />
		<data:EntityGridView ID="GridView1" runat="server"			
				AutoGenerateColumns="False"					
				OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
				DataSourceID="TrainScheduleDataSource"
				DataKeyNames="ScheduleId"
				AllowMultiColumnSorting="false"
				DefaultSortColumnName="" 
				DefaultSortDirection="Ascending"	
				ExcelExportFileName="Export_TrainSchedule.xls"  		
			>
			<Columns>
				<asp:CommandField ShowSelectButton="True" ShowEditButton="True" />				
				<data:HyperLinkField HeaderText="Train Id" DataNavigateUrlFormatString="TrainMasterEdit.aspx?TrainId={0}" DataNavigateUrlFields="TrainId" DataContainer="TrainIdSource" DataTextField="TrainName" />
				<asp:BoundField DataField="TrainName" HeaderText="Train Name" SortExpression="[Train_Name]"  />
				<asp:BoundField DataField="StationName" HeaderText="Station Name" SortExpression="[Station_Name]"  />
				<asp:BoundField DataField="ArrivalTime" HeaderText="Arrival Time" SortExpression="[Arrival_Time]"  />
				<asp:BoundField DataField="DepartureTime" HeaderText="Departure Time" SortExpression="[Departure_Time]"  />
			</Columns>
			<EmptyDataTemplate>
				<b>No TrainSchedule Found!</b>
			</EmptyDataTemplate>
		</data:EntityGridView>
		<br />
		<asp:Button runat="server" ID="btnTrainSchedule" OnClientClick="javascript:location.href='TrainScheduleEdit.aspx'; return false;" Text="Add New"></asp:Button>
		<data:TrainScheduleDataSource ID="TrainScheduleDataSource" runat="server"
			SelectMethod="GetPaged"
			EnablePaging="True"
			EnableSorting="True"
			EnableDeepLoad="True"
			>
			<DeepLoadProperties Method="IncludeChildren" Recursive="False">
	            <Types>
					<data:TrainScheduleProperty Name="TrainMaster"/> 
				</Types>
			</DeepLoadProperties>
			<Parameters>
				<data:CustomParameter Name="WhereClause" Value="" ConvertEmptyStringToNull="false" />
				<data:CustomParameter Name="OrderByClause" Value="" ConvertEmptyStringToNull="false" />
				<asp:ControlParameter Name="PageIndex" ControlID="GridView1" PropertyName="PageIndex" Type="Int32" />
				<asp:ControlParameter Name="PageSize" ControlID="GridView1" PropertyName="PageSize" Type="Int32" />
				<data:CustomParameter Name="RecordCount" Value="0" Type="Int32" />
			</Parameters>
		</data:TrainScheduleDataSource>
	    		
</asp:Content>



