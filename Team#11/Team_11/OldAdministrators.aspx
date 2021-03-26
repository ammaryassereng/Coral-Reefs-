<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="OldAdministrators.aspx.cs" Inherits="Team_11.OldAdministrators" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section style="overflow: auto; height: 200px; margin-bottom: 10px;">
        <div class="container">
            <div class="row">
                <div class="col" style="text-align: center;">
                    <h1>View All Feedback and All Complaints
                    </h1>
                </div>
            </div>
            <div class="row">
                <div class="col" style="margin-top: 10px; margin-bottom: 10px;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="ViewFeedBackButton" runat="server" Text="View FeedBack" CssClass="btn btn-primary" OnClick="ViewFeedBackButton_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:Button ID="ViewComplaintsButton" runat="server" Text="View Complaints" CssClass="btn btn-primary" OnClick="ViewComplaintsButton_Click" />


                    &nbsp;&nbsp;&nbsp;&nbsp;

                </div>
            </div>
            <div class="row">
                <div class="col">
                    <asp:GridView ID="FeedBackAndComplaintsGrid" runat="server" Width="938px">
                    </asp:GridView>

                </div>
            </div>
        </div>
    </section>
<%-- ********************************************************************************************************** --%>
    <section style="overflow: auto; height: 540px; margin-bottom: 20px;">
        <div class="row">
            <div class="col" style="text-align: center;">
                <h1>Add New Staff Member
                </h1>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col" style="font-size: 80%; margin-left: 15px; margin-bottom: 10px;">
                    &nbsp;<asp:Label ID="Label3" runat="server" Text="Personal Info"></asp:Label>
                    &nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

              
                </div>
            </div>
            <div class="row">
                <div class="col" style="font-size: 80%; margin-left: 15px; margin-bottom: 10px;">
                    &nbsp;<asp:Label ID="Label2" runat="server" Text="FName"></asp:Label>
                    <asp:TextBox ID="FNameTextBox" runat="server" Width="150px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Text="Minit"></asp:Label>
                    &nbsp;&nbsp;&nbsp;<asp:TextBox ID="MinitTextBox" runat="server" Width="65px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:Label ID="Label5" runat="server" Text="LName"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:TextBox ID="LNameTextBox" runat="server" Width="150px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
            </div>
            <div class="row">
                <div class="col" style="font-size: 80%; margin-left: 15px; margin-bottom: 20px;">

                    <asp:Label ID="Label6" runat="server" Text="Gender"></asp:Label>

                    &nbsp;<asp:DropDownList ID="GenderDropDownList1" runat="server" Width="64px">
                        <asp:ListItem>M</asp:ListItem>
                        <asp:ListItem>F</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label7" runat="server" Text="BDate"></asp:Label>
                    &nbsp;<asp:TextBox ID="BDateTextBox" runat="server" TextMode="Date"></asp:TextBox>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:Label ID="Label18" runat="server" Text="Nationality"></asp:Label>
                    &nbsp;<asp:TextBox ID="NationalityTextBox" runat="server"></asp:TextBox>

                </div>
            </div>
            <div class="row">
                <div class="col" style="font-size: 80%; margin-left: 15px; margin-bottom: 20px;">

                    <asp:Label ID="Label8" runat="server" Text="Contact Info"></asp:Label>

                </div>
            </div>
            <div class="row">
                <div class="col" style="font-size: 80%; margin-left: 15px; margin-bottom: 20px;">

                    <asp:Label ID="Label9" runat="server" Text="Email"></asp:Label>

                    &nbsp;<asp:TextBox ID="EmailTextBox" runat="server" Width="190px" TextMode="Email"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;
                   <asp:Label ID="Label10" runat="server" Text="Phone Num."></asp:Label>
                    &nbsp;
                   <asp:TextBox ID="PhoneNumTextBox" runat="server" Width="190px" TextMode="Phone"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:Label ID="Address" runat="server" Text="Address"></asp:Label>
                    &nbsp;<asp:TextBox ID="AddressTextBox" runat="server" Width="190px"></asp:TextBox>

                </div>
            </div>
            <div class="row">
                <div class="col" style="font-size: 80%; margin-left: 15px; margin-bottom: 20px;">

                    <asp:Label ID="Label11" runat="server" Text="Work Info"></asp:Label>

                </div>
            </div>
            <div class="row">
                <div class="col" style="font-size: 80%; margin-left: 15px; margin-bottom: 10px;">

                    <asp:Label ID="Label12" runat="server" Text="SSN"></asp:Label>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="SSNTextBox" runat="server" Width="180px" TextMode="Number"></asp:TextBox>
                    &nbsp;&nbsp;
                   <asp:Label ID="Label13" runat="server" Text="Mgr_SSN"></asp:Label>
                    &nbsp;
                   <asp:DropDownList ID="MgrSSNDropDownList1" runat="server" Width="180px">
                   </asp:DropDownList>
                    &nbsp;
                   <asp:Label ID="Label14" runat="server" Text="Department"></asp:Label>
                    <asp:TextBox ID="DepartmentTextBox" runat="server" Width="180px" TextMode="Number"></asp:TextBox>

                </div>
            </div>
            <div class="row">
                <div class="col" style="font-size: 80%; margin-left: 15px; margin-bottom: 20px;">

                    <asp:Label ID="Label15" runat="server" Text="Salary"></asp:Label>
                    <asp:TextBox ID="SalaryTextBox" runat="server" Width="180px" TextMode="Number"></asp:TextBox>
                    &nbsp;&nbsp;
                   <asp:Label ID="Label16" runat="server" Text="Work_Hrs"></asp:Label>
                    &nbsp;<asp:TextBox ID="WorkHrsTextBox" runat="server" Width="180px" TextMode="Number"></asp:TextBox>

                    &nbsp;

               &nbsp;<asp:Label ID="Label17" runat="server" Text="Password"></asp:Label>
                    &nbsp;
                    <asp:TextBox ID="PasswordTextBox" runat="server" Width="180px" TextMode="Password"></asp:TextBox>

                </div>
            </div>
            <div class="row">
                <div class="col " style="font-size: 80%; margin-left: 15px; margin-bottom: 20px;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                   <asp:Button ID="AddStaffMemberButton" runat="server" OnClick="AddStaffMemberButton_Click" Text="Add New Staff Member" />

                </div>
            </div>
        </div>
    </section>
