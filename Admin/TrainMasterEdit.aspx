<%@ Page Language="C#" Theme="Default" MasterPageFile="~/MasterPages/admin.master" AutoEventWireup="true"  CodeFile="TrainMasterEdit.aspx.cs" Inherits="TrainMasterEdit" Title="TrainMaster Edit" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">Train Master - Add/Edit</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
		<data:MultiFormView ID="FormView1" DataKeyNames="TrainId" runat="server" DataSourceID="TrainMasterDataSource">
		
			<EditItemTemplatePaths>
				<data:TemplatePath Path="~/Admin/UserControls/TrainMasterFields.ascx" />
			</EditItemTemplatePaths>
		
			<InsertItemTemplatePaths>
				<data:TemplatePath Path="~/Admin/UserControls/TrainMasterFields.ascx" />
			</InsertItemTemplatePaths>
		
			<EmptyDataTemplate>
				<b>TrainMaster not found!</b>
			</EmptyDataTemplate>
			
			<FooterTemplate>
				<asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
				<asp:Button ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
				<asp:Button ID="CancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
			</FooterTemplate>

		</data:MultiFormView>
		
		<data:TrainMasterDataSource ID="TrainMasterDataSource" runat="server"
			SelectMethod="GetByTrainId"
		>
			<Parameters>
				<asp:QueryStringParameter Name="TrainId" QueryStringField="TrainId" Type="String" />

			</Parameters>
		</data:TrainMasterDataSource>
		
		<br />

		<data:EntityGridView ID="GridViewTrainSchedule1" runat="server"
			AutoGenerateColumns="False"	
			OnSelectedIndexChanged="GridViewTrainSchedule1_SelectedIndexChanged"			 			 
			DataSourceID="TrainScheduleDataSource1"
			DataKeyNames="ScheduleId"
			AllowMultiColumnSorting="false"
			DefaultSortColumnName="" 
			DefaultSortDirection="Ascending"	
			ExcelExportFileName="Export_TrainSchedule.xls"  		
			Visible='<%# (FormView1.DefaultMode == FormViewMode.Insert) ? false : true %>'	
			>
			<Columns>
				<asp:CommandField ShowSelectButton="True" />
				<data:HyperLinkField HeaderText="Train Id" DataNavigateUrlFormatString="TrainMasterEdit.aspx?TrainId={0}" DataNavigateUrlFields="TrainId" DataContainer="TrainIdSource" DataTextField="TrainName" />
				<asp:BoundField DataField="TrainName" HeaderText="Train Name" SortExpression="[Train_Name]" />				
				<asp:BoundField DataField="StationName" HeaderText="Station Name" SortExpression="[Station_Name]" />				
				<asp:BoundField DataField="ArrivalTime" HeaderText="Arrival Time" SortExpression="[Arrival_Time]" />				
				<asp:BoundField DataField="DepartureTime" HeaderText="Departure Time" SortExpression="[Departure_Time]" />				
			</Columns>
			<EmptyDataTemplate>
				<b>No Train Schedule Found! </b>
				<asp:HyperLink runat="server" ID="hypTrainSchedule" NavigateUrl="~/admin/TrainScheduleEdit.aspx">Add New</asp:HyperLink>
			</EmptyDataTemplate>
		</data:EntityGridView>					
		
		<data:TrainScheduleDataSource ID="TrainScheduleDataSource1" runat="server" SelectMethod="Find"
			EnableDeepLoad="True"
			>
			<DeepLoadProperties Method="IncludeChildren" Recursive="False">
	            <Types>
					<data:TrainScheduleProperty Name="TrainMaster"/> 
				</Types>
			</DeepLoadProperties>
			
		    <Parameters>
				<data:SqlParameter Name="Parameters">
					<Filters>
						<data:TrainScheduleFilter  Column="TrainId" QueryStringField="TrainId" /> 
					</Filters>
				</data:SqlParameter>
				<data:CustomParameter Name="OrderByClause" Value="" ConvertEmptyStringToNull="false" /> 
		    </Parameters>
		</data:TrainScheduleDataSource>		
		
		<br />
		

</asp:Content>

