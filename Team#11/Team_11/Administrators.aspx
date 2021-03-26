<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Administrators.aspx.cs" Inherits="Team_11.Administrators" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
  <%--  <section>--%>
       <div class="container-fluid">
           <div class="row">
                <div class="col" style="text-align: center; margin-bottom:10px; margin-top:100px;">
                    <h1>
                        Feedback And Complaints
                    </h1>
                </div>
               </div>
           <div class="row">
               <div class="col" style="margin-bottom:10px; margin-top:10px;">
                   <center>
                       <asp:Button ID="ViewAllFeedBackButton" runat="server" Text="View All FeedBack" class="btn btn-primary btn-lg col-md-10" style="height:auto;" OnClick="ViewAllFeedBackButton_Click"/>
                   </center>                 
               </div>
           </div>
           <div class="row">
               <div class="col" style="margin-bottom:10px; margin-top:10px;">
                   <center>
                   <asp:Button ID="ViewAllComplaintsButton" runat="server" Text="View All Complaints" class="btn btn-danger btn-lg col-md-10" style="height:auto;" OnClick="ViewAllComplaintsButton_Click" />
                   </center> 
               </div>               
           </div>
                <div class="row">
                <div class="col"  style="text-align: center; margin-bottom:10px; margin-top:20px;">
                    <h1 ID="EditStaffMembersHeader">
                        Editing Staff Members
                    </h1>
                    
                </div>
                    </div>
           <div class="row">
               <div class="col" style="margin-bottom:10px; margin-top:10px;">
                   <center>
                       <asp:Button ID="AddNewStaffMemberButton" runat="server" Text="Add New Staff Member" class="btn btn-success btn-lg col-md-10" style="height:auto;" OnClick="AddNewStaffMemberButton_Click"/>

                   </center>
               </div>
           </div>
           <div class="row">
               <div class="col" style="margin-bottom:10px; margin-top:10px;">
                     <center>
                   <asp:Button ID="FireCurrentStaffMemberButton" runat="server" Text="Fire Current Staff Member" class="btn btn-danger btn-lg col-md-10" style="height:auto;" OnClick="FireCurrentStaffMemberButton_Click" />
                   </center>
               </div>
           </div>
           <div class="row">
               <div class="col" style="margin-bottom:10px; margin-top:10px;">
                    <center>
                   <asp:Button ID="ViewStaffMemberButton" runat="server" Text="View All Staff Members Info." class="btn btn-info btn-lg col-md-10" style="height:auto;" OnClick="ViewStaffMemberButton_Click"/>
</center>
               </div>
           </div>
           <div class="row">
               <div class="col" style="margin-bottom:10px; margin-top:10px;">
                   <center>
                   <asp:Button ID="EditStaffMemberSalaryButton" runat="server" Text="Edit Staff Member Salary" class="btn btn-warning btn-lg col-md-10" style="height:auto;" OnClick="EditStaffMemberSalaryButton_Click"/>
                       </center>
               </div>
           </div>
           <div class="row">
                <div class="col" style="text-align: center; margin-bottom:10px; margin-top:20px;">
                    <h1>
                        Editing Administrators
                    </h1>
                </div>
                    </div>
           <div class="row">
                <div class="col" style="margin-bottom:10px; margin-top:10px;">
                    <center>

                        <asp:Button ID="AddNewAdministratorButton" runat="server" Text="Add New Administrator" style="height:auto;" class="btn btn-success btn-lg col-md-10" OnClick="AddNewAdministratorButton_Click" />

                    </center>
               </div>
           </div>
           <div class="row">
               <div class="col" style="margin-bottom:10px; margin-top:10px;">
                   <center>

                       <asp:Button ID="RemoveAdministratorButton" runat="server" Text="Fire Current Administrator" class="btn btn-danger btn-lg col-md-10"  style="height:auto;" OnClick="RemoveAdministratorButton_Click"/>

                    </center>

               </div>
           </div>
           <div class="row">
               <div class="col" style="margin-bottom:10px; margin-top:10px;">
                   <center>

                       <asp:Button ID="ViewAllAdministratorsButton" runat="server" Text="View All Administrators Info."  class="btn btn-info btn-lg col-md-10" style="height:auto;" OnClick="ViewAllAdministratorsButton_Click"/>

                    </center>

               </div>
           </div>
           <div class="row">
               <div class="col" style="margin-bottom:10px; margin-top:10px;">
                   <center>

                       <asp:Button ID="EditAdministratorsSalaryButton" runat="server" Text="Edit Administrator Salary" class="btn btn-warning btn-lg col-md-10"  style="height:auto;" OnClick="EditAdministratorsSalaryButton_Click"/>

                    </center>

               </div>
           </div>
            <div class="row">
                <div class="col" style="text-align: center; margin-bottom:10px; margin-top:20px;">
                    <h1>
                        Detailed Data Statistics 
                    </h1>
                </div>
                    </div>
           <div class="row">
               <div class="col" style="margin-bottom:25px; margin-top:25px;">
                   <center>
                   <asp:Button ID="StatDataButton" runat="server" Text="View Statistical Data" class="btn btn-info btn-lg col-md-10" style="height:auto;" OnClick="StatDataButton_Click"/>
