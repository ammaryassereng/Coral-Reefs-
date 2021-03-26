<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Detailed Statistics.aspx.cs" Inherits="Team_11.Detailed_Statistics" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script type="text/javascript">
        $(document).ready(function () {
            $('.table').prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable();
    });
        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <%-- ********************************************************************************************************** --%>
       
        <div class="container-fluid" style="overflow:auto; margin-bottom:100px;">
             <div class="row">
            <div class="col" style="text-align: center;">
                <h1>
                    View Number of Rooms 
                </h1>
            </div>
        </div>
            <div class="row">
                <div class="col" style="font-size: 150%; margin-left: 15px; margin-bottom: 20px;">
                    <center>
                        <asp:Label ID="Label45" runat="server" Text="Room View"></asp:Label>
                        <asp:DropDownList ID="RoomViewDropDownList" runat="server" Width="150px">
                        </asp:DropDownList>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label46" runat="server" Text="Number Of Rooms"></asp:Label>
                        <asp:TextBox ID="NumRoomsTextBox" runat="server" Width="150px" ReadOnly="True" ></asp:TextBox>
                        </center>
                </div>
            </div>
            <div class="row">
                <div class="col" style="font-size: 120%; margin-bottom: 10px; margin-top: 10px;">
                    <center>
                    <asp:Button ID="NumRoomsButton" runat="server" Text="View Numer Of Rooms" class="btn btn-info btn-lg col-md-2" style="height:auto;" OnClick="NumRoomsButton_Click" />
                        </center>
                </div>
            </div>
             <div class="row">
                
                <div class="col" style="margin-top: 10px; margin-bottom: 10px; font-size:150%; margin-left:15px;">
                   <center>
                    <asp:Label ID="Label24" runat="server" Text="Room State"></asp:Label>
                    <asp:DropDownList ID="RoomStateDropDownList" runat="server" Width="150px">
                        <asp:ListItem>Vacant</asp:ListItem>
                        <asp:ListItem Value="Occupied">Occupied</asp:ListItem>
                    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label25" runat="server" Text="Number of Rooms"></asp:Label>
&nbsp;<asp:TextBox ID="NumberofRoomsTextBox" runat="server" Width="150px"></asp:TextBox>
                    </center>
                </div>
            </div>
            <div class="row">
                <div class="col" style="font-size: 120%; margin-bottom: 10px;">
                    <center>
                    <asp:Button ID="NumberofRoomsButton" runat="server" OnClick="NumberofRoomsButton_Click" Text="View Number of Rooms" class="btn btn-info btn-lg col-md-2" style="height:auto;" />
                    </center>
                </div>
            </div>
            <div class="row">
                <div class="col" style="font-size: 120%; margin-left: 15px; margin-bottom: 20px; margin-top: 10px;">
                    <center>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </center>

                </div>
            </div>
            <div class="row">
            <div class="col" style="text-align: center;">
                <h1>
                    Statistical Information
                </h1>
            </div>
        </div>
            <div class="row">
                <div class="col" style="font-size: 120%; margin-left: 15px; margin-bottom: 20px; margin-top: 10px;">
                    <center>
                  
  
                        <asp:Button ID="OrderedServicedButton" runat="server" Text="View The Most Ordered Service" class="btn btn-info btn-lg col-md-2" style="height:auto;" OnClick="OrderedServicedButton_Click"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        <asp:Button ID="ReservedRoomsButton" runat="server" Text="View Most Reserved Rooms" class="btn btn-info btn-lg col-md-2" style="height:auto;" OnClick="ReservedRoomsButton_Click" />
                    
                    </center>
                </div>
            </div>
            <div class="row">
                <div class="col" style="font-size: 150%; margin-left: 15px; margin-bottom: 20px; margin-top: 10px;">
                    <center>
                        <asp:Button ID="ViewReviewsButton" runat="server" Text="View The Reviews" class="btn btn-info btn-lg col-md-2" style="height:auto;" OnClick="ViewReviewsButton_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="ReservedOccButton" runat="server" Text="View Most Reserved Occasion" class="btn btn-info btn-lg col-md-2" style="height:auto;" OnClick="ReservedOccButton_Click"/>
                    </center>
                </div>
            </div>
            
           
        </div>
    <div class="container" style="overflow:auto; margin-bottom:50px;">
            
                <div class="col" style="font-size: 120%;  margin-bottom: 10px; margin-top: 10px; overflow:auto;">
                    <center>
              
                 
                        <asp:GridView ID="GridView" runat="server" class=" table table-striped table-bordered col-md-10">
                        </asp:GridView>
                
                                      

                                        
                                      

                    </center>
                </div>
            </div>
                </div>
                 </div>
        </div>
      <%-- ********************************************************************************************************** --%><%--*******************************************************************************************************************--%><%-- ********************************************************************************************************** --%>
     
</asp:Content>
