<%@ Page Language="C#" Theme="Default" MasterPageFile="~/MasterPages/admin.master" AutoEventWireup="true"  CodeFile="TrainMaster.aspx.cs" Inherits="TrainMaster" Title="TrainMaster List" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">Train Master List</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
		<data:GridViewSearchPanel ID="GridViewSearchPanel1" runat="server" GridViewControlID="GridView1" PersistenceMethod="Session" />
		<br />
		<data:EntityGridView ID="GridView1" runat="server"			
				AutoGenerateColumns="False"					
				OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
				DataSourceID="TrainMasterDataSource"
				DataKeyNames="TrainId"
				AllowMultiColumnSorting="false"
				DefaultSortColumnName="" 
				DefaultSortDirection="Ascending"	
				ExcelExportFileName="Export_TrainMaster.xls"  		
			>
			<Columns>
				<asp:CommandField ShowSelectButton="True" ShowEditButton="True" />				
				<asp:BoundField DataField="TrainName" HeaderText="Train Name" SortExpression="[Train_Name]"  />
				<asp:BoundField DataField="StartStation" HeaderText="Start Station" SortExpression="[Start_Station]"  />
				<asp:BoundField DataField="DestinationStation" HeaderText="Destination Station" SortExpression="[Destination_Station]"  />
				<asp:BoundField DataField="ArrivalTime" HeaderText="Arrival Time" SortExpression="[Arrival_time]"  />
				<asp:BoundField DataField="DepartureTime" HeaderText="Departure Time" SortExpression="[Departure_time]"  />
			</Columns>
			<EmptyDataTemplate>
				<b>No TrainMaster Found!</b>
			</EmptyDataTemplate>
		</data:EntityGridView>
		<br />
		<asp:Button runat="server" ID="btnTrainMaster" OnClientClick="javascript:location.href='TrainMasterEdit.aspx'; return false;" Text="Add New"></asp:Button>
		<data:TrainMasterDataSource ID="TrainMasterDataSource" runat="server"
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
		</data:TrainMasterDataSource>
	    		
</asp:Content>



