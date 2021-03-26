<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Old2Administrators.aspx.cs" Inherits="Team_11.Administrators" %>
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
                       <asp:Button ID="ViewAllFeedBackButton" runat="server" Text="View All FeedBack" class="btn btn-primary btn-lg col-md-10" OnClick="ViewAllFeedBackButton_Click"/>
                   </center>                 
               </div>
           </div>
           <div class="row">
               <div class="col" style="margin-bottom:10px; margin-top:10px;">
                   <center>
                   <asp:Button ID="ViewAllComplaintsButton" runat="server" Text="View All Complaints" class="btn btn-danger btn-lg col-md-10" OnClick="ViewAllComplaintsButton_Click" />
                   </center> 
               </div>               
           </div>
                <div class="row">
                <div class="col" style="text-align: center; margin-bottom:10px; margin-top:20px;">
                    <h1>
                        Editing Staff Members
                    </h1>
                </div>
                    </div>
           <div class="row">
               <div class="col" style="margin-bottom:10px; margin-top:10px;">
                   <center>
                       <asp:Button ID="AddNewStaffMemberButton" runat="server" Text="Add New Staff Member" class="btn btn-success btn-lg col-md-10" OnClick="AddNewStaffMemberButton_Click"/>

                   </center>
               </div>
           </div>
           <div class="row">
               <div class="col" style="margin-bottom:10px; margin-top:10px;">
                     <center>
                   <asp:Button ID="FireCurrentStaffMemberButton" runat="server" Text="Fire Current Staff Member" class="btn btn-danger btn-lg col-md-10" OnClick="FireCurrentStaffMemberButton_Click" />
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
                   <asp:Button ID="EditStaffMemberSalaryButton" runat="server" Text="Edit Staff Member Salary" class="btn btn-warning btn-lg col-md-10" OnClick="EditStaffMemberSalaryButton_Click"/>
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

                        <asp:Button ID="AddNewAdministratorButton" runat="server" Text="Add New Administrator" class="btn btn-success btn-lg col-md-10" />

                    </center>
               </div>
           </div>
           <div class="row">
               <div class="col" style="margin-bottom:10px; margin-top:10px;">
                   <center>

                       <asp:Button ID="RemoveAdministratorButton" runat="server" Text="Fire Current Administrator" class="btn btn-danger btn-lg col-md-10" />

                    </center>

               </div>
           </div>
           <div class="row">
               <div class="col" style="margin-bottom:10px; margin-top:10px;">
                   <center>

                       <asp:Button ID="ViewAllAdministratorsButton" runat="server" Text="View All Administrators Info."  class="btn btn-info btn-lg col-md-10"/>

                    </center>

               </div>
           </div>
           <div class="row">
               <div class="col" style="margin-bottom:10px; margin-top:10px;">
                   <center>

                       <asp:Button ID="EditAdministratorsSalaryButton" runat="server" Text="Edit Administrator Salary" class="btn btn-warning btn-lg col-md-10" />

                    </center>

               </div>
           </div>
           <div class="row">
               <div class="col" style="margin-bottom:25px; margin-top:25px;">
                   <center>
                   <asp:Button ID="RoomsCapacityButton" runat="server" Text="View The Number Of Vacant and Occupied Rooms" class="btn btn-info btn-lg col-md-10"/>
</center>
               </div>
           </div>
           <div class="row">
               <div class="col" style="margin-bottom:25px; margin-top:25px;">
                   <center>
                       <asp:Button ID="UpdateGuestStateButton" runat="server" Text="Update The State Of The Current Guest" class="btn btn-warning btn-lg col-md-10"/>
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
