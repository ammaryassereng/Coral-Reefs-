<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="RoomsChart.aspx.cs" Inherits="Team_11.RoomsChart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">  
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>  
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section style="overflow: auto; height: 500px; margin-bottom: 200px; margin-top:100px;">

     <div class="container py-4">  
            <div class="form-group">  
                <label>Select Chart:</label>  
                <asp:DropDownList ID="ddlChart" AutoPostBack="true" runat="server" CssClass="custom-select col-md-4" OnSelectedIndexChanged="ddlChart_SelectedIndexChanged"></asp:DropDownList>  
            </div>  
            <asp:Chart ID="Chart1" runat="server" Width="450" OnLoad="Chart1_Load">  
                <Titles>  
                    <asp:Title Text="Rooms Chart"></asp:Title>  
                </Titles>  
                <Series>  
                    <asp:Series Name="Series1" ChartArea="ChartArea1"></asp:Series>  
                </Series>  
                <ChartAreas>  
                    <asp:ChartArea Name="ChartArea1">  
                        <AxisX Title="RoomNumber"></AxisX>  
                        <AxisY Title="Number of Occurences"></AxisY>  
                    </asp:ChartArea>  
                </ChartAreas>  
            </asp:Chart>  
        </div>

            </section>
</asp:Content>
