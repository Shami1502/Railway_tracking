<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="view.aspx.cs" Inherits="view" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Train_ID" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="Train_ID" HeaderText="Train_ID" InsertVisible="False" ReadOnly="True" SortExpression="Train_ID" />
            <asp:BoundField DataField="Train_Name" HeaderText="Train_Name" SortExpression="Train_Name" />
            <asp:BoundField DataField="Start_Station" HeaderText="Start_Station" SortExpression="Start_Station" />
            <asp:BoundField DataField="Destination_Station" HeaderText="Destination_Station" SortExpression="Destination_Station" />
            <asp:BoundField DataField="Arrival_time" HeaderText="Arrival_time" SortExpression="Arrival_time" />
            <asp:BoundField DataField="Departure_time" HeaderText="Departure_time" SortExpression="Departure_time" />
        </Columns>

    </asp:GridView>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Railway_TrackingConnectionString4 %>" SelectCommand="SELECT * FROM [Train_Master]"></asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
</asp:Content>

