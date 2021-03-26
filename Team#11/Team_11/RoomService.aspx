<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="RoomService.aspx.cs" Inherits="Team_11.RoomService" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $('.table').prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable();
        });
    </script>
 
   <%-- <script type="text/javascript">
        $(document).ready(function () {
            $("#Requests").prepend($("<thead></thead>").append($("#Requests").find("tr:first"))).DataTable();
        });
    </script>--%>
    <%--<script type="text/javascript">
        $(document).ready(function () {
            $('.myTable').prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable();
        });
    </script>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--        <section style="height:1000px; margin-top:20px; margin-bottom:20px;">--%>
    <div class="container">
        <div class="row">
                <div class="col" style="text-align: center; margin-bottom:10px; margin-top:10px;">
                    <h1>
                        Rooms Info.
                    </h1>
                </div>
               </div>
        <div class="row">
            <div class="col" style="font-size: 120%; margin-top: 20px; margin-bottom: 20px;">
                <center>

                        <asp:Label ID="Label3" runat="server" Text="Number of Cleaning Request"></asp:Label>

                        <asp:TextBox ID="NumberCleaningTxt" runat="server" OnTextChanged="NumberCleaningTxt_TextChanged" ReadOnly="True"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="CleaningReq" runat="server" OnClick="CleaningReq_Click" Text="View Number of Cleaning Requests" class="btn btn-info btn-lg col-md-4" style="height:auto;"/>

                        </center>
            </div>
        </div>

        
        <div class="row">
            <div class="col" style="font-size: 120%; margin-top: 20px; margin-bottom: 20px; overflow: auto;">
                <center>
                       <asp:Button ID="ViewClReq" runat="server" Text="View Rooms that requested cleaning" OnClick="ViewClReq_Click" class="btn btn-info btn-lg col-md-4" style="height:auto;" />

                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                       <asp:Button ID="ViewRequests" runat="server" Text="View Room Service Requests" OnClick="ViewRequests_Click" class="btn btn-info btn-lg col-md-4" style="height:auto;" />
                    </center>
            </div>
        </div>
        
        <div class="row">
            <div class="col" style="font-size: 120%; margin-top: 20px; margin-bottom: 20px;">

                <center>


                    <asp:GridView ID="RequestsAndService" runat="server" CssClass=" table table-striped table-bordered col-md-4">
                    </asp:GridView>


&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   </center>
            </div>
        </div>
        
        <div class="row">
            <div class="col" style="font-size: 120%; margin-top: 20px; margin-bottom: 20px;">

                <center>
                                          <asp:Label ID="Label1" runat="server" Text="Request ID"></asp:Label>
                                      <asp:TextBox ID="RequestChefTxt" runat="server" TextMode="Number"></asp:TextBox>
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="DoneByChef" runat="server" Text="Pick Up Order From Chef" OnClick="DoneByChef_Click1" class="btn btn-warning btn-lg col-md-4" style="height:auto;"></asp:Button>
                                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                   </center>
            </div>
        </div>
        
        <div class="row">
            <div class="col" style="font-size: 120%; margin-top: 20px; margin-bottom: 20px; overflow: auto;">

                <center>

                                          <asp:Label ID="Label2" runat="server" Text="Request ID"></asp:Label>
<asp:TextBox ID="ReqTxt" runat="server" TextMode="Number"></asp:TextBox>

                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                       <asp:Button ID="Fulfill" runat="server" Text="Deliver Room Service Request" OnClick="Fulfill_Click1" class="btn btn-warning btn-lg col-md-4" style="height:auto;"></asp:Button>

                   </center>
            </div>
        </div>
        <div class="row">
            <div class="col" style="font-size: 120%; margin-top: 20px; margin-bottom: 235px; overflow: auto;">

            </div>
        </div>

        </div>
   <%-- <script type="text/javascript">        $(function () {            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable({                "paging": true,                "lengthChange": true,                "searching": true,                "ordering": true,                "info": true,                "autoWidth": true,                "responsive": true,            });        })    </script>--%>

        <%--            </section>--%>
</asp:Content>
