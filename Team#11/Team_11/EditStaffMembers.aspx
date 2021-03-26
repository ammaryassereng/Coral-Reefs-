<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="EditStaffMembers.aspx.cs" Inherits="Team_11.EditStaffMembers" %>
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
                    Add New Staff Member
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
                    <asp:Label ID="Label2" runat="server" Text="FName"></asp:Label>
                    <asp:TextBox ID="FNameTextBox" runat="server" Width="150px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label4" runat="server" Text="Minit"></asp:Label>
                    <asp:TextBox ID="MinitTextBox" runat="server" MaxLength="1" Width="65px" OnTextChanged="MinitTextBox_TextChanged"></asp:TextBox>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:Label ID="Label5" runat="server" Text="LName"></asp:Label>
                   &nbsp;<asp:TextBox ID="LNameTextBox" runat="server" Width="150px"></asp:TextBox>
                        </center>
                </div>
            </div>
            <div class="row">
                <div class="col" style="font-size: 120%; margin-left: 15px; margin-bottom: 20px; margin-top:10px;">
                    <center>
                    <asp:Label ID="Label6" runat="server" Text="Gender"></asp:Label>

                    <asp:DropDownList ID="GenderDropDownList1" runat="server" Width="65px">
                        <asp:ListItem>M</asp:ListItem>
                        <asp:ListItem>F</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label7" runat="server" Text="BDate"></asp:Label>
                    <asp:TextBox ID="BDateTextBox" runat="server" TextMode="Date" Width="150px"></asp:TextBox>

                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                   <asp:Label ID="Label18" runat="server" Text="Nationality"></asp:Label>
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
                    <asp:Label ID="Label9" runat="server" Text="Email"></asp:Label>

                    <asp:TextBox ID="EmailTextBox" runat="server" Width="150px" TextMode="Email"></asp:TextBox>
                  
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  
                   <asp:Label ID="Label10" runat="server" Text="Phone Num."></asp:Label>
                  
                   <asp:TextBox ID="PhoneNumTextBox" runat="server" Width="150px" TextMode="Number" min="1"></asp:TextBox>
                    
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                   <asp:Label ID="Address" runat="server" Text="Address"></asp:Label>
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
                    <asp:Label ID="Label12" runat="server" Text="SSN"></asp:Label>
          
                    <asp:TextBox ID="SSNTextBox" runat="server" Width="150px" TextMode="Number" min="1"></asp:TextBox>
              
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 
                   <asp:Label ID="Label14" runat="server" Text="Department Num."></asp:Label>
                        <asp:DropDownList ID="DepDropDownList" runat="server" Width="150px">
                        </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
                   <asp:Label ID="Label16" runat="server" Text="Work_Hrs"></asp:Label>
                <asp:TextBox ID="WorkHrsTextBox" runat="server" Width="150px" TextMode="Number" min="1"></asp:TextBox>

                   

                    </center>
                </div>
            </div>
            <div class="row">
                <div class="col" style="font-size: 120%; margin-left: 15px; margin-bottom: 20px; margin-top:10px;">
                    <center>
                    <asp:Label ID="Label15" runat="server" Text="Salary"></asp:Label>
                    <asp:TextBox ID="SalaryTextBox" runat="server" Width="150px" TextMode="Number" min="1"></asp:TextBox>
                
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
                                      

               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                   

               <asp:Label ID="Label17" runat="server" Text="Password"></asp:Label>
                  
                    <asp:TextBox ID="PasswordTextBox" runat="server" Width="150px" TextMode="Password" ></asp:TextBox>
                    </center>
                </div>
            </div>
            <div class="row">
                <div class="col " style="font-size: 120%; margin-left: 15px; margin-bottom: 20px; margin-top:10px;">
                    <center>
                   <asp:Button ID="AddStaffMemberButton" runat="server" OnClick="AddStaffMemberButton_Click" Text="Add New Staff Member" class="btn btn-success btn-lg col-md-6 " style="height:auto;" />
</center>
                </div>
            </div>
        </div>
    <%--    <section style="overflow: auto; height: 200px; margin-bottom: 30px; margin-top:30px;">--%><%--    </section>--%><%-- ********************************************************************************************************** --%>
        <div class="container-fluid">
            <div class="row">
                <div class="col" style="text-align: center; margin-top:20px; margin-bottom:20px;">
                    <h1>
                        Remove Staff Member
                    </h1>
                </div>
            </div>
            <div class="row">
                <div class="col" style="font-size: 120%; margin-left: 15px; margin-bottom: 20px; margin-top:10px;">
                    <center>
                    <asp:Label ID="Label19" runat="server" Text="SSN"></asp:Label>
                   <asp:DropDownList ID="SSNDropDownList" runat="server" Width="160px">
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="RemoveStaffMemberButton" runat="server" Text="Remove Staff Member" OnClick="RemoveStaffMemberButton_Click" class="btn btn-danger btn-lg col-md-2" style="height:auto;" />
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
                    <asp:Button ID="ViewStaffMemberButton" runat="server" OnClick="ViewStaffMemberButton_Click" Text="View Staff Members" class="btn btn-info btn-lg col-md-2" style="height:auto;" />
                    </center>


                </div>
            </div>
            <div class="row">
                <div class="col" style="overflow:auto;">
                    <center>
                    <asp:GridView ID="StaffMemberGrid" runat="server" class="table table-striped table-bordered col-md-12">
                    </asp:GridView>
                        </center>
                </div>
            </div>
        </div>
