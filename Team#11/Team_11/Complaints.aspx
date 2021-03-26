<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="Complaints.aspx.cs" Inherits="Team_11.FeedBack" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section style="margin-top: 50px; margin-bottom: 50px; height: 700px; overflow:auto;">
        <div class="container-fluid" style="margin-top: 50px; margin-bottom: 50px;">
            <div class="row">
                <div class="col" style="text-align: center; margin-bottom:10px; margin-top:10px;">
                    <h1>
                        <img src="imgs/Complaints.png" width="200" height="200" />
                        Complaints For Current Guests
                    </h1>
                </div>
               </div>
            <div class="row">
                <div class="col" style="margin-left: 15px; margin-top: 20px; margin-bottom: 20px; font-size: 150%;">
                    <center>
                   <asp:Label ID="Label1" runat="server" Text="National ID"></asp:Label>

  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="IDtxt" runat="server" OnTextChanged="TextBox1_TextChanged1" TextMode="Number" min="0" MaxLength="14"></asp:TextBox>
                       </center>
                </div>
            </div>
            <div class="row">
                <div class="col">
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <center>
 <asp:TextBox ID="ComplaintText" runat="server" Height="150px" OnTextChanged="TextBox1_TextChanged" Width="563px" TextMode="MultiLine"></asp:TextBox>
                       </center>


                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;



                </div>
            </div>
             <div class="row">
                <div class="col" style=" margin-bottom: 20px; font-size: 150%;">
                    <asp:Label ID="Label2" runat="server" Text="Complaint Content"></asp:Label>
                    </div>
                 </div>
            <div class="row">
                <div class="col">
                    <center>

                                <asp:Button ID="Submit" runat="server"  OnClick="Button1_Click" Text="Submit" class ="btn btn-success btn-lg col-md-6" style="height:auto;" />
                       </center>

                </div>
            </div>
            <div class="row">
                <div class="col">
                </div>
            </div>













        </div>
    </section>


</asp:Content>
