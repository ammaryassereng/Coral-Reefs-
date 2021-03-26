<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="Team_11.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
        <div class="col-md-6 mx-auto">
        <div class="card">
        <div class="card-body">
        <div class ="row">
            <p></p>
            <p style="position:relative; top: -12px; left: 618px; width: 100px;">
                Admin Login
            </p>
        </div>
        <div class ="row">

            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Administrators</asp:ListItem>
                <asp:ListItem>Receptionist</asp:ListItem>
                <asp:ListItem>Chef</asp:ListItem>
                <asp:ListItem>Room Service</asp:ListItem>
            </asp:DropDownList>

            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" CssClass="form-control" placeholder="Email" Width="490px"></asp:TextBox>

        </div>
        <div class ="row">

        </div>
        <div class ="row">

            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" OnTextChanged="TextBox1_TextChanged" CssClass="form-control" placeholder="password" Width="490px"></asp:TextBox>

        </div>
        <div class ="row">

        </div>
        <div class ="row">

            <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" class="btn btn-primary"/>

        </div>
        </div>
        </div>
        </div>
        </div>
    </div>
</asp:Content>
