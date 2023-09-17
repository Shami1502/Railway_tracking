<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/admin.master" AutoEventWireup="true" CodeFile="Testing.aspx.cs" Inherits="Testing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table>
        <tr>
            <td>
                <asp:DropDownList ID="drpTesting" AppendDataBoundItems="true" runat="server" DataSourceID="SqlDataSource1" DataTextField="Train_Name" DataValueField="Train_ID">
                    <asp:ListItem Text="- - - Select Train - - -" Value="-1" Selected="True"></asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Railway_TrackingConnectionString %>" SelectCommand="SELECT [Train_ID], [Train_Name] FROM [Train_Master]"></asp:SqlDataSource>
            </td>
        </tr>

        <tr>
            <td>
                <asp:GridView ID="gvTrainDATA" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                    <Columns>
                        <asp:BoundField DataField="Train_Name" HeaderText="Train_Name" SortExpression="Train_Name" />
                        <asp:BoundField DataField="Start_Station" HeaderText="Start_Station" SortExpression="Start_Station" />
                        <asp:BoundField DataField="Destination_Station" HeaderText="Destination_Station" SortExpression="Destination_Station" />
                        <asp:BoundField DataField="Arrival_time" HeaderText="Arrival_time" SortExpression="Arrival_time" />
                        <asp:BoundField DataField="Departure_time" HeaderText="Departure_time" SortExpression="Departure_time" />
                    </Columns>
                    <FooterStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
                    <HeaderStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />

                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Railway_TrackingConnectionString %>" SelectCommand="SELECT [Train_Name], [Start_Station], [Destination_Station], [Arrival_time], [Departure_time] FROM [Train_Master]"></asp:SqlDataSource>
            </td>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server"></asp:SqlDataSource>
        </tr>
        <tr><td>
            <asp:Button ID="btnInsert" runat="server" Text="Insert" OnClick="btnInsert_Click" />
            </td></tr>
    </table>
</asp:Content>

