<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="EditAdministratorsInfo.aspx.cs" Inherits="Team_11.EditAdministratorsInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
          $(document).ready(function () {
              $('.table').prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable();
          });
        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <%-- ********************************************************************************************************** --%>
        <div class="row">
            <div class="col" style="text-align: center;">
                <h1>
                    Add New Administrator
                </h1>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="col" style="font-size: 150%; margin-left: 15px; margin-bottom: 20px;">
                    <center>
                    <asp:Label ID="Label3" runat="server" Text="Personal Info"></asp:Label>
                        </center>
              </div>
            </div>
            <div class="row">
                <div class="col" style="font-size: 120%; margin-left: 15px; margin-bottom: 10px; margin-top:10px;">
                    <center>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   &nbsp;<asp:Label ID="Label12" runat="server" Text="FName"></asp:Label>
                        <asp:TextBox ID="FNameTextBox" runat="server" Width="150px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label13" runat="server" Text="Minit"></asp:Label>
                        <asp:TextBox ID="MinitTextBox" runat="server" Width="150px" MaxLength="1"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label14" runat="server" Text="LName"></asp:Label>
                        <asp:TextBox ID="LNameTextBox" runat="server" Width="150px"></asp:TextBox>
                        </center>
                </div>
            </div>
            <div class="row">
                <div class="col" style="font-size: 120%; margin-left: 15px; margin-bottom: 20px; margin-top:10px;">
                    <center>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                        <asp:Label ID="Label15" runat="server" Text="Gender"></asp:Label>
                        <asp:DropDownList ID="GenderDropDownList" runat="server" Width="65px">
                            <asp:ListItem>M</asp:ListItem>
                        <asp:ListItem>F</asp:ListItem>
                        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label16" runat="server" Text="BDate"></asp:Label>
                        <asp:TextBox ID="BDateTextBox" runat="server" Width="150px" TextMode="Date"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label17" runat="server" Text="Nationality"></asp:Label>
                        <asp:TextBox ID="NationalityTextBox" runat="server" Width="150px"></asp:TextBox>
                        </center>

                </div>
            </div>
            <div class="row">
                <div class="col" style="font-size: 150%; margin-left: 15px; margin-bottom: 20px; margin-top:10px;">
                    <center>
                    <asp:Label ID="Label8" runat="server" Text="Contact Info"></asp:Label>
                    </center>
                </div>
            </div>
            <div class="row">
                <div class="col" style="font-size: 120%; margin-left: 15px; margin-bottom: 20px; margin-top:10px;">
                    <center>
                  
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                        <asp:Label ID="Label18" runat="server" Text="Email"></asp:Label>
                        <asp:TextBox ID="EmailTextBox" runat="server" Width="150px" TextMode="Email"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label19" runat="server" Text="Phone Number"></asp:Label>
                        <asp:TextBox ID="PhoneNumTextBox" runat="server" Width="150px" TextMode="Number" min="1"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label20" runat="server" Text="Address"></asp:Label>
                        <asp:TextBox ID="AddressTextBox" runat="server" Width="150px"></asp:TextBox>
                    
                    </center>
                </div>
            </div>
            <div class="row">
                <div class="col" style="font-size: 150%; margin-left: 15px; margin-bottom: 20px; margin-top:10px;">
                    <center>
                    <asp:Label ID="Label11" runat="server" Text="Work Info"></asp:Label>
                    </center>
                </div>
            </div>
            <div class="row">
                <div class="col" style="font-size: 120%; margin-left: 15px; margin-bottom: 10px; margin-top:10px;">
                    <center>
              
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
                                      

                        <asp:Label ID="Label21" runat="server" Text="SSN"></asp:Label>
                        <asp:TextBox ID="SSNTextBox" runat="server" Width="150px" TextMode="Number" min="1"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label30" runat="server" Text="Mgr_SSN"></asp:Label>
                        <asp:DropDownList ID="MgrSSNDropDownList" runat="server" Width="150px">
                        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        
                                      

                    </center>
                </div>
            </div>
            <div class="row">
                <div class="col" style="font-size: 120%; margin-left: 15px; margin-bottom: 20px; margin-top:10px;">
                    <center>
                
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label22" runat="server" Text="Salary"></asp:Label>
                        <asp:TextBox ID="SalaryTextBox" runat="server" Width="150px" TextMode="Number" min="1"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label23" runat="server" Text="Password"></asp:Label>
                        <asp:TextBox ID="PasswordTextbox" runat="server" Width="150px" TextMode="Password"></asp:TextBox>
                
                                      

                    </center>
                </div>
            </div>
            <div class="row">
                <div class="col " style="font-size: 120%; margin-left: 15px; margin-bottom: 20px; margin-top:10px;">
                    <center>

                   

                        <asp:Button ID="AddNewAdministratorButton" runat="server" Text="Add New Administrator" class="btn btn-success btn-lg col-md-6 " style="height:auto;" OnClick="AddNewAdministratorButton_Click" />

                   

