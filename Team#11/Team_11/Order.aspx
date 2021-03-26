<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="Team_11.Order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section style="overflow:auto; margin-top:175px; margin-bottom:175px;height:600px;">
       <div class="container-fluid" style="margin-top:30px; margin-bottom:30px;">
           <div class="row">
                <div class="col" style="text-align: center; margin-bottom:10px; margin-top:20px;">
                    <h1>
                        <img src="imgs/Order.png" width="200" height="200" />
                        Order Service 
                    </h1>
                </div>
            </div>
           <div class="row">
 <div class="col" style="font-size: 120%; margin-left: 15px; margin-bottom: 10px; margin-top:10px;">
     <center>

               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="GuestIDOrd" ErrorMessage="Please enter your National ID" Font-Bold="True" Font-Italic="True" Font-Size="Medium" Font-Underline="True" ForeColor="Red"></asp:RequiredFieldValidator>

     </center>
     </div>
               </div>
            <div class="row">
 <div class="col" style="font-size: 150%; margin-left: 15px; margin-bottom: 10px; margin-top:10px;">
     <center>

                   <asp:Label ID="Label2" runat="server" Text="National ID" Font-Bold="True" ></asp:Label>
                   <asp:TextBox ID="GuestIDOrd" runat="server" style="margin-left: 27px" TextMode="Phone" Width="150px" OnTextChanged="GuestIDOrd_TextChanged"></asp:TextBox>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="GuestIDOrd" ErrorMessage="please enter numbers only" ValidationExpression="\d+" Font-Bold="True" Font-Italic="True" Font-Size="Medium" Font-Strikeout="False" Font-Underline="True" ForeColor="Red"></asp:RegularExpressionValidator>

     </center>
     </div>
               </div>
            <div class="row">
 <div class="col" style="font-size: 150%; margin-left: 15px; margin-bottom: 10px; margin-top:10px;">
     <center>

                   <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="False"  Text="Room Number"></asp:Label>
                   <asp:TextBox ID="RoomNoOrd" runat="server"  style="margin-left: 21px"  Width="150px" ReadOnly="True"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<%--                   <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="RoomNoOrd" ErrorMessage="Please choose Your Room Number" Font-Bold="True" Font-Italic="True" Font-Size="Medium" Font-Underline="True" ForeColor="Red"></asp:RequiredFieldValidator>--%>

                   <asp:Button ID="ViewRoomNumButton" runat="server" Text="View Room Number"  class="btn btn-primary btn-lg col-md-2" style="height:auto;" OnClick="ViewRoomNumButton_Click"/>

     </center>
     </div>
               </div>
           <div class="col" style="font-size: 150%; margin-left: 15px; margin-bottom: 10px; margin-top:10px;">
     <center>

                   
                   <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Order Name"></asp:Label>
                   <asp:DropDownList ID="OrderDDL" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" DataTextField="ServiceName" DataValueField="ServiceName" Width="150px" >
                   </asp:DropDownList>

                   
     </center>
     </div>
               </div>
        <div class="col" style="font-size: 150%; margin-left: 15px; margin-bottom: 10px; margin-top:10px;">
     <center>

                   
                   <asp:Button ID="OrderButt" runat="server" Font-Bold="True" Font-Size="Large"  OnClick="OrderButt_Click" Text="Order" class="btn btn-success btn-lg col-md-6" style="height:auto;" />

                   
     </center>
     </div>
               </div>
       
    </section>
</asp:Content>
