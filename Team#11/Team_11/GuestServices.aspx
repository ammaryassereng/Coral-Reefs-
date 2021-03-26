<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="GuestServices.aspx.cs" Inherits="Team_11.GuestServices" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <script type="text/javascript">
        $(document).ready(function () {
            $('.table').prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable();
    });
        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section style="overflow:auto; margin-top:30px; margin-bottom:30px;height:700px;">
       <div class="container-fluid" style="margin-top:30px; margin-bottom:30px;">
           <div class="row">
                <div class="col" style="text-align: center; margin-top:20px; margin-bottom:20px;">
                    <h1>
                        <img src="imgs/Menu.png" width="200" height="200" />
                        Menu
                    </h1>
                </div>
            </div>
           <div class="row">
               <div class="col" style="margin-bottom:5px; margin-top:10px; overflow:auto;">
                   <center>
                   <asp:GridView ID="GridView1" runat="server"  OnSelectedIndexChanged="GridView1_SelectedIndexChanged"  AutoGenerateColumns="False" DataKeyNames="ServiceName" DataSourceID="SqlDataSource1" class=" table table-striped table-bordered col-md-10">
                       <Columns>
                           <asp:BoundField DataField="ServiceName" HeaderText="ServiceName" ReadOnly="True" SortExpression="ServiceName" />
                           <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                       </Columns>
                   </asp:GridView>
                   <br />
                       </center>

               </div>
           </div>
           <div class="row">
               <div class="col" style="margin-bottom:10px;">
                   <center>
                   <asp:Button ID="orderButton" runat="server"   Text="order"  OnClick="orderButton_Click"   class="btn btn-primary btn-lg col-md-6 " style="height:auto;" Font-Bold="True" Font-Size="Large" />
                       </center>
               </div>
           </div>
           <div class="row">
               <div class="col">

               </div>
           </div>
           <div class="row">
               <div class="col" style="margin-bottom:10px; margin-top:30px">
                   <center>
                   <img src="imgs/Clean.png" width="200" height="200" />
                   <asp:Label ID="Label2" runat="server" Text="To Request Room service For Cleaning Please Click Here" Font-Bold="True" Font-Size="Large" ForeColor="Black"></asp:Label>
                       </center>
               </div>
           </div>
           <div class="row">
               <div class="col">
                   <center>
                   <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Room Number"></asp:Label>

                   <asp:TextBox ID="cleaningRoom" runat="server" CssClass="auto-style2" TextMode="Number" min="1"></asp:TextBox>

               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:Button ID="ReqRoomSerCleaning" runat="server" OnClick="ReqRoomSerCleaning_Click" Text="Request Cleaning" class="btn btn-primary btn-lg col-md-4" style="height:auto;"  Font-Bold="True" />
</center>
               </div>
           </div>
           <div class="row">
               <div class="col">

                

               </div>
           </div>
           <div class="row">
               <div class="col">
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CoralReefsConnectionString %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT [ServiceName], [Price] FROM [Services]"></asp:SqlDataSource>
               </div>
           </div>
       </div>
    </section>
</asp:Content>
