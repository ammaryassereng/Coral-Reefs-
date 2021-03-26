using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing.Printing;
using System.Linq;
using System.Web;
using System.Web.DynamicData;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Team_11
{
    public partial class Receptionist : System.Web.UI.Page
    {
        Controller ControllerObj;
        protected void Page_Load(object sender, EventArgs e)
        {
            ControllerObj = new Controller();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable Dt = ControllerObj.SeeAllReservationRequests();
            ShowRequestsGrid.DataSource = Dt;
            ShowRequestsGrid.DataBind();
        }

        protected void ApproveGuestButton_Click(object sender, EventArgs e)
        {
            if (ParentNumber.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Enter a valid Parent Number " + "');", true);
                return;
            }
            DataTable DT = ControllerObj.selectReservationRequestwithPNID((ParentNumber.Text));
            if(DT == null)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Enter a valid Parent Number " + "');", true);
                return;
            }
            int confirmationNumber = 0;
            DateTime curr = DateTime.Now;
            confirmationNumber = curr.Day;
            confirmationNumber *= 100;
            confirmationNumber += curr.Month;
            confirmationNumber *= 10000;
            confirmationNumber += curr.Year;
            //confirmationNumber *= 100;
            confirmationNumber += ControllerObj.LatestPendingReservation();

            int count = ControllerObj.CountExistingConfirmationNumbersInPending(confirmationNumber);
            count += ControllerObj.CountExistingConfirmationNumbersInCurr(confirmationNumber);
            count += ControllerObj.CountExistingConfirmationNumbersInOld(confirmationNumber);

            while (count != 0)
            {
                confirmationNumber++;
                count = ControllerObj.CountExistingConfirmationNumbersInPending(confirmationNumber);
                count += ControllerObj.CountExistingConfirmationNumbersInCurr(confirmationNumber);
                count += ControllerObj.CountExistingConfirmationNumbersInOld(confirmationNumber);
            }

            ControllerObj.InsertANewPendingReservation(confirmationNumber, Convert.ToDateTime(DT.Rows[0]["StartDate"].ToString()), Convert.ToDateTime(DT.Rows[0]["EndDate"].ToString()));
            int CountOfRows = DT.Rows.Count;

            for (int i = 0; i < CountOfRows; i++)
            {
                if (DT.Rows[i]["relation"].ToString().Trim(' ') == "")
                {
                    ControllerObj.InsertIntoPendingGuestSingle((DT.Rows[i]["NationalID"].ToString()), DT.Rows[i]["FName"].ToString(), DT.Rows[i]["Minit"].ToString(), DT.Rows[i]["LName"].ToString(), DT.Rows[i]["Nationality"].ToString(), int.Parse(DT.Rows[i]["Age"].ToString()), DT.Rows[i]["Email"].ToString(), (DT.Rows[i]["PhoneNumber"].ToString()), DT.Rows[i]["Gender"].ToString(), DT.Rows[i]["State"].ToString());
                    ControllerObj.InsertIntoReserving(confirmationNumber, (DT.Rows[i]["NationalID"].ToString()));
                }
                else
                {
                    if (DT.Rows[i]["relation"].ToString() == "Wife" || DT.Rows[i]["relation"].ToString() == "Husband")
                    {
                        ControllerObj.InsertIntoPendingGuest((DT.Rows[i]["NationalID"].ToString()), DT.Rows[i]["FName"].ToString(), DT.Rows[i]["Minit"].ToString(), DT.Rows[i]["LName"].ToString(), DT.Rows[i]["Nationality"].ToString(), int.Parse(DT.Rows[i]["Age"].ToString()), DT.Rows[i]["Email"].ToString(),(DT.Rows[i]["PhoneNumber"].ToString()), "Maried", DT.Rows[i]["Gender"].ToString(), DT.Rows[i]["State"].ToString());
                        ControllerObj.InsertIntoReserving(confirmationNumber, (DT.Rows[i]["NationalID"].ToString()));
                    }
                    else
                    {
                        ControllerObj.InsertIntoPendingGuestSingle((DT.Rows[i]["NationalID"].ToString()), DT.Rows[i]["FName"].ToString(), DT.Rows[i]["Minit"].ToString(), DT.Rows[i]["LName"].ToString(), DT.Rows[i]["Nationality"].ToString(), int.Parse(DT.Rows[i]["Age"].ToString()), DT.Rows[i]["Email"].ToString(), (DT.Rows[i]["PhoneNumber"].ToString()), DT.Rows[i]["Gender"].ToString(), DT.Rows[i]["State"].ToString());
                        ControllerObj.InsertIntoReserving(confirmationNumber, (DT.Rows[i]["NationalID"].ToString()));
                    }
                }
            }

            DataTable RequestedRooms = ControllerObj.GetRoomsToReserve((ParentNumber.Text));

            int RoomsCount = RequestedRooms.Rows.Count;

            for (int i = 0; i < RoomsCount; i++)
            {
                ControllerObj.InsertIntoOccupying(int.Parse(RequestedRooms.Rows[i]["RoomNumber"].ToString()), confirmationNumber);
            }

            ControllerObj.RemoveFromReservationRequest((ParentNumber.Text));
            for (int i = 0; i < CountOfRows; i++)
            {
                ControllerObj.RemoveFromReservationRequestAllNonAccepted(int.Parse(DT.Rows[i]["RoomNumber"].ToString()), Convert.ToDateTime(DT.Rows[i]["StartDate"].ToString()), Convert.ToDateTime(DT.Rows[i]["EndDate"].ToString()));
            }
        }

        protected void UpdateDay_Click(object sender, EventArgs e)
        {
            DateTime ToDay = DateTime.Now.Date;


            DataTable currRes = ControllerObj.GetFinishedCurrReservations(ToDay);
            if (currRes != null)
            {
                int numOfcurr = currRes.Rows.Count;
                for (int i = 0; i < numOfcurr; i++)
                {
                    ControllerObj.InsertANewOlderReservation(int.Parse(currRes.Rows[i]["ConfirmationNumber"].ToString()), Convert.ToDateTime(currRes.Rows[i]["StartDate"].ToString()), Convert.ToDateTime(currRes.Rows[i]["EndDate"].ToString()));
                }

                for (int i = 0; i < numOfcurr; i++)
                {
                    int BILL = 0;
                    bool PriceCounted = false;
                    DataTable OldCurrGuest = ControllerObj.GetNewOlderGuest(int.Parse(currRes.Rows[i]["ConfirmationNumber"].ToString()));
                    if (OldCurrGuest != null)
                    {
                        int CountOfTransGuests = OldCurrGuest.Rows.Count;
                        for (int j = 0; j < CountOfTransGuests; j++)
                        {
                            if (OldCurrGuest.Rows[j]["MaritalStatus"].ToString() == "Married")
                            {
                                ControllerObj.InsertIntoOlderGuest((OldCurrGuest.Rows[j]["NationalID"].ToString())
                                                                        , OldCurrGuest.Rows[j]["FName"].ToString()
                                                                        , OldCurrGuest.Rows[j]["Minit"].ToString()
                                                                        , OldCurrGuest.Rows[j]["LName"].ToString()
                                                                        , OldCurrGuest.Rows[j]["Nationality"].ToString()
                                                                        , int.Parse(OldCurrGuest.Rows[j]["Age"].ToString())
                                                                        , OldCurrGuest.Rows[j]["Email"].ToString()
                                                                        , (OldCurrGuest.Rows[j]["PhoneNumber"].ToString())
                                                                        , OldCurrGuest.Rows[j]["MaritalStatus"].ToString()
                                                                        , OldCurrGuest.Rows[j]["Gender"].ToString());
                            }
                            else
                            {
                                ControllerObj.InsertIntoSingleOlderGuest((OldCurrGuest.Rows[j]["NationalID"].ToString())
                                                                        , OldCurrGuest.Rows[j]["FName"].ToString()
                                                                        , OldCurrGuest.Rows[j]["Minit"].ToString()
                                                                        , OldCurrGuest.Rows[j]["LName"].ToString()
                                                                        , OldCurrGuest.Rows[j]["Nationality"].ToString()
                                                                        , int.Parse(OldCurrGuest.Rows[j]["Age"].ToString())
                                                                        , OldCurrGuest.Rows[j]["Email"].ToString()
                                                                        , (OldCurrGuest.Rows[j]["PhoneNumber"].ToString())
                                                                        , OldCurrGuest.Rows[j]["MaritalStatus"].ToString()
                                                                        , OldCurrGuest.Rows[j]["Gender"].ToString());
                            }
                            int countOfServices = ControllerObj.GetCountPriceServiceDoneByGuest(OldCurrGuest.Rows[j]["NationalID"].ToString());
                            if (countOfServices != 0)
                            {
                                BILL += ControllerObj.GetSumPriceServiceDoneByGuest(OldCurrGuest.Rows[j]["NationalID"].ToString());
                            }
                            if (PriceCounted == false)
                            {
                                int TotalPricesOfRooms = ControllerObj.GetSumPricesOfRoomsReserved(int.Parse(currRes.Rows[i]["ConfirmationNumber"].ToString()));
                                BILL += TotalPricesOfRooms;
                                DataTable Days = ControllerObj.GetDatesOfCurrReservation(int.Parse(currRes.Rows[i]["ConfirmationNumber"].ToString()));
                                DateTime start = Convert.ToDateTime(Days.Rows[0]["StartDate"].ToString());
                                DateTime End = Convert.ToDateTime(Days.Rows[0]["EndDate"].ToString());
                                while (start != End)
                                {
                                    start = start.AddDays(1);
                                    BILL += TotalPricesOfRooms;
                                }
                                PriceCounted = true;
                            }
                            ControllerObj.DeletePaymentsOfGuests(OldCurrGuest.Rows[j]["NationalID"].ToString());
                            //ControllerObj.DeleteFromCurrRReservation(int.Parse(currRes.Rows[i]["ConfirmationNumber"].ToString()));
                            ControllerObj.InsertIntoReserved((OldCurrGuest.Rows[j]["NationalID"].ToString()), int.Parse(currRes.Rows[i]["ConfirmationNumber"].ToString()));
                            DataTable currReservedRooms = ControllerObj.GetcurrReservedRooms(int.Parse(currRes.Rows[i]["ConfirmationNumber"].ToString()));
                            if (currReservedRooms != null)
                            {
                                int RoomsToBeOccupied = currReservedRooms.Rows.Count;
                                for (int k = 0; k < RoomsToBeOccupied; k++)
                                {
                                    ControllerObj.InsertIntoOccupied(int.Parse(currRes.Rows[i]["ConfirmationNumber"].ToString()), int.Parse(currReservedRooms.Rows[k]["RoomNumber"].ToString()));
                                }
                            }
                        }
                    }

                    ControllerObj.DeleteFromCurrRReservation(int.Parse(currRes.Rows[i]["ConfirmationNumber"].ToString()));
                    ControllerObj.AddBillToOlderReservation(BILL, int.Parse(currRes.Rows[i]["ConfirmationNumber"].ToString()));
                    ControllerObj.UpdateRoomsStatusAfterDeparture(int.Parse(currRes.Rows[i]["ConfirmationNumber"].ToString()));
                    ControllerObj.RemoveOldCurrentRes(int.Parse(currRes.Rows[i]["ConfirmationNumber"].ToString()));
                }
            }
            DataTable PendingRes = ControllerObj.GetTodaysPendingReservations(ToDay);
            if (PendingRes == null)
            {
                return;
            }
            int numOfPen = 0;
            numOfPen += PendingRes.Rows.Count;
            if (numOfPen == 0)
            {
                return;
            }
            for (int i = 0; i < numOfPen; i++)
            {
                ControllerObj.InsertANewCurrentReservation(int.Parse(PendingRes.Rows[i]["ConfirmationNumber"].ToString()), Convert.ToDateTime(PendingRes.Rows[i]["StartDate"].ToString()), Convert.ToDateTime(PendingRes.Rows[i]["EndDate"].ToString()));
            }

            for (int i = 0; i < numOfPen; i++)
            {
                DataTable TransitionPenGuests = ControllerObj.GetTodayCurrentGuests(int.Parse(PendingRes.Rows[i]["ConfirmationNumber"].ToString()));
                int CountOfTransGuests = TransitionPenGuests.Rows.Count;
                for (int j = 0; j < CountOfTransGuests; j++)
                {
                    if (TransitionPenGuests.Rows[j]["MaritalStatus"].ToString() == "Married")
                    {
                        ControllerObj.InsertIntoCurrentGuest((TransitionPenGuests.Rows[j]["NationalID"].ToString()),
                                                              TransitionPenGuests.Rows[j]["FName"].ToString(),
                                                              TransitionPenGuests.Rows[j]["Minit"].ToString(),
                                                              TransitionPenGuests.Rows[j]["LName"].ToString(),
                                                              TransitionPenGuests.Rows[j]["Nationality"].ToString(),
                                                              int.Parse(TransitionPenGuests.Rows[j]["Age"].ToString()),
                                                              TransitionPenGuests.Rows[j]["Email"].ToString(),
                                                              (TransitionPenGuests.Rows[j]["PhoneNumber"].ToString()),
                                                              TransitionPenGuests.Rows[j]["MaritalStatus"].ToString(),
                                                              int.Parse(TransitionPenGuests.Rows[j]["ConfirmationNumber"].ToString()),
                                                              TransitionPenGuests.Rows[j]["State"].ToString(),
                                                              TransitionPenGuests.Rows[j]["Gender"].ToString());
                    }
                    else
                    {
                        ControllerObj.InsertIntoSingleCurrentGuest((TransitionPenGuests.Rows[j]["NationalID"].ToString()),
                                                              TransitionPenGuests.Rows[j]["FName"].ToString(),
                                                              TransitionPenGuests.Rows[j]["Minit"].ToString(),
                                                              TransitionPenGuests.Rows[j]["LName"].ToString(),
                                                              TransitionPenGuests.Rows[j]["Nationality"].ToString(),
                                                              int.Parse(TransitionPenGuests.Rows[j]["Age"].ToString()),
                                                              TransitionPenGuests.Rows[j]["Email"].ToString(),
                                                              (TransitionPenGuests.Rows[j]["PhoneNumber"].ToString()),
                                                              TransitionPenGuests.Rows[j]["MaritalStatus"].ToString(),
                                                              int.Parse(TransitionPenGuests.Rows[j]["ConfirmationNumber"].ToString()),
                                                              TransitionPenGuests.Rows[j]["State"].ToString(),
                                                              TransitionPenGuests.Rows[j]["Gender"].ToString());
                    }
                    ControllerObj.RemoveFromPendingGuest((TransitionPenGuests.Rows[j]["NationalID"].ToString()));
                }

                DataTable RoomsToReserve = ControllerObj.FindReservedRoomsToDay(int.Parse(PendingRes.Rows[i]["ConfirmationNumber"].ToString()));
                int countOfRoomsToReserve = RoomsToReserve.Rows.Count;
                for (int j = 0; j < countOfRoomsToReserve; j++)
                {
                    ControllerObj.UpdateRoomsDataToOccupy(int.Parse(PendingRes.Rows[i]["ConfirmationNumber"].ToString()), int.Parse(RoomsToReserve.Rows[j]["RoomNumber"].ToString()));
                }

                ControllerObj.removeAllOldPending(int.Parse(PendingRes.Rows[i]["ConfirmationNumber"].ToString()));

            }
        }

        protected void ViewAllCurrentGuests_Click(object sender, EventArgs e)
        {
            DataTable DT = ControllerObj.ViewAllCUrrentGuest();
            if(DT == null)
            {
                ShowRequestsGrid.DataBind();
                return;
            }
            ShowRequestsGrid.DataSource = DT;
            ShowRequestsGrid.DataBind();
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            int done = ControllerObj.UpdateStateOfCurrGuest(DropDownList1.Text, int.Parse(TextBox1.Text));
            if(done == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Update Failed" + "');", true);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Update Done Succesfully" + "');", true);

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            DataTable DT = ControllerObj.ViewAllPendingGuests();
            if (DT == null)
            {
                ShowRequestsGrid.DataBind();
                return;
            }
            ShowRequestsGrid.DataSource = DT;
            ShowRequestsGrid.DataBind();
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            int done = ControllerObj.UpdateStateOfPendingGuest(DropDownList2.Text, int.Parse(TextBox2.Text));
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (TextBox7.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a valid National ID" + "');", true);
                return;
            }
            string Method = DropDownList4.Text;
            //int Credit = int.Parse(TextBox4.Text);
            string Credit;
            if (Method == "Cash")
            {
                Credit = null;
            }
            else
            {
                if (TextBox4.Text.Trim(' ') == "")
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a valid Credit" + "');", true);
                    return;
                }
                Credit = TextBox4.Text;
            }
            string Srevice = DropDownList3.Text;
            string NI = TextBox7.Text;
            //DataTable PriceSet;
            int price = 0;
            if(Srevice == "Reservation")
            {
                DataTable RoomsRes = ControllerObj.GetRoomsToResrve(NI);
                if(RoomsRes == null)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " No Current Guest Exists with The Given National ID" + "');", true);
                    return;
                }
                int count = RoomsRes.Rows.Count;
                for(int i = 0; i <count; i++)
                {
                    DataTable PriceRm = ControllerObj.GetPricesOfRooms(int.Parse(RoomsRes.Rows[i]["RoomNumber"].ToString()));
                    price += int.Parse(PriceRm.Rows[0]["PricePerDay"].ToString());
                }
            }
            else
            {
                DataTable PriceRM = ControllerObj.GetPriveOfSer(Srevice);
                price += int.Parse(PriceRM.Rows[0]["Price"].ToString());
            }
            int PaymentId = 1;
            int Exist = ControllerObj.ExistingPaymentID(PaymentId);
            while(Exist != 0)
            {
                PaymentId++;
                Exist = ControllerObj.ExistingPaymentID(PaymentId);
            }
            int done = ControllerObj.InsertIntoPayments(PaymentId, Method, Credit, Srevice, price, NI);
            if (done == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Payment Adding Failed" + "');", true);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Payment Adding Done Succesfully" + "');", true);
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            DataTable DT = ControllerObj.ViewRoomServiceReq();
            if (DT == null)
            {
                return;
            }
            ShowRequestsGrid.DataSource = DT;
            ShowRequestsGrid.DataBind();
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            if (ParentNumber.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Enter a valid Parent Number " + "');", true);
                return;
            }
            int res = ControllerObj.DissaproveReservationsRequest(ParentNumber.Text);
            if(res == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Dissaproval failed " + "');", true);
                return;
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Dissaproval done successfully " + "');", true);
                return;
            }
        }
    }
}