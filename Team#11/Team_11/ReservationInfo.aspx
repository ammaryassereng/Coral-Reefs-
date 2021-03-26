<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="ReservationInfo.aspx.cs" Inherits="Team_11.ReservationInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section style="height:1000px; margin-top:20px; margin-bottom:20px; overflow:auto;">
        <div class="container-fluid">
            <div class="row">
                <div class="col" style="margin-top:10px; margin-bottom:10px;">
                    <center>
                        <h2>
                            View Reservation Request
                        </h2>
                    </center>
                </div>
            </div>
            <div class="row">
                <div class="col">

                    <asp:TextBox ID="TextBox6" placeholder="Fname" runat="server" style="margin-right:5px;"></asp:TextBox>
                    <asp:TextBox ID="TextBox7" placeholder="Minit" runat="server" style="margin-right:5px;"></asp:TextBox>
                    <asp:TextBox ID="TextBox8" placeholder="Lname" runat="server" style="margin-right:5px;"></asp:TextBox>
                    <asp:TextBox ID="TextBox9" placeholder="Email" runat="server" style="margin-right:5px;"></asp:TextBox>

                </div>
            </div>
            <div class="row">
                <div class="col" style="margin-top:10px; margin-bottom:10px;">
                    <center>


                        <asp:TextBox ID="TextBox1" placeholder="National ID" TextMode="Number" min="0" runat="server" ></asp:TextBox>


                        <asp:Button ID="Button1" runat="server" Text="View Reservation Request" class="btn btn-primary btn-lg" style="margin-right:5px; height:auto;" OnClick="Button1_Click" />

                    </center>
                </div>
            </div>
            <div class="row">
                <div class="col" style="margin-top:10px; margin-bottom:10px;">
                    <center>

                        <asp:GridView ID="GridView1" runat="server">
                        </asp:GridView>

                    </center>
                </div>
            </div>
            <div class="col" style="margin-top:10px; margin-bottom:10px;">
                    <center>
                        <h2>
                                                    <img src="imgs/Cancel.png" width="100" height="100" />

                            Cancelling Reservation
                        </h2>
                    </center>
                </div>
            </div>
            <div class="row">
                <div class="col" style="margin-top:10px; margin-bottom:10px;">
                    <center>

                        <asp:Button ID="Button2" runat="server" CssClass="btn btn-danger btn-lg" Text="Cancel Reservation" OnClick="Button2_Click"  style="height:auto;"/>

                    </center>
                </div>
            </div>
        <div class="row">
        <div class="col" style="margin-top:10px; margin-bottom:10px;">
                    <center>
                        <h2>
                                                    <img src="imgs/Update.png" width="100" height="100" />

                            Change Room
                        </h2>
                    </center>
                </div>
            </div>
            <div class="row">
                <div class="col" style="margin-top:10px; margin-bottom:10px;">
                    <center>

                        <asp:Label ID="Label1" runat="server" Text="Start Date"></asp:Label>

                        <asp:TextBox ID="TextBox2" placeholder="Start Date" TextMode="Date" runat="server" style="margin-right:5px;"></asp:TextBox>
                        <asp:Label ID="Label2" runat="server" Text="End Date"></asp:Label>
                        <asp:TextBox ID="TextBox3" placeholder="End Date" TextMode="Date" runat="server" style="margin-right:5px;"></asp:TextBox>
                        <asp:Label ID="Label3" runat="server" Text="View"></asp:Label>
                        <asp:DropDownList ID="DropDownList2" runat="server" style="margin-right:5px;">
                            <asp:ListItem>Pool</asp:ListItem>
                            <asp:ListItem>Garden</asp:ListItem>
                        </asp:DropDownList>
                        <asp:Label ID="Label4" runat="server" Text="Type"></asp:Label>
                        <asp:DropDownList ID="DropDownList3" runat="server" style="margin-right:5px;">
                            <asp:ListItem>Single</asp:ListItem>
                            <asp:ListItem>Double</asp:ListItem>
                            <asp:ListItem>Suite</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>

                    </center>
                </div>
            </div>
            <div class="row">
                <div class="col" style="margin-top:10px; margin-bottom:10px;">
                    <center>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                    <asp:Button ID="Button3" runat="server" class="btn btn-primary btn-lg" Text="View Available Rooms" style="margin-right:5px; height:auto;" OnClick="Button3_Click"/>
                    <asp:Button ID="Button4" runat="server" class="btn btn-primary btn-lg" Text="Update Room Reserved" style="margin-right:5px; height:auto;" OnClick="Button4_Click"/>
                    </center>
                </div>
            </div>
        <div class="row">
        <div class="col" style="margin-top:10px; margin-bottom:10px;">
                    <center>
                        <h2>
                                                                                <img src="imgs/ContactInfo.png" width="100" height="100" />

                            Update Contact Info.
                        </h2>
                    </center>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <center>
                    <asp:TextBox ID="TextBox10" placeholder="Email" style="margin-right:5px;" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TextBox11" placeholder="Pnone Number" style="margin-right:5px;" TextMode="Number" min="0" runat="server"></asp:TextBox>
                    <asp:Button ID="Button5" runat="server" CssClass="btn btn-primary btn-lg" Text="Update Contact Info" style="margin-right:5px; height:auto;" OnClick="Button5_Click"/>
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
            <div class="row">
                <div class="col">

                </div>
            </div>
            <div class="row">
                <div class="col">

                </div>
            </div>
        </div>
    </section>
</asp:Content>
