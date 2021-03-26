<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="IncomeOutcomeCapacityaspx.aspx.cs" Inherits="Team_11.IncomeOutcomeCapacityaspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section style="overflow: auto; height: 200px; margin-bottom: 10px; margin-top:10px;">
        <div class="container">
            <div class="row">
                <div class="col" style="text-align: center;">
                    <h1>
                        View the Income and the Outcome of the Hotel
                    </h1>
                </div>
            </div>
            <div class="row">
                
                <div class="col" style="margin-top: 10px; margin-bottom: 10px; font-size:120%; margin-left:15px;">
                    <center>
                    <asp:Button ID="IncomeandOutcomeButton" runat="server" Text="View Income and Outcome and Profit of the Hotel" OnClick="IncomeandOutcomeButton_Click" class="btn btn-info btn-lg col-md-6" style="height:auto;" />
                        </center>
                </div>
            </div>
            <div class="row">
                <div class="col" style="font-size: 120%; margin-left: 15px; margin-bottom: 10px;">
                    <center>
                        <asp:Label ID="Label31" runat="server" Text="Month"></asp:Label>
                        <asp:DropDownList ID="MonthDropDownList" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label22" runat="server" Text="Total Income"></asp:Label>
                    <asp:TextBox ID="TotalIncomeTextBox" runat="server"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label23" runat="server" Text="Total Outcome"></asp:Label>
                    <asp:TextBox ID="TotalOutcomeTextBox" runat="server"></asp:TextBox>
                    </center>
                </div>
            </div>
            <div class="row">
                
                <div class="col" style="margin-top: 10px; margin-bottom: 10px; font-size:120%; margin-left:15px;">
                   <center>
                       <asp:Label ID="Label32" runat="server" Text="Profit"></asp:Label>
                       <asp:TextBox ID="ProfitTextBox" runat="server"></asp:TextBox>
                       </center>
                    </div>
                </div>
        </div>
        
    </section>
<%-- ********************************************************************************************************** --%>


<%-- ********************************************************************************************************** --%>

     <section style="overflow: auto; height: 400px; margin-bottom: 150px; margin-top:10px;">
        <div class="container">
            <div class="row">
                <div class="col" style="text-align: center;">
                    <h1>
                        Update the State of the Current Guest
                    </h1>
                </div>
            </div>
            <div class="row">
               <div class="col" style="margin-top: 10px; margin-bottom: 10px; font-size:120%; margin-left:15px;">
                   <center>
                    <asp:Label ID="Label26" runat="server" Text="Current Guest National ID"></asp:Label>
                   <asp:DropDownList ID="CurrentGuestNationalIDDropDownList" runat="server" Width="150px">
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:Label ID="Label30" runat="server" Text="Current Guest State"></asp:Label>
                    <asp:TextBox ID="CurrentGuestStateTextBox" runat="server" Width="150px"></asp:TextBox>
                   </center>
               </div>
           </div>
            <div class="row">
                
                <div class="col" style="margin-top: 10px; margin-bottom: 10px; font-size:120%; margin-left:15px;">
                    <center>
                    <asp:Button ID="GetCurrentGuestStateButton" runat="server" Text="Get Current Guest State" OnClick="GetCurrentGuestStateButton_Click" class="btn btn-info btn-lg col-md-4" style="height:auto;" />
</center>
                    </div>
            </div>
            <div class="row">
               <div class="col" style="margin-top: 10px; margin-bottom: 10px; font-size:120%; margin-left:15px;">

                   <center>
                   <asp:Label ID="Label27" runat="server" Text="New State"></asp:Label>
                   <asp:DropDownList ID="NewStateDropDownList" runat="server" Width="180px">
                       <asp:ListItem>Half Board</asp:ListItem>
                       <asp:ListItem>Full Board</asp:ListItem>
                       <asp:ListItem>All Inclusive</asp:ListItem>
                   </asp:DropDownList>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:Button ID="UpdateCurrentGuestStateButton" runat="server" Text="Update Current Guest State" OnClick="UpdateCurrentGuestStateButton_Click" class="btn btn-warning btn-lg col-md-4" style="height:auto;"/>
               </center>
                       </div>
           </div>            
        </div>   
    </section>
<%-- ********************************************************************************************************** --%>
    
</asp:Content>
