<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="ViewFeedBack.aspx.cs" Inherits="Team_11.ViewFeedBack1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $('.table').prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable();
    });
        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section style="overflow: auto; height: 700px; margin-bottom: 50px; margin-top:50px;">
        <div class="container">
            <div class="row">
                <div class="col" style="text-align: center; margin-bottom:10px; margin-top:20px;">
                    <h1>
                        <img src="imgs/ViewFeedBack.png" width="200" height="200" />
                        View All Feedback 
                    </h1>
                </div>
            </div>
            <div class="row">
                <div class="col"  style="margin-bottom:10px; margin-top:10px;">
                    <center>
                    <asp:Button ID="ViewFeedBackButton" runat="server" Text="View FeedBack" class="btn btn-primary btn-lg col-md-6" OnClick="ViewFeedBackButton_Click"  style="height:auto;"/>                 
                </center>
                        </div>
            </div>
            <div class="row">
                <div class="col" style="margin-bottom:20px; margin-top:10px;">
                    <center>
                    <asp:GridView  ID="FeedBackGrid" runat="server" class=" table table-striped table-bordered col-md-10"></asp:GridView>
                    </center>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
