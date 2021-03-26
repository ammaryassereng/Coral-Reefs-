<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="GuestViewOfOccasions.aspx.cs" Inherits="Team_11.GuestViewOfOccasions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <%--<style type="text/css">
        .auto-style1 {
            flex: 1 0 0%;
            height: 156px;
        }
        .auto-style2 {
            margin-left: 2px;
        }
        .auto-style3 {
            width: 100%;
            height: 450px;
            margin-left: 0px;
            margin-bottom: 21px;
        }
        .auto-style4 {
            height: 24px;
            width: 731px;
        }
        .auto-style5 {
            width: 731px;
        }
        .auto-style6 {
            height: 22px;
            width: 731px;
        }
        .auto-style10 {
            height: 24px;
            width: 702px;
        }
        .auto-style11 {
            width: 702px;
        }
        .auto-style12 {
            height: 22px;
            width: 702px;
        }
        .auto-style13 {
            height: 24px;
            width: 638px;
        }
        .auto-style14 {
            width: 638px;
        }
        .auto-style15 {
            height: 22px;
            width: 638px;
        }
    </style>--%>
    <script type="text/javascript">
        $(document).ready(function () {
            $('.table').prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    <section style="margin-top:30px; margin-bottom:30px;height:800px; overflow:auto;">
       <div class="container-fluid" style="margin-top:30px; margin-bottom:30px;">
            <div class="row">
            <div class="col" style="text-align: center; margin-bottom: 10px; margin-top: 20px;">
                <h1>
                                            <img src="imgs/Occasion.png" width="200" height="200" />

                    View All Occasions Names and Prices 
                </h1>
            </div>
        </div>
           <div class="row">
            <div class="col" style="margin-bottom: 10px; margin-top: 10px;">
                <center>
                    <asp:Button ID="ViewAllOccButton" runat="server" Text="View All Occasions" class="btn btn-info btn-lg col-md-6" style="height:auto;" OnClick="ViewAllOccButton_Click"  />
                </center>
            </div>
        </div>
           <div class="row">
               <div class="col" style=" overflow: auto;margin-top:20px; margin-bottom:20px;">
                 <%--  <section style="margin-top:30px; margin-bottom:30px;height:600px;">
                     <div class="container-fluid" style="margin-top:30px; margin-bottom:30px;">--%>
                   <!-- On rows -->
<%--<tr class="bg-primary">...</tr>
<tr class="bg-success">...</tr>
<tr class="bg-warning">...</tr>
<tr class="bg-danger">...</tr>
<tr class="bg-info">...</tr>

<!-- On cells (`td` or `th`) -->
<tr>
  <td class="bg-primary">...</td>
  <td class="bg-success">...</td>
  <td class="bg-warning">...</td>
  <td class="bg-danger">...</td>
  <td class="bg-info">...</td>
</tr>--%>
                   <%--<table class="table table-bordered table-striped"> 
  <thead>
    <tr class="bg-primary">
      <th scope="col">#</th>
      <th scope="col">OCCASION</th>
      <th scope="col">PRICE</th>
      <th scope="col">HALL MAX CAPACITY</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row" class="bg-primary">1</th>
      <td>Wedding</td>
      <td>40000</td>
      <td>150</td>
    </tr>
    <tr>
      <th scope="row" class="bg-success">2</th>
      <td>Graduation Ceremony</td>
      <td>15000</td>
      <td>100</td>
    </tr>
    <tr>
      <th scope="row" class="bg-danger">3</th>
      <td>Engagement</td>
      <td>15000</td>
        <td>100</td>
    </tr>
      <tr>
           <th scope="row" class="bg-info">4</th>
      <td>Birthday</td>
      <td>2000</td>
        <td>30</td>
      </tr>
  </tbody>
</table>--%>
                 <%--  <table style="margin-right: 0px;" class="auto-style3">
                       <tr>

                           <td class="auto-style13">OCCASION</td>
                           <td class="auto-style10">PRICE</td>
                           <td class="auto-style4">HALL MAX CAPACITY</td>
                       </tr>
                       <tr>
                           <td class="auto-style14">Wedding</td>
                           <td class="auto-style11">40000</td>
                           <td class="auto-style5">150</td>
                       </tr>
                       <tr>
                           <td class="auto-style15">Graduation Ceremony</td>
                           <td class="auto-style12">15000</td>
                           <td class="auto-style6">100</td>
                       </tr>
                       <tr>
                           <td class="auto-style14">Engagement</td>
                           <td class="auto-style11">15000</td>
                           <td class="auto-style5">100</td>
                       </tr>
                       <tr>
                           <td class="auto-style14">Birthday</td>
                           <td class="auto-style11">2000</td>
                           <td class="auto-style5">30</td>
                       </tr>
                   </table>--%>
                   <center>
                   <asp:GridView ID="OccasionsGridView" runat="server" class=" table table-striped table-bordered col-md-12">
                   </asp:GridView>
                       </center>
               </div>
           </div>
           <div class="row">
           </div>
           <div class="row">
               <div class="col">

               <div class="col">

               </div>

               </div>
           </div>
           <div class="row">
            <div class="col" style="text-align: center; margin-bottom: 10px; margin-top: 20px;">
                <h1>
                                            <img src="imgs/Reserve.png" width="200" height="200" />

                    Reserve Your Occasion
                </h1>
            </div>
        </div>
           <div class="row">
               <div class="col">
                   <center>
                   <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Reserve Your Occasion" class="btn btn-primary btn-lg col-md-6" style="height:auto;" />
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

       </div>
    </section>
</asp:Content>