<%--    </section>--%>
<%-- ********************************************************************************************************** --%>


<%--    <section style="overflow: auto; height: 200px; margin-bottom: 30px; margin-top:30px;">--%>
        <div class="container-fluid">
            <div class="row">
                <div class="col" style="text-align: center;">
                    <h1>
                        Edit Staff Members Salaries
                    </h1>
                </div>
            </div>
            <div class="row">
                
                <div class="col" style="margin-top: 10px; margin-bottom: 10px; font-size:120%; margin-left:15px;">
                   <center>
                    <asp:Label ID="Label20" runat="server" Text="SSN"></asp:Label>
                    <asp:DropDownList ID="StaffMemberSSNDropDownList" runat="server" Width="150px">
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label21" runat="server" Text="New Salary"></asp:Label>
                    <asp:TextBox ID="NewSalaryTextBox" runat="server" TextMode="Number" min="1" Width="150px"></asp:TextBox>
                       </center>


                </div>
            </div>
            <div class="row">
                <div class="col" style="font-size: 120%; margin-left: 15px; margin-bottom: 30px;">
                    <center>
                    <asp:Button ID="UpdateSalaryButton" runat="server" OnClick="UpdateSalaryButton_Click" Text="Update Salary" class="btn btn-warning btn-lg col-md-2" style="height:auto;" />
                        </center>
                </div>
            </div>
        </div>
<%--    </section>--%>
<%-- ********************************************************************************************************** --%>

     <div class="container-fluid">
            <div class="row">
                <div class="col" style="text-align: center;">
                    <h1>
                        Update Staff Member Contact Info.
                    </h1>
                </div>
            </div>
            <div class="row">
                
                <div class="col" style="margin-top: 10px; margin-bottom: 10px; font-size:120%; margin-left:15px;">
                   <center>
                       <asp:Label ID="Label22" runat="server" Text="SSN"></asp:Label>
                       <asp:DropDownList ID="UpdateContactStaffMemberSSNDropDownList" runat="server" Width="150px">
                       </asp:DropDownList>
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label23" runat="server" Text="Phone Num."></asp:Label>
                       <asp:TextBox ID="UpdatePhoneTextBox" runat="server" TextMode="Number" min="1" Width="150px"></asp:TextBox>
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label24" runat="server" Text="Address"></asp:Label>
                       <asp:TextBox ID="UpdateAddressTextBox" runat="server" Width="150px"></asp:TextBox>
                    </center>


                </div>
            </div>
            <div class="row">
                <div class="col" style="font-size: 120%; margin-left: 15px; margin-bottom: 30px;">
                    <center>
                        <asp:Button ID="UpdateContactInfoButton" runat="server" Text="Update Contact Info" class="btn btn-warning btn-lg col-md-2" style="height:auto;" OnClick="UpdateContactInfoButton_Click" />
                        </center>
                </div>
            </div>
        </div>
    <%--*******************************************************************************************************************--%>
    <div class="container-fluid">
            <div class="row">
                <div class="col" style="text-align: center;">
                    <h1>
                        Update Staff Member Work Info.
                    </h1>
                </div>
            </div>
            <div class="row">
                
                <div class="col" style="margin-top: 10px; margin-bottom: 10px; font-size:120%; margin-left:15px;">
                   <center>
                       <asp:Label ID="Label25" runat="server" Text="SSN"></asp:Label>
                       <asp:DropDownList ID="WorkInfoSSNDropDownList" runat="server" Width="150px">
                       </asp:DropDownList>
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label26" runat="server" Text="Updated WorkHrs"></asp:Label>
                       <asp:TextBox ID="UpdatedWorkHrsTextBox" runat="server" Width="150px" TextMode="Number" min="1"></asp:TextBox>
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label28" runat="server" Text="New Depatment Num."></asp:Label>
                        <asp:DropDownList ID="NewDepDropDownList" runat="server" Width="150px">
                        </asp:DropDownList>
                       </center>


                </div>
            </div>
            <div class="row">
                <div class="col" style="font-size: 120%; margin-left: 15px; margin-bottom: 30px;">
                    <center>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="UpdateWorkInfoButton" runat="server" Text="Update Work Info"  class="btn btn-warning btn-lg col-md-2" style="height:auto;" OnClick="UpdateWorkInfoButton_Click"/>
                       
                        &nbsp;&nbsp;&nbsp;
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