</center>
                </div>
            </div>
        </div>
    <%--    <section style="overflow: auto; height: 200px; margin-bottom: 30px; margin-top:30px;">--%><%--    </section>--%><%-- ********************************************************************************************************** --%>
        <div class="container-fluid">
            <div class="row">
                <div class="col" style="text-align: center; margin-top:20px; margin-bottom:20px;">
                    <h1>
                        Change Administrator
                    </h1>
                </div>
            </div>
            <div class="row">
                <div class="col" style="font-size: 120%; margin-left: 15px; margin-bottom: 20px;">
                    <center>
                        <asp:Label ID="Label44" runat="server" Text="SSN"></asp:Label>
                        <asp:DropDownList ID="ChangeSSNDropDownList" runat="server" Width="150px">
                        </asp:DropDownList>
                        </center>
              </div>
            </div>
            <div class="row">
                <div class="col" style="font-size: 150%; margin-left: 15px; margin-bottom: 20px;">
                    <center>
                    <asp:Label ID="Label1" runat="server" Text="New Personal Info"></asp:Label>
                        </center>
              </div>
            </div>
            <div class="row">
                <div class="col" style="font-size: 120%; margin-left: 15px; margin-bottom: 10px; margin-top:10px;">
                    <center>
                        <asp:Label ID="Label34" runat="server" Text="Fname"></asp:Label>
                        <asp:TextBox ID="ChangeFnameTextBox" runat="server" Width="150px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label35" runat="server" Text="Minit"></asp:Label>
                        <asp:TextBox ID="ChangeMinitTextBox" runat="server" Width="65px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label36" runat="server" Text="LName"></asp:Label>
                        <asp:TextBox ID="ChangeLNameTextBox" runat="server" Width="150px"></asp:TextBox>
                        </center>
                </div>
            </div>
            <div class="row">
                <div class="col" style="font-size: 120%; margin-left: 15px; margin-bottom: 20px; margin-top:10px;">
                    <center>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label37" runat="server" Text="Gender"></asp:Label>
                        <asp:DropDownList ID="ChangeGenderDropDownList" runat="server" Width="65px">
                            <asp:ListItem>M</asp:ListItem>
                            <asp:ListItem>F</asp:ListItem>
                        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label38" runat="server" Text="BDate"></asp:Label>
                        <asp:TextBox ID="ChangeBdateTextBox" runat="server" Width="150px" TextMode="Date"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label39" runat="server" Text="Nationality"></asp:Label>
                        <asp:TextBox ID="ChangeNationalityTextBox" runat="server" Width="150px"></asp:TextBox>
                        </center>

                </div>
            </div>
            <div class="row">
                <div class="col" style="font-size: 150%; margin-left: 15px; margin-bottom: 20px; margin-top:10px;">
                    <center>
                    <asp:Label ID="Label10" runat="server" Text="New Contact Info"></asp:Label>
                    </center>
                </div>
            </div>
            <div class="row">
                <div class="col" style="font-size: 120%; margin-left: 15px; margin-bottom: 20px; margin-top:10px;">
                    <center>
                  
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label40" runat="server" Text="Email"></asp:Label>
                        <asp:TextBox ID="ChangeEmailTextBox" runat="server" Width="150px" TextMode="Email"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label41" runat="server" Text="Phone Num."></asp:Label>
                        <asp:TextBox ID="ChangePhoneTextBox" runat="server" Width="150px" TextMode="Number" min="1"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label42" runat="server" Text="Address"></asp:Label>
                        <asp:TextBox ID="ChangeAddressTextBox" runat="server" Width="150px" ></asp:TextBox>
                        &nbsp;&nbsp;
                  
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            
                    </center>
                </div>
            </div>
            <div class="row">
                <div class="col" style="font-size: 150%; margin-left: 15px; margin-bottom: 20px; margin-top:10px;">
                    <center>
                    <asp:Label ID="Label33" runat="server" Text="New Work Info"></asp:Label>
                    </center>
                </div>
            </div>
            <div class="row">
                <div class="col" style="font-size: 120%; margin-left: 15px; margin-bottom: 10px; margin-top:10px;">
                    <center>
              
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label43" runat="server" Text="Password"></asp:Label>
                        <asp:TextBox ID="ChangePassTextBox" runat="server" Width="150px" TextMode="Password"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;
                
                                      

                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        
                                      

                    </center>
                </div>
            </div>
            <div class="row">
                <div class="col" style="font-size: 120%; margin-left: 15px; margin-bottom: 20px; margin-top:10px;">
                    <center>
                
                        <asp:Button ID="ChangeAdministratorButton" runat="server" Text="Change Administrator" class="btn btn-danger btn-lg col-md-2" style="height:auto;" OnClick="ChangeAdministratorButton_Click" />
                
                   </center>
                </div>
            </div>
            
            <div class="row">
                <div class="col" style="font-size: 120%; margin-left: 15px; margin-bottom: 20px; margin-top:10px;">
                    <center>
                    </center>
                </div>
            </div>
        </div>
     <%--*******************************************************************************************************************--%>