</center>
               </div>
           </div>
           <div class="row">
           <div class="col" style="text-align: center; margin-bottom:10px; margin-top:20px;">
                    <h1>
                        Managerial Data Statistics 
                    </h1>
                </div>
                    </div>
           <div class="row">
    <div class="col" style="margin-bottom:25px; margin-top:25px;">
                   <center>
                   <asp:Button ID="ManagerialStatButton" runat="server" Text="View Managerial Statistical Data" class="btn btn-info btn-lg col-md-10" style="height:auto;" OnClick="ManagerialStatButton_Click" />
</center>
               </div>
           </div>
           <div class="row">
           <div class="col" style="text-align: center; margin-bottom:10px; margin-top:20px;">
                    <h1>
                        Special Occasions Information
                    </h1>
                </div>
                    </div>
           <div class="row">
    <div class="col" style="margin-bottom:25px; margin-top:25px;">
                   <center>
                   <asp:Button ID="SpecialOccButton" runat="server" Text="Special Occasions Information" class="btn btn-primary btn-lg col-md-10" style="height:auto;" OnClick="SpecialOccButton_Click"  />
</center>
               </div>
           </div>
           <div class="row">
           <div class="col" style="text-align: center; margin-bottom:10px; margin-top:20px;">
                    <h1>
                        Services Information
                    </h1>
                </div>
                    </div>
           <div class="row">
    <div class="col" style="margin-bottom:25px; margin-top:25px;">
                   <center>
                   <asp:Button ID="ServicesButton" runat="server" Text="Services Information" class="btn btn-primary btn-lg col-md-10" style="height:auto;" OnClick="ServicesButton_Click"/>
</center>
               </div>
           </div>
            <div class="row">
           <div class="col" style="text-align: center; margin-bottom:10px; margin-top:20px;">
                    <h1>
                        Update Current Guest State
                    </h1>
                </div>
                    </div>
           <div class="row">
               <div class="col" style="margin-bottom:25px; margin-top:25px;">
                   <center>
                       <asp:Button ID="UpdateGuestStateButton" runat="server" Text="Update The State Of The Current Guest" class="btn btn-warning btn-lg col-md-10" style="height:auto;" OnClick="UpdateGuestStateButton_Click"/>
                  </center>
               </div>
           </div>
           <div class="row">
           <div class="col" style="text-align: center; margin-bottom:10px; margin-top:20px;">
                    <h1>
                        View The Income And Outcome Of The Hotel
                    </h1>
                </div>
                    </div>
           <div class="row">
               <div class="col" style="margin-bottom:25px; margin-top:25px;">
                   <center>
                       <asp:Button ID="ViewButton" runat="server" Text="View The Income And Outcome Of The Hotel" class="btn btn-warning btn-lg col-md-10" style="height:auto;" OnClick="UpdateGuestStateButton_Click"/>
                  </center>
               </div>
           </div>
           <div class="row">
               <div class="col" style="margin-bottom:25px; margin-top:25px;">
                   <center>

                   </center>
               </div>
           </div>
           <div class="row">
               <div class="col" style="margin-bottom:25px; margin-top:25px;">
                   <center>

                   </center>
               </div>
           </div>
           <div class="row">
               <div class="col" style="margin-bottom:25px; margin-top:25px;">
                   <center>

                   </center>
               </div>
           </div>
           <div class="row">
               <div class="col" style="margin-bottom:25px; margin-top:25px;">
                   <center>

                   </center>
               </div>
           </div>
           <div class="row">
               <div class="col" style="margin-bottom:25px; margin-top:25px;">
                   <center>

                   </center>
               </div>
           </div>
           <div class="row">
               <div class="col" style="margin-bottom:25px; margin-top:25px;">
                   <center>

                   </center>
               </div>
           </div>
           <div class="row">
               <div class="col" style="margin-bottom:25px; margin-top:25px;">
                   <center>

                   </center>
               </div>
           </div>
           <div class="row">
               <div class="col">
                   <center>

                   </center>
               </div>
           </div>
           <div class="row">
               <div class="col">
                   <center>

                   </center>
               </div>
           </div>
           <div class="row">
               <div class="col">
                   <center>

                   </center>
               </div>
           </div>
           <div class="row">
               <div class="col">
                   <center>

                   </center>
               </div>
           </div>
       </div>
<%--    </section>--%>
</asp:Content>
