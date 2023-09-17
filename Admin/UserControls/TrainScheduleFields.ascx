<%@ Control Language="C#" ClassName="TrainScheduleFields" %>

<asp:FormView ID="FormView1" runat="server">
	<ItemTemplate>
		<table border="0" cellpadding="3" cellspacing="1">
			<tr>
        <td class="literal"><asp:Label ID="lbldataTrainId" runat="server" Text="Train Id:" AssociatedControlID="dataTrainId" /></td>
        <td>
					<data:EntityDropDownList runat="server" ID="dataTrainId" DataSourceID="TrainIdTrainMasterDataSource" DataTextField="TrainName" DataValueField="TrainId" SelectedValue='<%# Bind("TrainId") %>' AppendNullItem="true" Required="true" NullItemText="< Please Choose ...>" ErrorText="Required" />
					<data:TrainMasterDataSource ID="TrainIdTrainMasterDataSource" runat="server" SelectMethod="GetAll"  />
				</td>
			</tr>
			<tr>
        <td class="literal"><asp:Label ID="lbldataTrainName" runat="server" Text="Train Name:" AssociatedControlID="dataTrainName" /></td>
        <td>
					<asp:TextBox runat="server" ID="dataTrainName" Text='<%# Bind("TrainName") %>' MaxLength="50"></asp:TextBox><asp:RequiredFieldValidator ID="ReqVal_dataTrainName" runat="server" Display="Dynamic" ControlToValidate="dataTrainName" ErrorMessage="Required"></asp:RequiredFieldValidator>
				</td>
			</tr>
			<tr>
        <td class="literal"><asp:Label ID="lbldataStationName" runat="server" Text="Station Name:" AssociatedControlID="dataStationName" /></td>
        <td>
					<asp:TextBox runat="server" ID="dataStationName" Text='<%# Bind("StationName") %>' MaxLength="50"></asp:TextBox><asp:RequiredFieldValidator ID="ReqVal_dataStationName" runat="server" Display="Dynamic" ControlToValidate="dataStationName" ErrorMessage="Required"></asp:RequiredFieldValidator>
				</td>
			</tr>
			<tr>
        <td class="literal"><asp:Label ID="lbldataArrivalTime" runat="server" Text="Arrival Time:" AssociatedControlID="dataArrivalTime" /></td>
        <td>
					<asp:TextBox runat="server" ID="dataArrivalTime" Text='<%# Bind("ArrivalTime") %>' MaxLength="50"></asp:TextBox><asp:RequiredFieldValidator ID="ReqVal_dataArrivalTime" runat="server" Display="Dynamic" ControlToValidate="dataArrivalTime" ErrorMessage="Required"></asp:RequiredFieldValidator>
				</td>
			</tr>
			<tr>
        <td class="literal"><asp:Label ID="lbldataDepartureTime" runat="server" Text="Departure Time:" AssociatedControlID="dataDepartureTime" /></td>
        <td>
					<asp:TextBox runat="server" ID="dataDepartureTime" Text='<%# Bind("DepartureTime") %>' MaxLength="50"></asp:TextBox><asp:RequiredFieldValidator ID="ReqVal_dataDepartureTime" runat="server" Display="Dynamic" ControlToValidate="dataDepartureTime" ErrorMessage="Required"></asp:RequiredFieldValidator>
				</td>
			</tr>
			
		</table>

	</ItemTemplate>
</asp:FormView>


