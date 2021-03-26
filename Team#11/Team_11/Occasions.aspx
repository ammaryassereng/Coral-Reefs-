<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Occasions.aspx.cs" Inherits="Team_11.Occasions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $('.table').prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <%--*****************************************************************************************--%>
    <div class="container">
        <div class="row">
            <div class="col" style="text-align: center; margin-bottom: 10px; margin-top: 20px;">
                <h1>
                    View All Occasions Names and Prices 
                </h1>
            </div>
        </div>
        <div class="row">
            <div class="col" style="margin-bottom: 10px; margin-top: 10px;">
                <center>
                    <asp:Button ID="ViewAllOccasionsButton" runat="server" Text="View All Occasions" class="btn btn-info btn-lg col-md-6" style="height:auto;" OnClick="ViewAllOccasionsButton_Click" />
                </center>
            </div>
        </div>
        <div class="row">
            <div class="col" style="overflow: auto; margin-bottom: 20px; margin-top: 10px;">
                <center>
                <asp:GridView ID="OccasionsGrid" runat="server" class=" table table-striped table-bordered col-md-12">
                </asp:GridView>
                    </center>
            </div>
        </div>
    </div>
        <%--    <section style="overflow: auto; height: 400px; margin-bottom: 10px; margin-top: 10px;">--%><%--    </section>--%>
    <%--<section style="overflow: auto; height: 400px; margin-bottom: 10px; margin-top:10px;">--%>
    <div class="container">
        <div class="row">
            <div class="col" style="text-align: center;">
                <h1>
                    Add New Occasion
                </h1>
            </div>
        </div>
        <div class="row">
            <div class="col" style="margin-top: 10px; margin-bottom: 10px; font-size: 120%; margin-left: 15px;">
                <center>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       
                    <asp:Label ID="Label1" runat="server" Text="Occasion Name"></asp:Label>
                    <asp:TextBox ID="OccasionNameTextBox" runat="server" Width="150px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" Text="Price"></asp:Label>
                    <asp:TextBox ID="PriceTextBox" runat="server" Width="150px" TextMode="Number" min="1"></asp:TextBox>
                       
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label6" runat="server" Text="Max. Hall Capacity"></asp:Label>
                    <asp:TextBox ID="MaxHallCapacityTextBox" runat="server" Width="150px" TextMode="Number" min="1"></asp:TextBox>
                       
                    </center>
            </div>
        </div>
        <div class="row">

            <div class="col" style="margin-top: 10px; margin-bottom: 10px; font-size: 120%; margin-left: 15px;">
                <center>
                    <asp:Button ID="AddOccasionButton" runat="server" Text="Add New Occasion" class="btn btn-success btn-lg col-md-4" style="height:auto;" OnClick="AddOccasionButton_Click" />
</center>
            </div>
        </div>
        <div class="row">
            <div class="col" style="margin-top: 10px; margin-bottom: 10px; font-size: 120%; margin-left: 15px;">
            </div>
        </div>
    </div>
    <%--    </section>--%>
    <%--******************************************************************************************--%>
    <%--    <section style="overflow: auto; height: 400px; margin-bottom: 10px; margin-top: 10px;">--%>
    <div class="container">
        <div class="row">
            <div class="col" style="text-align: center;">
                <h1>
                    Remove Occasion
                </h1>
            </div>
        </div>
        <div class="row">
            <div class="col" style="margin-top: 10px; margin-bottom: 10px; font-size: 120%; margin-left: 15px;">
                <center>

                       
                    <asp:Label ID="Label3" runat="server" Text="Occasion Name"></asp:Label>
                    <asp:DropDownList ID="OccasionDropDownList" runat="server" Width="150px">
                    </asp:DropDownList>

                       
                    </center>
            </div>
        </div>
        <div class="row">

            <div class="col" style="margin-top: 10px; margin-bottom: 10px; font-size: 120%; margin-left: 15px;">
                <center>
                    <asp:Button ID="RemoveOccasionButton" runat="server" Text="Remove Occasion" class="btn btn-danger btn-lg col-md-4" style="height:auto;" OnClick="RemoveOccasionButton_Click" />
</center>
            </div>
        </div>
        <div class="row">
            <div class="col" style="margin-top: 10px; margin-bottom: 10px; font-size: 120%; margin-left: 15px;">
            </div>
        </div>
    </div>
    <%--    </section>--%>
    <%--*****************************************************************************************--%>
<%--    <section style="overflow: auto; height: 400px; margin-bottom: 10px; margin-top: 10px;">--%>
        <div class="container">
            <div class="row">
                <div class="col" style="text-align: center;">
                    <h1>
                        Updating Occasion Price and Max. Capacity
                    </h1>
                </div>
            </div>
            <div class="row">
                <div class="col" style="margin-top: 10px; margin-bottom: 10px; font-size: 120%; margin-left: 15px;">
                    <center>

                       
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       
                       
                        <asp:Label ID="Label4" runat="server" Text="Occasion Name"></asp:Label>
                        <asp:DropDownList ID="UpdateOccasionNameDropDownList" runat="server" Width="150px">
                        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label5" runat="server" Text="New Price"></asp:Label>
                        <asp:TextBox ID="NewPriceTextBox" runat="server" Width="150px" TextMode="Number" min="1"></asp:TextBox>
                       
                       
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:Label ID="Label7" runat="server" Text="New Max. Cap."></asp:Label>
                        <asp:TextBox ID="NewMaxCapTextBox" runat="server" Width="150px" TextMode="Number" min="1"></asp:TextBox>
                       
                       
                    </center>
                </div>
            </div>
            <div class="row">

                <div class="col" style="margin-top: 10px; margin-bottom: 10px; font-size: 120%; margin-left: 15px;">
                    <center>
                        <asp:Button ID="UpdateOccasionPriceButton" runat="server" Text="Update Occasion Price" class="btn btn-warning btn-lg col-md-4" style="height:auto;" OnClick="UpdateOccasionPriceButton_Click"/>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="UpdateOccMaxCapButton" runat="server" Text="Update Occasion Max. Cap."  class="btn btn-warning btn-lg col-md-4" style="height:auto;" OnClick="UpdateOccMaxCapButton_Click"/>
</center>
                </div>
            </div>
            <div class="row">
                <div class="col" style="margin-top: 10px; margin-bottom: 10px; font-size: 120%; margin-left: 15px;">
                </div>
            </div>
        </div>
<%--    </section>--%>
</asp:Content>
