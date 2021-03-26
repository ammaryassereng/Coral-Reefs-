<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ViewComplaints.aspx.cs" Inherits="Team_11.ViewComplaints1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $('.table').prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable();
    });
        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section style="overflow: auto; height: 650px; margin-bottom: 50px; margin-top:50px;">
        <div class="container" style="overflow:auto;">
            <div class="row">
                <div class="col" style="text-align: center; margin-bottom:10px; margin-top:20px;">
                    <h1>
                        <img src="imgs/ViewComplaints.png" width="200" height="200" />
                        View All Complaints 
                    </h1>
                </div>
            </div>
            <div class="row">
                <div class="col"  style="margin-bottom:10px; margin-top:10px;">
                    <center>
                     <asp:Button ID="ViewComplaintsButton" runat="server" Text="View All Complaints" class="btn btn-primary btn-lg col-md-6" OnClick="ViewComplaintsButton_Click" style="height:auto;"/>
                   </center>
                </div>
            </div>
            <div class="row">
                <div class="col" style="margin-bottom:20px; margin-top:10px; overflow:auto;">
                    <center>
                    <asp:GridView ID="ComplaintsGrid" runat="server" class=" table table-striped table-bordered col-md-10">
                    </asp:GridView>
                    </center>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