<%-- ********************************************************************************************************** --%>

    <section style="overflow: auto; height: 150px; margin-bottom: 10px; margin-top: 10px;">
        <div class="container">
            <div class="row">
                <div class="col" style="text-align: center;">
                    <h1>Remove Staff Member
                    </h1>
                </div>
            </div>
            <div class="row">
                <div class="col" style="font-size: 80%; margin-left: 15px; margin-bottom: 20px;">

                    <asp:Label ID="Label19" runat="server" Text="SSN"></asp:Label>
                    &nbsp;<asp:DropDownList ID="SSNDropDownList" runat="server" Width="183px">
                    </asp:DropDownList>
                    &nbsp;<asp:Button ID="RemoveStaffMemberButton" runat="server" Text="Remove Staff Member" OnClick="RemoveStaffMemberButton_Click" />

                </div>
            </div>
        </div>
    </section>
<%-- ********************************************************************************************************** --%>

    <section style="overflow: auto; height: 200px; margin-bottom: 10px; margin-top:10px;">
        <div class="container">
            <div class="row">
                <div class="col" style="text-align: center;">
                    <h1>
                        View All Staff Members
                    </h1>
                </div>
            </div>
            <div class="row">
                <div class="col" style="margin-top: 10px; margin-bottom: 10px;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="ViewStaffMemberButton" runat="server" OnClick="ViewStaffMemberButton_Click" Text="View Staff Members" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


                    &nbsp;&nbsp;&nbsp;&nbsp;

                </div>
            </div>
            <div class="row">
                <div class="col">
                    <asp:GridView ID="StaffMemberGrid" runat="server" Width="938px">
                    </asp:GridView>

                </div>
            </div>
        </div>
    </section>
<%-- ********************************************************************************************************** --%>


    <section style="overflow: auto; height: 200px; margin-bottom: 10px; margin-top:10px;">
        <div class="container">
            <div class="row">
                <div class="col" style="text-align: center;">
                    <h1>
                        Edit Staff Members Salaries
                    </h1>
                </div>
            </div>
            <div class="row">
                
                <div class="col" style="margin-top: 10px; margin-bottom: 10px; font-size:80%; margin-left:15px;">
                    &nbsp;&nbsp;<asp:Label ID="Label20" runat="server" Text="SSN"></asp:Label>
                    <asp:DropDownList ID="StaffMemberSSNDropDownList" runat="server" Width="182px">
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Label ID="Label21" runat="server" Text="New Salary"></asp:Label>
                    <asp:TextBox ID="NewSalaryTextBox" runat="server" TextMode="Number" min="1"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


                    &nbsp;&nbsp;&nbsp;&nbsp;

                </div>
            </div>
            <div class="row">
                <div class="col" style="font-size: 80%; margin-left: 15px; margin-bottom: 10px;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="UpdateSalaryButton" runat="server" OnClick="UpdateSalaryButton_Click" Text="Update Salary" />

                </div>
            </div>
        </div>
    </section>
