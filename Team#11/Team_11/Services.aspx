<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="Team_11.Services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $('.table').prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--    <section style="overflow: auto; height: 200px; margin-bottom: 50px; margin-top: 50px;">--%>
    <div class="container">
        <div class="row">
            <div class="col" style="text-align: center; margin-bottom: 10px; margin-top: 20px;">
                <h1>View All Services 
                </h1>
            </div>
        </div>
        <div class="row">
            <div class="col" style="margin-bottom: 10px; margin-top: 10px;">
                <center>
                        <asp:Button ID="ViewAllServicesButton" runat="server" OnClick="ViewAllServicesButton_Click1" Text="View All Services" class="btn btn-info btn-lg col-md-6" style="height:auto;" />
                </center>
            </div>
        </div>
        <div class="row">
            <div class="col" style="overflow: auto; margin-bottom: 20px; margin-top: 10px;">
                <center>
                    <asp:GridView ID="ServicesGrid" runat="server" class=" table table-striped table-bordered col-md-12">
                    </asp:GridView>
                </center>
            </div>
        </div>
    </div>
    <%--    </section>--%>
    <%--**************************************************************************************************--%>
    <%--<section style="overflow: auto; height: 400px; margin-bottom: 10px; margin-top:10px;">--%>
    <div class="container">
        <div class="row">
            <div class="col" style="text-align: center;">
                <h1>Add New Service
                </h1>
            </div>
        </div>
        <div class="row">
            <div class="col" style="margin-top: 10px; margin-bottom: 10px; font-size: 120%; margin-left: 15px;">
                <center>

                       <asp:Label ID="ServiceNameLabel" runat="server" Text="Service Name"></asp:Label>
                       <asp:TextBox ID="ServiceNameTextBox" runat="server" Width="150px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="ServicePriceLabel" runat="server" Text="Service Price"></asp:Label>
                       <asp:TextBox ID="ServicePriceTextBox" runat="server" Width="150px" TextMode="Number" min="1"></asp:TextBox>

                    </center>
            </div>
        </div>
        <div class="row">

            <div class="col" style="margin-top: 10px; margin-bottom: 10px; font-size: 120%; margin-left: 15px;">
                <center>
                        <asp:Button ID="AddNewServiceButton" runat="server" Text="Add New Service" class="btn btn-success btn-lg col-md-4" style="height:auto;" OnClick="AddNewServiceButton_Click" />
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
                <h1>Remove Service
                </h1>
            </div>
        </div>
        <div class="row">
            <div class="col" style="margin-top: 10px; margin-bottom: 10px; font-size: 120%; margin-left: 15px;">
                <center>

                       
                       <asp:Label ID="Label1" runat="server" Text="Service Name"></asp:Label>
                       <asp:DropDownList ID="ServicesNamesDropDownList" runat="server" Width="150px">
                       </asp:DropDownList>

                       
                    </center>
            </div>
        </div>
        <div class="row">

            <div class="col" style="margin-top: 10px; margin-bottom: 10px; font-size: 120%; margin-left: 15px;">
                <center>
                        <asp:Button ID="RemoveServiceButton" runat="server" Text="Remove Service" class="btn btn-danger btn-lg col-md-4" style="height:auto;" OnClick="RemoveServiceButton_Click" />
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
    <section style="overflow: auto; height: 400px; margin-bottom: 10px; margin-top: 10px;">
        <div class="container">
            <div class="row">
                <div class="col" style="text-align: center;">
                    <h1>Updating Service Price
                    </h1>
                </div>
            </div>
            <div class="row">
                <div class="col" style="margin-top: 10px; margin-bottom: 10px; font-size: 120%; margin-left: 15px;">
                    <center>

                       
                       <asp:Label ID="Label2" runat="server" Text="Service Name"></asp:Label>
                       <asp:DropDownList ID="UpdateServiceNameDropDownList" runat="server" Width="150px">
                       </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label3" runat="server" Text="New Price"></asp:Label>
                       <asp:TextBox ID="NewPriceTextBox" runat="server" Width="150px" TextMode="Number" min="1"></asp:TextBox>

                       
                    </center>
                </div>
            </div>
            <div class="row">

                <div class="col" style="margin-top: 10px; margin-bottom: 10px; font-size: 120%; margin-left: 15px;">
                    <center>
                        <asp:Button ID="UpdateServicePriceButton" runat="server" OnClick="UpdateServicePriceButton_Click" Text="Update Service Price" class="btn btn-warning btn-lg col-md-4" style="height:auto;" />
</center>
                </div>
            </div>
            <div class="row">
                <div class="col" style="margin-top: 10px; margin-bottom: 10px; font-size: 120%; margin-left: 15px;">
                </div>
            </div>
        </div>
    </section>
</asp:Content>
