<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="Team_11.Complaints" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">  
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>  
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section style="margin-top:30px; margin-bottom:30px;height:800px; overflow:auto;">
       <div class="container-fluid" style="margin-top:30px; margin-bottom:30px;">
           <div class="row">
                <div class="col" style="text-align: center; margin-bottom:10px; margin-top:10px;">
                    <h1>
                        <img src="imgs/FeedBack.png" width="200" height="200" />
                        FeedBack For Older Guests
                    </h1>
                </div>
               </div>
           <div class="row">
                <div class="col" style="text-align: center; margin-bottom:10px; margin-top:10px;">
                    <h2>
                        Add FeedBack For The First Time
                    </h2>
                </div>
               </div>
           <div class="row">
               <div class="col" style="margin-left:15px; margin-top:20px; margin-bottom:20px; font-size:150%;">
                   <center>                   
                       <asp:Label ID="Label1" runat="server" Text="National ID"></asp:Label>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:TextBox ID="IDtxt" runat="server" Width="150px" TextMode="Number" min="0" MaxLength="14"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                       <asp:Label ID="Label4" runat="server" Text="FeedBack"></asp:Label>

                   <asp:DropDownList ID="FeedbackContent" runat="server" Width="150px">
                       <asp:ListItem>Excellent</asp:ListItem>
                       <asp:ListItem>Good</asp:ListItem>
                       <asp:ListItem>Acceptable</asp:ListItem>
                       <asp:ListItem>Bad</asp:ListItem>
                       <asp:ListItem>Terrible</asp:ListItem>
                   </asp:DropDownList>
</center>


               </div>
           </div>
           <div class="row">
               <div class="col" style="margin-left:15px; margin-top:10px; margin-bottom:10px; font-size:120%;">
                   <center>
                                      <asp:Button ID="Submit" runat="server"  OnClick="Button1_Click" Text="Submit" class ="btn btn-success btn-lg col-md-4" style="height:auto;" />
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
                <div class="col" style="text-align: center; margin-bottom:10px; margin-top:10px;">
                    <h2>
                        Edit Your FeedBack 
                    </h2>
                </div>
               </div>
           <div class="row">
               <div class="col">
                   <div class="col" style="margin-left:15px; margin-top:20px; margin-bottom:20px; font-size:150%;">
                   <center></center>
                                          <asp:Label ID="Label2" runat="server" Text="National ID"></asp:Label>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:TextBox ID="IDEditTxt" runat="server" Width="150px" TextMode="Number" min="0" MaxLength="14"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label5" runat="server" Text="New FeedBack"></asp:Label>
&nbsp;<asp:DropDownList ID="EditedFeedback" runat="server" Width="150px">
                           <asp:ListItem Value="Excellent"></asp:ListItem>
                           <asp:ListItem>Good</asp:ListItem>
                           <asp:ListItem>Acceptable</asp:ListItem>
                           <asp:ListItem>Bad</asp:ListItem>
                           <asp:ListItem>Terrible</asp:ListItem>
                       </asp:DropDownList>

                   </center>
               </div>
           </div>
                      <div class="row">
               <div class="col">
                                  <div class="col" style=" margin-top:10px; margin-bottom:10px; font-size:120%;">
                                      <asp:Button ID="EditFeedback" runat="server" Text="Submit" class ="btn btn-success btn-lg col-md-4" OnClick="EditFeedback_Click" style="height:auto;"/>
                   <center>
                                      
                       </center>
               </div>
           </div>
       </div>
    </section>
</asp:Content>
