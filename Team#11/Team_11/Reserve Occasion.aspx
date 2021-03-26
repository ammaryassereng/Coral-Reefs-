<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="Reserve Occasion.aspx.cs" Inherits="Team_11.Reserve_Occasion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <section style="margin-top:30px; margin-bottom:30px;height:900px; overflow:auto;">
       <div class="container-fluid" style="margin-top:30px; margin-bottom:30px;">
           <div class="row">
                <div class="col" style="text-align: center; margin-bottom:10px; margin-top:20px;">
                    <h1>
                        <img src="imgs/FillInfo.png" width="200" height="200" />
                   Please Fill In The Following Requirements
                    </h1>
                </div>
            </div>
           
           <div class="row">
               <div class="col" >

                   
                   <center>
                   &nbsp;&nbsp;&nbsp;
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="HostID" ErrorMessage="Please enter your National ID" Font-Bold="True" Font-Italic="True" Font-Size="Medium" Font-Underline="True" ForeColor="Red"></asp:RequiredFieldValidator>
           </center>
                       </div>
               </div>
             <div class="row">
               <div class="col" style="font-size:150%;">
                   <center>
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" Text="National ID" Font-Bold="True" ></asp:Label>
                    <asp:TextBox ID="HostID" runat="server" style="margin-left: 23px" OnTextChanged="HostID_TextChanged" TextMode="Phone"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="HostID" ErrorMessage="please enter numbers only" ValidationExpression="\d+" Font-Bold="True" Font-Italic="True" Font-Size="Medium" Font-Strikeout="False" Font-Underline="True" ForeColor="Red"></asp:RegularExpressionValidator>
                   </center>
                       </div>
                 </div>
                   <div class="row">
               <div class="col" style="font-size:150%;">
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="OccHostName" ErrorMessage="Please enter your First Name" Font-Bold="True" Font-Italic="True" Font-Size="Medium" Font-Underline="True" ForeColor="Red"></asp:RequiredFieldValidator>
                   </div>
                       </div>
                   <div class="row">
               <div class="col" style="font-size:150%; ">
                   <asp:Label ID="Label10" runat="server" Text="First Name" Font-Bold="True" ></asp:Label>
                   <asp:TextBox ID="OccHostName" runat="server" OnTextChanged="OccHostName_TextChanged" CssClass="auto-style2"></asp:TextBox>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="OccHostName" ErrorMessage="enter characters only" ValidationExpression="[a-zA-Z]+" Font-Bold="True" Font-Italic="True" Font-Size="Medium" Font-Underline="True" ForeColor="#FF3300"></asp:RegularExpressionValidator>
                   &nbsp;
                   </div>
                       </div>
           <div class="row">
               <div class="col" style="font-size:150%;">
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="OccHostMinit" ErrorMessage="Please enter your Minit Name" Font-Bold="True" Font-Italic="True" Font-Size="Medium" Font-Underline="True" ForeColor="Red"></asp:RequiredFieldValidator>
                   </div>
                       </div>
            <div class="row">
               <div class="col" style="font-size:150%; ">
                   
                    <asp:Label ID="Label7" runat="server" Font-Bold="True"  Text="Minit Name"></asp:Label>
                    <asp:TextBox ID="OccHostMinit" runat="server" style="margin-left: 18px" MaxLength="1"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="OccHostMinit" ErrorMessage="enter characters only" ValidationExpression="[a-zA-Z]+" Font-Bold="True" Font-Italic="True" Font-Size="Medium" Font-Underline="True" ForeColor="#FF3300"></asp:RegularExpressionValidator>
                   
                   </div>
                       </div>
           <div class="row">
               <div class="col" style="font-size:150%;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="OccHostLast" ErrorMessage="Please enter your Last Name" Font-Bold="True" Font-Italic="True" Font-Size="Medium" Font-Underline="True" ForeColor="Red"></asp:RequiredFieldValidator>
                   </div>
                       </div>
           <div class="row">
               <div class="col" style="font-size:150%; ">
                   
                    <asp:Label ID="Label8" runat="server" Font-Bold="True"  Text="Last Name"></asp:Label>
                    <asp:TextBox ID="OccHostLast" runat="server" ></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="OccHostLast" ErrorMessage="enter characters only" ValidationExpression="[a-zA-Z]+" Font-Bold="True" Font-Italic="True" Font-Size="Medium" Font-Underline="True" ForeColor="#FF3300"></asp:RegularExpressionValidator>
                    
                   </div>
                       </div>
           <div class="row">
               <div class="col" style="font-size:150%; margin-top:10px; ">
                   
                                        
                    <asp:Label ID="Label4" runat="server" Text="Occasion Type" Font-Bold="True"></asp:Label>
                    <asp:DropDownList ID="OccComb" runat="server" style="margin-left: 9px" Height="56px" Width="150px">
                    </asp:DropDownList>
                    <asp:Label ID="Label5" runat="server" Text="Occasion Date" Font-Bold="True" ></asp:Label>
                   <asp:TextBox ID="OccDate" runat="server" style="margin-left: 2px; margin-right: 10px; margin-top: 0; margin-bottom: 0" TextMode="Date" Width="150px"></asp:TextBox>
                    <asp:Label ID="Label6" runat="server" Text="Duration" Font-Bold="True" ></asp:Label>
                    <asp:TextBox ID="OccDur" runat="server" OnTextChanged="OccDur_TextChanged" style="margin-left: 15px" TextMode="Number" min="1"  max="9" MaxLength="1" Width="50px"></asp:TextBox>
                   
                   </div>
                       </div>
           <div class="row">
               <div class="col" style="font-size:150%;">
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="OccDate" ErrorMessage="Please choose Certain Date" Font-Bold="True" Font-Italic="True" Font-Size="Medium" Font-Underline="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="OccDur" ErrorMessage="min 1 and max 6 hours " Font-Bold="True" Font-Italic="True" Font-Size="Medium" Font-Underline="True" ForeColor="Red" MaximumValue="6" MinimumValue="1"></asp:RangeValidator>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="OccDur" ErrorMessage="Please choose Duration" Font-Bold="True" Font-Italic="True" Font-Size="Medium" Font-Underline="True" ForeColor="Red"></asp:RequiredFieldValidator>

                   </div>
                       </div>
                   <div class="row">
               <div class="col" style="font-size:150%;">

                   <asp:Label ID="Label9" runat="server" Font-Bold="True"  Text="Phone number"></asp:Label>
                    <asp:TextBox ID="PhoneNo" runat="server" style="margin-left: 23px" OnTextChanged="HostID_TextChanged" TextMode="Phone" MinLength="4" MaxLength="15"></asp:TextBox>

                   <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="PhoneNo" ErrorMessage="please enter numbers only" ValidationExpression="\d+" Font-Bold="True" Font-Italic="True" Font-Size="Medium" Font-Strikeout="False" Font-Underline="True" ForeColor="Red"></asp:RegularExpressionValidator>

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

                   &nbsp;&nbsp;&nbsp;
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="PhoneNo" ErrorMessage="Please enter your Phone number" Font-Bold="True" Font-Italic="True" Font-Size="Medium" Font-Underline="True" ForeColor="Red"></asp:RequiredFieldValidator>

               </div>
           </div>
           <div class="row">
               <div class="col" style="margin-bottom: 10px; margin-top: 10px;">
                   <center>
                   <asp:Button ID="OccReq" runat="server" OnClick="OccReq_Click" Text="Reserve Occasion" Font-Bold="True" Font-Italic="False" Font-Names="Times New Roman"  class="btn btn-primary btn-lg col-md-6"  style="height:auto;"  />
                       </center>
               </div>
           </div>
       </div>
    </section>
</asp:Content>
