<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Receptionist.aspx.cs" Inherits="Team_11.Receptionist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $('.table').prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable();
    });
        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
                <div class="col" style="margin-top:5px; margin-left:30px;" >

                    <asp:Button ID="ViewRequestsButton" runat="server" OnClick="Button1_Click" Text="View Requests" class="btn btn-primary" style="height:auto;"/>

                </div>
            </div>
            <div class="row">
                <div class="col" style="margin-top:5px; margin-left:30px; overflow:auto;">

                    <asp:GridView ID="ShowRequestsGrid" runat="server" Width="1329px" class="table table-striped table-bordered col-md-10">
                    </asp:GridView>

                </div>
            </div>
    </div>

    <div class="container-fluid">
        <div class="row" >
            <div class="col" style="margin-top:5px; margin-left:30px">

            &nbsp;<asp:Label ID="Label1" runat="server" Text="Enter the national id of the guests"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="ParentNumber" runat="server" TextMode="Number"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="ApproveGuestButton" runat="server" Text="Approve Guest" class="btn btn-success" OnClick="ApproveGuestButton_Click" style="height:auto;"/>
                <asp:Button ID="Button6" runat="server" Text="Dissaprove request" style="margin-left:15px; height:auto;" CssClass="btn btn-danger" OnClick="Button6_Click"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            </div>
        </div>
        <div class="row" >
            <div class="col">

                &nbsp;</div>
        </div>
        <div class="row" >
            <div class="col" style="margin-top:20px">

                <asp:Button ID="UpdateDay" runat="server" Text="Update Day Date" CssClass="btn btn-primary btn-lg" OnClick="UpdateDay_Click" style="height:auto;" />
                <asp:Label ID="Warning" runat="server" Text="MUST PRESS ONCE A DAY"></asp:Label>

            </div>
        </div>
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="col">

                </div>
            </div>
            <div class="row">
                <div class="col">
                    <center>
                    <asp:Button ID="ViewAllCurrentGuests" runat="server" Text="View Current Guest" class="btn btn-primary btn-lg" OnClick="ViewAllCurrentGuests_Click" style="height:auto;"/>
                    </center>
                </div>
            </div>
            <div class="row">
                <div class="col" style="margin-top:15px; margin-bottom:15px; overflow:auto;">
                    <center>
                    <asp:GridView ID="ShowAllCurrGuests" runat="server" class="table table-striped table-bordered col-md-10" >
                    </asp:GridView>
                    </center>
                </div>
            </div>
            <div class="row">
                <div class="col" style="margin-top:15px; margin-bottom:15px">

                    <asp:Label ID="UpdateStateCurr" runat="server" Text="Update the Current Guest State" CssClass="col-3"></asp:Label>

                    <asp:TextBox ID="TextBox1" runat="server" CssClass="col-1" placeholder="National ID" TextMode="Number" min="0" style="margin-left:10px"></asp:TextBox>

                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="col-2" style="margin-left:15px">
                        <asp:ListItem>Half Board</asp:ListItem>
                        <asp:ListItem>Full Board</asp:ListItem>
                        <asp:ListItem>All Inclusive</asp:ListItem>
                    </asp:DropDownList>

                    <asp:Button ID="Button1" runat="server" Text="Update Guest" class="btn btn-warning col-5" style="margin-left:15px; height:auto;" OnClick="Button1_Click1" />

                </div>
            </div>
        </div>
        
    <div class="container-fluid">
        <div class="row">
            <div class="col" style="margin-top:15px; margin-bottom:10px">
                <center>
                <asp:Button ID="Button2" runat="server" Text="View All Pending Guest" class="btn btn-primary" OnClick="Button2_Click" style="height:auto;"/>
                </center>
            </div>
        </div>
        <div class="row">
            <div class="col" style="margin-top:15px; margin-bottom:10px; overflow:auto;">
                <center>
                <asp:GridView ID="GridView1" runat="server" class="table table-striped table-bordered col-md-10">
                </asp:GridView>
                </center>

            </div>
        </div>
        <div class="row">
            <div class="col" style="margin-top:15px; margin-bottom:10px">

            </div>
        </div>
        <div class="row">
            <div class="col">
                <asp:Label ID="Label2" runat="server" Text="Update the Pending Guest State" CssClass="col-3"></asp:Label>

                    <asp:TextBox ID="TextBox2" runat="server" CssClass="col-1" placeholder="National ID" TextMode="Number" min="0" style="margin-left:10px"></asp:TextBox>

                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="col-2" style="margin-left:15px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                        <asp:ListItem>Half Board</asp:ListItem>
                        <asp:ListItem>Full Board</asp:ListItem>
                        <asp:ListItem>All Inclusive</asp:ListItem>
                    </asp:DropDownList>

                    <asp:Button ID="Button3" runat="server" Text="Update Guest" class="btn btn-warning col-5" style="margin-left:15px; height:auto;" OnClick="Button3_Click1" />

            </div>
        </div>
    </div>

    <div class="container-fluid">
        <div class="row">
            <div class="col" style="margin-left:5px; margin-top:15px; margin-bottom:15px;">
                <center>
                    <asp:DropDownList ID="DropDownList4" runat="server">
                        <asp:ListItem>Cash</asp:ListItem>
                        <asp:ListItem>Credit-Card</asp:ListItem>
                    </asp:DropDownList>
                <asp:TextBox ID="TextBox4" runat="server" placeholder="Credit Card"></asp:TextBox>
                    <asp:DropDownList ID="DropDownList3" runat="server">
                        <asp:ListItem>Reservation</asp:ListItem>
                        <asp:ListItem>Breakfast</asp:ListItem>
                        <asp:ListItem>Coffee</asp:ListItem>
                        <asp:ListItem>Dinner</asp:ListItem>
                        <asp:ListItem>Juice</asp:ListItem>
                        <asp:ListItem>Lunch</asp:ListItem>
                        <asp:ListItem>Nescafe</asp:ListItem>
                        <asp:ListItem>Soft Drink</asp:ListItem>
                        <asp:ListItem>Tea</asp:ListItem>
                    </asp:DropDownList>
                <asp:TextBox ID="TextBox7" runat="server" placeholder="PaidBy"></asp:TextBox>
                </center>
            </div>
        </div>
        <div class="row">
            <div class="col" style="margin-left:5px; margin-top:15px; margin-bottom:15px;">
                <center>

                    <asp:Button ID="Button4" runat="server" Text="Add Payment " class="btn btn-danger col-md-8" OnClick="Button4_Click" style="height:auto;"/>

                </center>
            </div>
        </div>
        <div class="row">
            <div class="col" style="margin-left:5px; margin-top:15px; margin-bottom:15px;">
                <center>
                    <asp:Button ID="Button5" runat="server" Text="Show Services" class="btn btn-primary col-md-8" style="height:auto;" OnClick="Button5_Click"/>
                </center>
            </div>
        </div>
        <div class="row">
            <div class="col">

            </div>
        </div>
        <div class="row">
            <div class="col">

            </div>
        </div>
        <div class="row">
            <div class="col">

            </div>
        </div>
    </div>
</asp:Content>
