<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ManegerialStatistics.aspx.cs" Inherits="Team_11.ManegerialStatistics" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-bottom:500px; margin-top:100px;">
        <div class="row">
            <div class="col" style="margin-top:10px; margin-bottom:10px;">
                <center>
                <asp:Button ID="Button1" runat="server" Text="Show Number Of Staff Members" class="btn btn-primary" style="height:auto; margin-right:15px;" OnClick="Button1_Click"/>
                    <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox>
                &nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" class="btn btn-primary" style="height:auto; margin-right:15px;" Text="Show Average Salary of Staff Members" OnClick="Button3_Click1" />
                    <asp:TextBox ID="TextBox3" runat="server" ReadOnly="True"></asp:TextBox>
                </center>
            </div>
        </div>
        <div class="row">
            <div class="col" style="margin-top:10px; margin-bottom:10px;">
                <center>
                <asp:Button ID="Button2" runat="server" Text="Show Number Of Administrators" class="btn btn-primary" style="height:auto; margin-right:15px;" OnClick="Button2_Click"/>
                    <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True"></asp:TextBox>
                &nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" class="btn btn-primary" style="height:auto; margin-right:15px;" Text="Show Average Salary of Admins" OnClick="Button4_Click1" />
                    <asp:TextBox ID="TextBox4" runat="server" ReadOnly="True"></asp:TextBox>
                </center>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <center>
                <asp:Button ID="Button5" runat="server" CssClass="btn btn-primary" style="margin-right:10px; height:auto;" Text="Number Of Complaints" OnClick="Button5_Click" />
                <asp:TextBox ID="TextBox5" runat="server" style="margin-right:10px;" ReadOnly="True"></asp:TextBox>
                <asp:Button ID="Button6" runat="server" CssClass="btn btn-primary" style="margin-right:10px; height:auto;" Text="Number Of Departments" OnClick="Button6_Click" />
                <asp:TextBox ID="TextBox6" runat="server" style="margin-right:10px;" ReadOnly="True"></asp:TextBox>
                </center>
            </div>
        </div>
    </div>
</asp:Content>