<%-- ********************************************************************************************************** --%>

    <section style="overflow: auto; height: 200px; margin-bottom: 10px; margin-top:10px;">
        <div class="container">
            <div class="row">
                <div class="col" style="text-align: center;">
                    <h1>
                        View the Income and the Outcome of the Hotel
                    </h1>
                </div>
            </div>
            <div class="row">
                
                <div class="col" style="margin-top: 10px; margin-bottom: 10px; font-size:80%; margin-left:15px;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="IncomeandOutcomeButton" runat="server" Text="View Income and Outcome of the Hotel" OnClick="IncomeandOutcomeButton_Click" />

                </div>
            </div>
            <div class="row">
                <div class="col" style="font-size: 80%; margin-left: 15px; margin-bottom: 10px;">
                    &nbsp;<asp:Label ID="Label22" runat="server" Text="Total Income"></asp:Label>
                    <asp:TextBox ID="TotalIncomeTextBox" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label23" runat="server" Text="Total Outcome"></asp:Label>
                    <asp:TextBox ID="TotalOutcomeTextBox" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                </div>
            </div>
        </div>
        
    </section>
<%-- ********************************************************************************************************** --%>

    <section style="overflow: auto; height: 200px; margin-bottom: 10px; margin-top:10px;">
        <div class="container">
            <div class="row">
                <div class="col" style="text-align: center;">
                    <h1>
                        View the Number of Occupied and Vacant Rooms
                    </h1>
                </div>
            </div>
            <div class="row">
                
                <div class="col" style="margin-top: 10px; margin-bottom: 10px; font-size:80%; margin-left:15px;">
                    <asp:Label ID="Label24" runat="server" Text="RoomState"></asp:Label>
                    <asp:DropDownList ID="RoomStateDropDownList" runat="server" Width="180px">
                        <asp:ListItem>Vacant</asp:ListItem>
                        <asp:ListItem Value="Occupied">Occupied</asp:ListItem>
                    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label25" runat="server" Text="Number of Rooms"></asp:Label>
&nbsp;<asp:TextBox ID="NumberofRoomsTextBox" runat="server"></asp:TextBox>

                </div>
            </div>
            <div class="row">
                <div class="col" style="font-size: 80%; margin-left: 15px; margin-bottom: 10px;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    <asp:Button ID="NumberofRoomsButton" runat="server" OnClick="NumberofRoomsButton_Click" Text="Get Number of Rooms" />

                </div>
            </div>
        </div>
    </section>
<%-- ********************************************************************************************************** --%>

     <section style="overflow: auto; height: 300px; margin-bottom: 10px; margin-top:10px;">
        <div class="container">
            <div class="row">
                <div class="col" style="text-align: center;">
                    <h1>
                        Update the State of the Current Guest
                    </h1>
                </div>
            </div>
            <div class="row">
               <div class="col" style="margin-top: 10px; margin-bottom: 10px; font-size:80%; margin-left:15px;">

                    <asp:Label ID="Label26" runat="server" Text="Current Guest National ID"></asp:Label>
                   <asp:DropDownList ID="CurrentGuestNationalIDDropDownList" runat="server" Width="180px">
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:Label ID="Label30" runat="server" Text="Current Guest State"></asp:Label>
                    <asp:TextBox ID="CurrentGuestStateTextBox" runat="server"></asp:TextBox>

               </div>
           </div>
            <div class="row">
                
                <div class="col" style="margin-top: 10px; margin-bottom: 10px; font-size:80%; margin-left:15px;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    <asp:Button ID="GetCurrentGuestStateButton" runat="server" Text="Get Current Guest State" OnClick="GetCurrentGuestStateButton_Click" />

                    </div>
            </div>
            <div class="row">
               <div class="col" style="margin-top: 10px; margin-bottom: 10px; font-size:80%; margin-left:15px;">

         
         
         
         
                   <asp:Label ID="Label27" runat="server" Text="New State"></asp:Label>
                   <asp:DropDownList ID="NewStateDropDownList" runat="server" Width="180px">
                       <asp:ListItem>Half Board</asp:ListItem>
                       <asp:ListItem>Full Board</asp:ListItem>
                       <asp:ListItem>All Inclusive</asp:ListItem>
                   </asp:DropDownList>
                   &nbsp;&nbsp;&nbsp;
                   <asp:Button ID="UpdateCurrentGuestStateButton" runat="server" Text="Update Current Guest State" OnClick="UpdateCurrentGuestStateButton_Click" Width="386px" />
               </div>
           </div>            
        </div>   
    </section>
<%-- ********************************************************************************************************** --%>


</asp:Content>