<%-- ********************************************************************************************************** --%>

<%--    <section style="overflow: auto; height: 200px; margin-bottom: 30px; margin-top:30px;">--%>
        <div class="container-fluid">
            <div class="row">
                <div class="col" style="text-align: center; margin-bottom:20px; margin-top:20px;">
                    <h1>
                        View All Staff Members
                    </h1>
                </div>
            </div>
            <div class="row">
                <div class="col" style="margin-top: 10px; margin-bottom: 10px;">
                    <center>
                    <asp:Button ID="ViewAdmininstratorButton" runat="server" Text="View All Administrators"  class="btn btn-info btn-lg col-md-2" style="height:auto;" OnClick="ViewAdmininstratorButton_Click" />
                        </center>

                </div>
            </div>
            <div class="row">
                <div class="col" style="overflow:auto;">
                    <center>
                        <asp:GridView ID="AdministratorGrid" runat="server" class="table table-striped table-bordered col-md-12">
                        </asp:GridView>
                        </center>
                </div>
            </div>
        </div>
<%--    </section>--%>
<%-- ********************************************************************************************************** --%>



<%-- ********************************************************************************************************** --%>

     <div class="container-fluid">
            <div class="row">
                <div class="col" style="text-align: center;">
                    <h1>
                        Update Administrator Contact Info.
                    </h1>
                </div>
            </div>
            <div class="row">
                
                <div class="col" style="margin-top: 10px; margin-bottom: 10px; font-size:120%; margin-left:15px;">
                   <center>
                       <asp:Label ID="Label25" runat="server" Text="SSN"></asp:Label>
                       <asp:DropDownList ID="ContactSSNDropDownList" runat="server" Width="150px">
                       </asp:DropDownList>
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label26" runat="server" Text="Phone Num."></asp:Label>
                       <asp:TextBox ID="ContactPhoneNumTextBox" runat="server" Width="150px" TextMode="Number" min="1"></asp:TextBox>
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label27" runat="server" Text="Address"></asp:Label>
                       <asp:TextBox ID="ContactAddressTextBox" runat="server" Width="150px"></asp:TextBox>
                       </center>


                </div>
            </div>
            <div class="row">
                <div class="col" style="font-size: 120%; margin-left: 15px; margin-bottom: 30px;">
                    <center>
                        <asp:Button ID="UpdateContactInfoButton" runat="server" Text="Update Contact Info." class="btn btn-warning btn-lg col-md-2" style="height:auto;" OnClick="UpdateContactInfoButton_Click" />
                        </center>
                </div>
            </div>
        </div>
    <%--*******************************************************************************************************************--%>
    <div class="container-fluid">
            <div class="row">
                <div class="col" style="text-align: center;">
                    <h1>
                        Update Administrator Info.
                    </h1>
                </div>
            </div>
            <div class="row">
                
                <div class="col" style="margin-top: 10px; margin-bottom: 10px; font-size:120%; margin-left:15px;">
                   <center>
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label29" runat="server" Text="SSN"></asp:Label>
                       <asp:DropDownList ID="WorkSSNDropDownList" runat="server" Width="150px">
                       </asp:DropDownList>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label28" runat="server" Text="New Salary"></asp:Label>
                       <asp:TextBox ID="NewSalaryTextBox" runat="server" Width="150px" TextMode="Number" min="1"></asp:TextBox>
                        </center>


                </div>
            </div>
            <div class="row">
                <div class="col" style="font-size: 120%; margin-left: 15px; margin-bottom: 30px;">
                    <center>
                        <asp:Button ID="UpdateSalaryButton" runat="server" Text="Update Salary" class="btn btn-warning btn-lg col-md-2" style="height:auto;" OnClick="UpdateSalaryButton_Click" />
                        </center>
                </div>
            </div>
         <div class="row">
                <div class="col" style="font-size: 120%; margin-left: 15px; margin-bottom: 30px;">
                    <center>
                       
                        </center>
                </div>
            </div>
        </div>
</asp:Content>
