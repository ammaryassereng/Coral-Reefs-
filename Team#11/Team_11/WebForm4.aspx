<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="Team_11.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section style="overflow:auto; height:200px; margin-bottom:10px;">
        <div class="container">
            <div class ="row">
                <div class="col" style="margin-left:5px; margin-top:5px;">
                    
                    <asp:TextBox ID="TextBox1" runat="server" class="margin-left" textmode="Date"></asp:TextBox>
                    
                    <asp:Label ID="Label1" runat="server" Text="Start Date"></asp:Label>
                    
                </div>
            </div>
            <div class ="row">
                <div class="col" style="margin-left:5px; margin-top:5px;">

                    <asp:TextBox ID="TextBox2" runat="server" class="margin-left" textmode="Date"></asp:TextBox>
                    <asp:Label ID="Label2" runat="server" Text="End Date"></asp:Label>

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Available Rooms"  CssClass="btn btn-primary" OnClick="Button1_Click2"/>

                </div>
            </div>
            <div class ="row">
                <div class="col" style="margin-top:5px;" >

                    <asp:GridView ID="GridView1" runat="server" Width="946px">
                    </asp:GridView>

                </div>

            </div>
        </div>
    </section>

    <section style="overflow:auto; height:600px;">
        <div class="container">
           <div class ="row">
                <div class ="col" style="margin-left:15px; margin-top:5px;">

                    <asp:Label ID="Label10" runat="server" Text="Personal Info"></asp:Label>

                </div>
            </div> 
            <div class="row">
                <div class="col" style="margin-left:15px; margin-top:5px;">

                    <asp:Label ID="Label3" runat="server" Text="National ID"></asp:Label>
&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Number" min="0"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                </div>
            </div>
            
            <div class="row">

                <div class="col" style="margin-left:15px; margin-top:5px;">

                <asp:Label ID="Label4" runat="server" Text="F.name"></asp:Label>
&nbsp;&nbsp;
                <asp:TextBox ID="TextBox4" runat="server" Width="143px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server" Text="Minit"></asp:Label>
&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox5" runat="server" Width="53px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label6" runat="server" Text="L.name"></asp:Label>
&nbsp;
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>

            </div>
            </div>
            <div class="row">
                <div class="col" style="margin-left:15px; margin-top:5px;">

                    <asp:Label ID="Label7" runat="server" Text="Nationality"></asp:Label>
&nbsp;
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label8" runat="server" Text="Age"></asp:Label>
&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox8" runat="server" TextMode="Number" min="0"></asp:TextBox>

                </div>
            </div>
            <div class="row">
                <div class="col" style="margin-left:15px; margin-top:5px;">

                    <asp:Label ID="Label11" runat="server" Text="Contact Info"></asp:Label>

                </div>
            </div>
            <div class="row">
                <div class="col" style="margin-left:15px; margin-top:5px;">

                    <asp:Label ID="Label9" runat="server" Text="Email"></asp:Label>
&nbsp;&nbsp;

                    <asp:TextBox ID="TextBox9" runat="server" Width="281px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label12" runat="server" Text="Phone number"></asp:Label>
&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox10" runat="server" Width="186px" TextMode="Number" min="0"></asp:TextBox>

                </div>
            </div>
            
            <div class="row">
                <div class="col" style="margin-left:15px; margin-top:5px;">

                    <asp:Label ID="Label13" runat="server" Text="Reservation Info"></asp:Label>

                </div>
            </div>
            <div class="row">
                <div class="col" style="margin-left:15px; margin-top:5px;">

                    <asp:Label ID="Label14" runat="server" Text="Arrival Date"></asp:Label>
                    <asp:TextBox ID="TextBox11" runat="server" Height="22px" OnTextChanged="TextBox11_TextChanged" textmode="Date"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label15" runat="server" Text="End Date"></asp:Label>
&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox12" runat="server" textmode="Date"></asp:TextBox>

                </div>
            </div>
            <div class="row">
                <div class="col" style="margin-left:15px; margin-top:5px;">

                    <asp:Label ID="Label16" runat="server" Text="View"></asp:Label>
&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="132px">
                        <asp:ListItem>Pool</asp:ListItem>
                        <asp:ListItem>Garden</asp:ListItem>
                    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label17" runat="server" Text="Type"></asp:Label>
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem>Single</asp:ListItem>
                        <asp:ListItem>Double</asp:ListItem>
                        <asp:ListItem>Suite</asp:ListItem>
                    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label18" runat="server" Text="Room_Number"></asp:Label>
&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList3" runat="server">
                    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Find Rooms" CssClass="btn btn-primary" OnClick="Button2_Click" />

                </div>
            </div>
            <div class="row">
                <div class="col" style="margin-left:15px; margin-top:5px;">

                    <asp:Label ID="Label19" runat="server" Text="Parent - Husband"></asp:Label>
&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>

                </div>
            </div>
            <div class="row">
                <div class="col" style="margin-left:15px; margin-top:5px;">

                    <asp:Button ID="Button3" runat="server" Text="Request Reservation" class="btn btn-warning" OnClick="Button3_Click"/>

                </div>
            </div>
        </div>
    </section>
</asp:Content>

