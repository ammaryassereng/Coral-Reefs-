using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Web;

namespace Team_11
{
    public class Controller
    {
        DBManager dbMan;
        public Controller()
        {
            dbMan = new DBManager();
        }


        public void TerminateConnection()
        {
            dbMan.CloseConnection();
        }
        public DataTable SelectAllEmp()
        {
            string query = "SELECT * FROM Employee;";
            return dbMan.ExecuteReader(query);
        }


        public int InsertProject(string Pname, int pnumber, string Plocation, int Dnum)
        {
            string query = "INSERT INTO Project (Pname, Pnumber, Plocation, Dnum)" +
                            "Values ('" + Pname + "'," + pnumber + ",'" + Plocation + "'," + Dnum + ");";
            return dbMan.ExecuteNonQuery(query);
        }

        public DataTable SelectDepNum()
        {
            string query = "SELECT Dnumber, Dname FROM Department;";
            return dbMan.ExecuteReader(query);
        }
        public DataTable SelectDepLoc()
        {
            string query = "SELECT DISTINCT Dlocation FROM Dept_Locations;";
            return dbMan.ExecuteReader(query);
        }

        public DataTable SelectProject(string location)
        {
            string query = "SELECT Pname,Dname FROM Department D, Project P, Dept_Locations L"
             + " where P.Dnum=D.Dnumber and L.Dnumber=D.Dnumber and L.Dlocation='" + location + "';";

            return dbMan.ExecuteReader(query);
        }

        //TODO:
        //Get SSN and address for all employees with salary less than 40000.
        //FunctionName "returnType" SelectAllEmployeesWithSalaryLessThan(?)
        //Make Sure to show only SSN and Address Not all columns

        public DataTable SelectAllEmployeesWithSalaryLessThan(int value)
        {
            string query = "SELECT SSN, Address FROM Employee where Salary < " + value + ";";
            return dbMan.ExecuteReader(query);
        }

        //TODO:
        //Get all female employees who work in "Administration" department
        //FunctionName "returnType" GetAllGenderWorkingInDepartment(?,?)
        //Make sure to get their Names and maybe SSN only

        public DataTable FindAllDepartments()
        {
            string query = "select Dname from Department;";
            return dbMan.ExecuteReader(query);
        }

        public DataTable GetAllGenderWorkingInDepartment(string sex, string department)
        {
            string query = "select * from employee, department where Employee.Dno = Department.Dnumber and Employee.Sex = '" + sex + "' and Department.Dname = '" + department + "'; ";
            return dbMan.ExecuteReader(query);
        }

        //TODO:
        //Get departments names for all departments located at "Houston" (1 mark)
        //FunctionName: "returnType" GetDepartmentNamesAtLocation(?)
        //Just Get the Names

        public DataTable GetDepartmentNamesAtLocation(string input)
        {
            string query = "select Department.Dname from Department, Dept_Locations where Dept_Locations.Dlocation = '" + input + "' and Department.Dnumber = Dept_Locations.Dnumber;";
            return dbMan.ExecuteReader(query);
        }


        //TODO:
        //Insert a new department. (1 mark)
        //Make sure all the required fields are given and if any important Field missing, give the user appropriate message

        public int insertDepartment(int Dnum, string Dname, string MgrSSN, DateTime Mgr_SDate)
        {
            string query = "INSERT INTO Department (Dname, Dnumber, Mgr_SSN, Mgr_Start_Date)" +
                            "Values ('" + Dname + "'," + Dnum + ",'" + MgrSSN + "','" + Mgr_SDate + "');";
            return dbMan.ExecuteNonQuery(query);
        }


        //(To be delivered next lab)
        //
        //TODO:
        //5-Get employees names and salaries for all employees 
        //who work in a project located at "Stafford" or in "Houston" 
        //and work less than 35 hours. (1 marks)

        public DataTable Get_Employees_Who_Works_In_Stafford_or_Houston_And_Work_Less_Than_35_Hours()
        {
            string query = "select E.Fname, E.Minit, E.Lname, E.Salary from Employee as E, Employee as S where E.SSN = S.SSN and S.SSN in (select Distinct Employee.SSN from Employee, Project, Works_On where (Project.Plocation = 'Stafford' or Project.Plocation = 'Houston') and Project.Pnumber = Works_On.Pno and Works_On.Hours < 35 and Works_On.Essn = Employee.SSN )  ;";
            return dbMan.ExecuteReader(query);
        }

        //6- Allow user to update salary of an employee of a certain SSN. (1 mark)

        public DataTable GetAllEmployeesSSn()
        {
            string query = "select ssn from Employee;";
            return dbMan.ExecuteReader(query);
        }

        public int UpdateSalary(int salary, int ssn)
        {
            string query = "UPDATE Employee SET Salary = " + salary + " WHERE SSN = " + ssn + "; ";
            return dbMan.ExecuteNonQuery(query);
        }

        //7-Get the last names of department managers and their salaries. (1 mark)

        public DataTable GetManagersLNameAndSalary()
        {
            string query = "select Employee.Lname,Employee.Salary from Employee where SSN In (select distinct Employee.SSN from Employee , Department where Department.Mgr_SSN = Employee.SSN);";
            return dbMan.ExecuteReader(query);
        }
        //8-Get Name and SSN for all employees working in "Research" department or working on projects controlled by "Research" department. (2 marks)

        public DataTable GetEmployeesRelatedToResearch()
        {
            string query = "(select Employee.Fname, Employee.Minit, Employee.Lname, Employee.SSN from Employee, Department where Employee.Dno = Department.Dnumber  and Department.Dname = 'Research') union (select Employee.Fname,Employee.Minit,Employee.Lname ,Employee.SSN From Employee, Department, Works_On, Project where Employee.SSN = Works_On.Essn and Works_On.Pno = Project.Pnumber and Project.Dnum = Department.Dnumber and Department.Dname = 'Research');";
            return dbMan.ExecuteReader(query);
        }

        //9-Get maximum, minimum and average salary for employees(1 mark)

        public int GetMaxSalaries()
        {
            string query = "select Max(Salary) from Employee;";
            return (int)dbMan.ExecuteScalar(query);
        }

        public int GetMinSalaries()
        {
            string query = "select Min(Salary) from Employee;";
            return (int)dbMan.ExecuteScalar(query);
        }

        public int GetAvgSalaries()
        {
            string query = "select AVG(Salary) from Employee;";
            return (int)dbMan.ExecuteScalar(query);
        }

        public DataTable GetWorkers()
        {
            string query = "select * from Worker";
            return dbMan.ExecuteReader(query);
        }




        // start of lab exam

        public int InsertAthlet(int ID, string name, int age)
        {
            string query = "insert into Athlete (ID,NAME, AGE) values (" + ID + ", '" + name + "'," + age + ");";
            return dbMan.ExecuteNonQuery(query);
        }

        public DataTable GetGamesID()
        {
            string query = "select ID from Game;";
            return dbMan.ExecuteReader(query);
        }

        public int GetNoOfPlayers(int ID)
        {
            string query = "select Count(Athlete.ID) from Athlete,Plays where Plays.GameID = " + ID + " and Athlete.ID = Plays.AthleteID;";
            return (int)dbMan.ExecuteScalar(query);
        }

        public DataTable GetGamesPlayedByPLayersAbove27()
        {
            string query = ("select Game.ID, Game.NAME from Game, Athlete, Plays where Athlete.AGE >= 27 and Plays.AthleteID = Athlete.ID and Plays.GameID = Game.ID;");
            return dbMan.ExecuteReader(query);
        }

        // Bonus Question

        public DataTable GetAthletsWhoPlayMoreThanOneGame()
        {
            string query = "select Athlete.NAME from Athlete where Athlete.ID in (select distinct A.ID from Athlete as A, Plays as B, Plays as C where A.ID = B.AthleteID and A.ID = C.AthleteID and B.GameID <> C.GameID);";
            return dbMan.ExecuteReader(query);
        }

        // project

        public int insertintoAdministrators()
        {
            string query = "insert into Administrators VALUES (2,'B','C','D','F','CFGVHBJ','FCGVHBJN',20000,'FTRYGHBJJ','1981-06-19',1)";
            return dbMan.ExecuteNonQuery(query);
        }

        public DataTable Get_Vacant_Rooms()
        {
            string query = "select * from Rooms where State = 'Vacant';";
            return dbMan.ExecuteReader(query);
        }

        public int Get_Email_Password(string Email, string Password, string dept)
        {
            string query = "select COUNT(SSN) from "+ dept + " where Email = '" + Email +"' and Password='" + Password +"'";
            return (int)dbMan.ExecuteScalar(query);
        }

        public DataTable Get_Availabe_Rooms(DateTime Start, DateTime End)
        {
            string query = "(select Rooms.RoomNumber, Rooms.Type, Rooms.RoomView from Rooms where State='Vacant' and RoomNumber not in (select Rooms.RoomNumber from Rooms, PendingReservation, Occupying where Occupying.RoomNumber = Rooms.RoomNumber and '"+  Start + " '>=PendingReservation.StartDate and ' " + Start + "' <= PendingReservation.EndDate)) ";
            while(Start != End)
            {
                Start = Start.AddDays(1);
                query += "intersect (select Rooms.RoomNumber, Rooms.Type, Rooms.RoomView from Rooms where State='Vacant' and RoomNumber not in (select Rooms.RoomNumber from Rooms, PendingReservation, Occupying where Occupying.RoomNumber = Rooms.RoomNumber and '" + Start + " '>=PendingReservation.StartDate and ' " + Start + "' <= PendingReservation.EndDate)) ";
            }

            return dbMan.ExecuteReader(query);
        }

        public DataTable Get_Rooms(DateTime Start, DateTime End, string View, string Type)
        {
            string query = "(select Rooms.RoomNumber from Rooms where State='Vacant' and RoomView = '" + View + "' and Type = '"+ Type +"'and RoomNumber not in (select Rooms.RoomNumber from Rooms, PendingReservation, Occupying where Occupying.RoomNumber = Rooms.RoomNumber and '"+ Start + "' >= PendingReservation.StartDate and '"+Start+ "' <= PendingReservation.EndDate and PendingReservation.ConfirmationNumber = Occupying.ConfirmationNo))";
            while (Start != End)
            {
                Start = Start.AddDays(1);
                query += "intersect (select Rooms.RoomNumber from Rooms where State='Vacant' and RoomView = '" + View + "' and Type = '" + Type + "'and RoomNumber not in (select Rooms.RoomNumber from Rooms, PendingReservation, Occupying where Occupying.RoomNumber = Rooms.RoomNumber and '" + Start + "' >= PendingReservation.StartDate and '" + Start + "' <= PendingReservation.EndDate and PendingReservation.ConfirmationNumber = Occupying.ConfirmationNo))";
            }

            return dbMan.ExecuteReader(query);
        }

        public int RequestReservation(int NID, string FName, string Minit, string LName, string Nationality, int age, string email, int phonenumber, int parent, int roomnum, DateTime stdate, DateTime edate)
        {
            string query = "INSERT INTO ReservationRequest Values('" + NID + "','" + FName + "','" + Minit + "','" + LName + "','" + Nationality + "','" + age + "','" + email + "','" + phonenumber + "','" + parent + "','" + roomnum + "','" + stdate + "','" + edate + "');";
            return dbMan.ExecuteNonQuery(query);
        }

        public int RequestNewReservation(int NID, string FName, string Minit, string LName, string Nationality, int age, string email, int phonenumber, int roomnum, DateTime stdate, DateTime edate)
        {
            string query = "INSERT INTO ReservationRequest Values('" + NID + "','" + FName + "','" + Minit + "','" + LName + "','" + Nationality + "','" + age + "','" + email + "','" + phonenumber + "',null,'" + roomnum + "','" + stdate + "','" + edate + "');";
            return dbMan.ExecuteNonQuery(query);
        }
        //******************************************************************
        public DataTable ViewAllComplaints()
        {
            string query = "SELECT * FROM Complaints ";
            return dbMan.ExecuteReader(query);
        }
        public DataTable ViewAllFeedBacks()
        {
            string query = "SELECT * FROM FeedBack ";
            return dbMan.ExecuteReader(query);
        }
        public DataTable GetAllManagersSSN()
        {
            string query = "SELECT SSN FROM Administrators ";
            return dbMan.ExecuteReader(query);
        }

        public int AddNewStaffMember(int ssn, string FName, string Minit, string LName, string Nationality, string gender, DateTime bdate, string email, string password, string phonenumber, string address, int salary, int mgr_ssn, int depnum, int work_hrs)
        {
            string query = "INSERT INTO StaffMember Values('" + ssn + "','" + FName + "','" + Minit + "','" + LName + "','" + Nationality + "','" + gender + "','" + bdate + "','" + email + "','" + password + "','" + phonenumber + "','" + address + "','" + salary + "','" + mgr_ssn + "','" + depnum + "','" + work_hrs + "');";
            return dbMan.ExecuteNonQuery(query);
        }
        public int RemoveStaffMember(int ssn)
        {
            string query = "DELETE FROM StaffMember WHERE SSN='" + ssn + "';";
            return dbMan.ExecuteNonQuery(query);
        }
        public DataTable GetAllStaffMemberSSN()
        {
            string query = "SELECT SSN FROM StaffMember";
            return dbMan.ExecuteReader(query);
        }
        public DataTable ViewAllStaffMembers()
        {
            string query = "SELECT * FROM StaffMember ";
            return dbMan.ExecuteReader(query);
        }
        public int UpdateStaffMemberSalary(int ssn, int salary)
        {
            string query = "UPDATE StaffMember SET Salary = '" + salary + "' WHERE SSN = '" + ssn + "';";
            return dbMan.ExecuteNonQuery(query);
        }
        public int GetNummberofVacantandOccupiedRooms(string state)
        {
            string query = "SELECT count (*)  FROM Rooms where State='" + state + "';";
           return (int)dbMan.ExecuteScalar(query);
        }
        public int UpdateGuestState(string NID, string state)
        {
            string query = "Update  CurrentGuest set State='" + state + "'  WHERE NationalID='" + NID + "';";
            return dbMan.ExecuteNonQuery(query);
        }

        public DataTable GetAllNationalIDofAllCurrentGuests()
        {
            string query = "SELECT NationalID FROM CurrentGuest;";
            return dbMan.ExecuteReader(query);
        }
        public DataTable GettheStateOfCurrentGuest(string NID)
        {
            string query = "SELECT State FROM CurrentGuest WHERE NationalID='" + NID + "';";
            return dbMan.ExecuteReader(query);
        }

        public DataTable ViewAllServices()
        {
            string query = "SELECT * FROM Services";
            return dbMan.ExecuteReader(query);
        }
        public int AddNewService(string sname, int sprice)
        {

            string query = "INSERT INTO Services Values('" + sname + "','" + sprice + "'); ";
            return dbMan.ExecuteNonQuery(query);
        }
        public int RemoveService(string sname)
        {
            string query = "DELETE FROM Services WHERE ServiceName='" + sname + "';";
            return dbMan.ExecuteNonQuery(query);
        }
        public DataTable GetAllServicesNames()
        {
            string query = "SELECT ServiceName FROM Services";
            return dbMan.ExecuteReader(query);
        }
        public int UpdateServicePrice(string sname, int sprice)
        {
            string query = "UPDATE  Services SET Price='" + sprice + "'  WHERE ServiceName='" + sname + "';";
            return dbMan.ExecuteNonQuery(query);
        }
        public DataTable GetAllDepNum()
        {
            string query = "SELECT Dno FROM Department";
            return dbMan.ExecuteReader(query);
        }
        public int UpdateStaffMemberPhoneNum(int ssn,string ph)
        {
            string query = "UPDATE  StaffMember SET PhoneNumber='" + ph + "'  WHERE SSN='" + ssn + "';";
            return dbMan.ExecuteNonQuery(query);
        }
        public int UpdateStaffMemberAddress(int ssn, string Add)
        {
            string query = "UPDATE  StaffMember SET Address='" + Add + "'  WHERE SSN='" + ssn + "';";
            return dbMan.ExecuteNonQuery(query);
        }
        public int UpdateStaffMemberWorkHrs(int ssn, int whrs)
        {
            string query = "UPDATE  StaffMember SET Work_Hrs='" + whrs + "'  WHERE SSN='" + ssn + "';";
            return dbMan.ExecuteNonQuery(query);
        }

        //public int UpdateStaffMemberMgrSSN(int ssn, int mgrssn)
        //{
        //    string query = "UPDATE  StaffMember SET Mgr_SSN='" + mgrssn + "'  WHERE SSN='" + ssn + "';";
        //    return dbMan.ExecuteNonQuery(query);
        //}
        public int UpdateStaffMemberDepNum(int ssn, int Depnum, int mgrssn)
        {
            string query = "UPDATE  StaffMember SET Department='" + Depnum + "',Mgr_SSN="+mgrssn+"  WHERE SSN='" + ssn + "';";
            return dbMan.ExecuteNonQuery(query);
        }
        public DataTable ViewAllOccasions()
        {
            string query = "SELECT * FROM Occasions";
            return dbMan.ExecuteReader(query);
        }
        public int AddNewOccasion(string oname, int oprice, int cap)
        {

            string query = "INSERT INTO Occasions Values('" + oname + "','" + oprice + "','" + cap + "'); ";
            return dbMan.ExecuteNonQuery(query);
        }
        public DataTable GetAllOccasionsNames()
        {
            string query = "SELECT OccasionName FROM Occasions";
            return dbMan.ExecuteReader(query);
        }
        public int RemoveOccasion(string oname)
        {
            string query = "DELETE FROM Occasions WHERE OccasionName='" + oname + "';";
            return dbMan.ExecuteNonQuery(query);
        }
        public int UpdateOccasionPrice(string oname, int oprice)
        {
            string query = "UPDATE  Occasions SET Price='" + oprice + "'  WHERE OccasionName='" + oname + "';";
            return dbMan.ExecuteNonQuery(query);
        }
        public int UpdateOccasionMaxCap(string oname, int cap)
        {
            string query = "UPDATE  Occasions SET MaxHallCapacity='" + cap + "'  WHERE OccasionName='" + oname + "';";
            return dbMan.ExecuteNonQuery(query);
        }
        //*************************************************************************************************************************************//
        public DataTable GetMgrSSNofDePNum(int depnum)
        {
            string query = "SELECT  Department.Mgr_SSN FROM Department WHERE Department.Dno=" + depnum + ";";
            return dbMan.ExecuteReader(query);
        }

        public int AddNewAdministrator(int ssn, string FName, string Minit, string LName,  string gender, string Nationality, DateTime bdate, string address,  string phonenumber, string email, string password,  int salary, int mgr_ssn)
        {
            string query = "INSERT INTO Administrators Values('" + ssn + "','" + FName + "','" + Minit + "','" + LName + "','" + gender + "','" + Nationality + "','" + bdate + "','" + address + "','" + phonenumber + "','" + email + "','" + password + "','" + salary + "','" + mgr_ssn + "');";
            return dbMan.ExecuteNonQuery(query);
        }
        public int RemoveAdministrator(int ssn)
        {
            string query = "DELETE FROM Administrators WHERE SSN='" + ssn + "';";
            return dbMan.ExecuteNonQuery(query);
        }
        public DataTable ViewAllAdministrator()
        {
            string query = "SELECT * FROM Administrators ";
            return dbMan.ExecuteReader(query);
        }
        public int UpdateAdministratorsPhoneNum(int ssn, string ph)
        {
            string query = "UPDATE  Administrators SET PhoneNumber='" + ph + "'  WHERE SSN='" + ssn + "';";
            return dbMan.ExecuteNonQuery(query);
        }
        public int UpdateAdministratorsAddress(int ssn, string Add)
        {
            string query = "UPDATE  Administrators SET Address='" + Add + "'  WHERE SSN='" + ssn + "';";
            return dbMan.ExecuteNonQuery(query);
        }
        public int UpdateAdministratorSalary(int ssn, int salary)
        {
            string query = "UPDATE Administrators SET Salary = '" + salary + "' WHERE SSN = '" + ssn + "';";
            return dbMan.ExecuteNonQuery(query);
        }
        public int InsertSpecOcc(DateTime date,string type, int cap, int dur, int price, string hostid, string name1, string name2, string name3, string phone)
        {
            string query = "select Count(*) from SpecialOccasions;";
            int occId = (int)dbMan.ExecuteScalar(query);
            if (occId == 0)
            {
                occId++;
            }
            else
            {
                query = "select Max(OccasionID) from SpecialOccasions";
                occId = (int)dbMan.ExecuteScalar(query) + 1;
            }
            string query1 = "INSERT INTO SpecialOccasions Values('" + occId + "','" + date + "','" + type + "','" + cap + "','" + dur + "','" + price + "','" + hostid + "','" + name1 + "','" + name2 + "','" + name3 + "','" + phone + "');";
            return dbMan.ExecuteNonQuery(query1);
        }
        public int GetOccPrice(string name)
        {
            string query = "SELECT Price FROM Occasions WHERE OccasionName = '" + name + "'; ";
            return (int)dbMan.ExecuteScalar(query);
        }

        public int GetOccMaxCap(string name)
        {
            string query = "SELECT MaxHallCapacity FROM Occasions WHERE OccasionName = '" + name + "'; ";
            return (int)dbMan.ExecuteScalar(query);
        }

        public int ReqCleaning(int roomno)
        {
            string query = "UPdate Rooms set NeedCleaning='yes' Where RoomNumber='" + roomno + "';";
            return dbMan.ExecuteNonQuery(query);
        }

        public int insertServReq(int roomNo, string OrderType, string NID)
        {
            string query1 = "select Count(*) from RoomServiceRequest;";
            int result = (int)dbMan.ExecuteScalar(query1);
            if (result == 0)
            {
                result++;
            }
            else
            {
                query1 = "select Max(RequestID) from RoomServiceRequest";
                result = (int)dbMan.ExecuteScalar(query1) + 1;
            }
            string query = "insert into RoomServiceRequest VALUES ('" + result + "','" + roomNo + "','" + NID + "','Not Fullfilled','" + OrderType + "', 'Not Done' )";
            return dbMan.ExecuteNonQuery(query);
        }
        public int GetRoomNoFromID(int NID)
        {
            string query = "Select RoomNumber From Rooms,CurrentGuest Where Rooms.OccupiedBy=CurrentGuest.Reserves and CurrentGuest.NationalID='" + NID + "';";
            return (int)dbMan.ExecuteScalar(query);
        }
        public int ChageAdministrator(string fname, string minit, string lname, string gender, DateTime bdate, string nationality, string email, string phonenum, string address, string password, int ssn)
        {
            string query = "Update Administrators Set FName = '" + fname + "', Minit = '" + minit + "', LName = '" + lname + "', Gender = '" + gender + "', Nationality='"+nationality+"', BDate = '" + bdate + "', PhoneNumber = '" + phonenum + "', Address = '" + address + "',Email='"+email+"', Password = '" + address + "' where SSN = '" + ssn + "';";

            return dbMan.ExecuteNonQuery(query);
        }
        //*************************************************************************************************************************Ammar****************
        //public DataTable Get_Vacant_Rooms()
        //{
        //    string query = "select * from Rooms where State = 'Vacant';";
        //    return dbMan.ExecuteReader(query);
        //}

        //public int Get_Email_Password(string Email, string Password, string dept)
        //{
        //    string query = "select COUNT(SSN) from " + dept + " where Email = '" + Email + "' and Password='" + Password + "'";
        //    return (int)dbMan.ExecuteScalar(query);
        //}

        //public DataTable Get_Availabe_Rooms(DateTime Start, DateTime End)
        //{
        //    string query = "(select Rooms.RoomNumber, Rooms.Type, Rooms.RoomView from Rooms where State='Vacant' and RoomNumber not in (select Rooms.RoomNumber from Rooms, PendingReservation, Occupying where Occupying.RoomNumber = Rooms.RoomNumber and '" + Start + " '<PendingReservation.StartDate and ' " + Start + "' > PendingReservation.EndDate)) ";
        //    while (Start != End)
        //    {
        //        Start = Start.AddDays(1);
        //        query += "intersect (select Rooms.RoomNumber, Rooms.Type, Rooms.RoomView from Rooms where State='Vacant' and RoomNumber not in (select Rooms.RoomNumber from Rooms, PendingReservation, Occupying where Occupying.RoomNumber = Rooms.RoomNumber and '" + Start + " '<PendingReservation.StartDate and ' " + Start + "' > PendingReservation.EndDate)) ";
        //    }

        //    return dbMan.ExecuteReader(query);
        //}

        //public DataTable Get_Rooms(DateTime Start, DateTime End, string View, string Type)
        //{
        //    string query = "(select Rooms.RoomNumber from Rooms where State='Vacant' and RoomView = '" + View + "' and Type = '" + Type + "'and RoomNumber not in (select Rooms.RoomNumber from Rooms, PendingReservation, Occupying where Occupying.RoomNumber = Rooms.RoomNumber and '" + Start + "' <PendingReservation.StartDate and '" + Start + "' > PendingReservation.EndDate))";
        //    while (Start != End)
        //    {
        //        Start = Start.AddDays(1);
        //        query += "intersect (select Rooms.RoomNumber from Rooms where State='Vacant' and RoomView = '" + View + "' and Type = '" + Type + "'and RoomNumber not in (select Rooms.RoomNumber from Rooms, PendingReservation, Occupying where Occupying.RoomNumber = Rooms.RoomNumber and '" + Start + "' <PendingReservation.StartDate and '" + Start + "' > PendingReservation.EndDate))";
        //    }

        //    return dbMan.ExecuteReader(query);
        //}

        public int RequestReservation(string NID, string FName, string Minit, string LName, string Nationality, string gender, int age, string email, string phonenumber, string parent, string relation, int roomnum, DateTime stdate, DateTime edate, string state)
        {
            string query = "INSERT INTO ReservationRequest Values('" + NID + "','" + FName + "','" + Minit + "','" + LName + "','" + Nationality + "', '" + gender + "','" + age + "','" + email + "','" + phonenumber + "','" + parent + "','" + relation + "','" + roomnum + "','" + stdate + "','" + edate + "','" + state + "');";
            return dbMan.ExecuteNonQuery(query);
        }

        public int RequestNewReservation(string NID, string FName, string Minit, string LName, string Nationality, string gender, int age, string email, string phonenumber, string rel ,int roomnum, DateTime stdate, DateTime edate, string state)
        {
            string query = "INSERT INTO ReservationRequest Values('" + NID + "','" + FName + "','" + Minit + "','" + LName + "','" + Nationality + "','" + gender + "','" + age + "','" + email + "','" + phonenumber + "',null, '" + rel +  "', '" + roomnum + "','" + stdate + "','" + edate + "','" + state + "');";
            return dbMan.ExecuteNonQuery(query);
        }

        public DataTable SeeAllReservationRequests()
        {
            string query = "select * from ReservationRequest;";
            return dbMan.ExecuteReader(query);
        }

        public DataTable selectReservationRequestwithPNID(string parent)
        {
            string query = "select * from ReservationRequest where parent = " + parent + " or NationalID = " + parent + ";";
            return dbMan.ExecuteReader(query);
        }

        public int LatestPendingReservation()
        {
            string query = "select Count(*) from PendingReservation;";
            int result = (int)dbMan.ExecuteScalar(query);
            if (result == 0)
            {
                return 1;
            }
            else
            {
                query = "select Max(ConfirmationNumber) from PendingReservation";
                result = (int)dbMan.ExecuteScalar(query) + 1;
                return result;
            }
        }

        public int InsertANewPendingReservation(int conf, DateTime Start, DateTime End)
        {
            string query = "Insert into PendingReservation Values (" + conf + ",'" + Start + "','" + End + "');";
            return dbMan.ExecuteNonQuery(query);
        }

        public int RemoveFromReservationRequest(string parent)
        {
            string query = "delete from ReservationRequest where parent = " + parent + " or NationalID = " + parent + ";";
            return dbMan.ExecuteNonQuery(query);
        }

        public void RemoveFromReservationRequestAllNonAccepted(int RN, DateTime Start, DateTime End)
        {
            string query = "delete from ReservationRequest where RoomNumber = " + RN + " and '" + Start + "' >  StartDate and '" + Start + "' < EndDate;";
            dbMan.ExecuteNonQuery(query);
            while (Start != End)
            {
                Start = Start.AddDays(1);
                query = "delete from ReservationRequest where RoomNumber = " + RN + " and '" + Start + "' >  StartDate and '" + Start + "' < EndDate;";
                dbMan.ExecuteNonQuery(query);
            }
        }

        public int InsertIntoPendingGuest(string NI, string Fname, string Minit, string LName, string Nationality, int age, string Email, string PhoneN, string Maritalsts, string Gender, string State)
        {
            string query = "Insert Into PendingGuest Values (" + NI + ",'" + Fname + "','" + Minit + "','" + LName + "','" + Nationality + "'," + age + ",'" + Email + "'," + PhoneN + ",'" + Maritalsts + "','" + Gender + "','" + State + "'); ";
            return dbMan.ExecuteNonQuery(query);
        }
        public int InsertIntoPendingGuestSingle(string NI, string Fname, string Minit, string LName, string Nationality, int age, string Email, string PhoneN, string Gender, string State)
        {
            string query = "Insert Into PendingGuest Values (" + NI + ",'" + Fname + "','" + Minit + "','" + LName + "','" + Nationality + "'," + age + ",'" + Email + "'," + PhoneN + ",'Single','" + Gender + "','" + State + "'); ";
            return dbMan.ExecuteNonQuery(query);
        }

        public int InsertIntoReserving(int conf, string ND)
        {
            string query = "insert into Reserving Values (" + conf + "," + ND + ");";
            return dbMan.ExecuteNonQuery(query);
        }

        public DataTable GetRoomsToReserve(string parent)
        {
            string query = "select distinct RoomNumber from ReservationRequest where Parent = " + parent + " or NationalID = " + parent + ";";
            return dbMan.ExecuteReader(query);
        }

        public int InsertIntoOccupying(int RN, int conf)
        {
            string query = "insert into Occupying Values (" + RN + "," + conf + ");";
            return dbMan.ExecuteNonQuery(query);
        }

        public int CountExistingConfirmationNumbersInPending(int conf)
        {
            string query = "select count(*) from PendingReservation where ConfirmationNumber = " + conf + " ;";
            return (int)dbMan.ExecuteScalar(query);
        }
        public int CountExistingConfirmationNumbersInCurr(int conf)
        {
            string query = "select count(*) from CurrentReservation where ConfirmationNumber = " + conf + " ;";
            return (int)dbMan.ExecuteScalar(query);
        }
        public int CountExistingConfirmationNumbersInOld(int conf)
        {
            string query = "select count(*) from OlderReservation where ConfirmationNumber = " + conf + " ;";
            return (int)dbMan.ExecuteScalar(query);
        }

        public DataTable GetTodaysPendingReservations(DateTime ToDay)
        {
            string query = "select * from PendingReservation where StartDate <= '" + ToDay + "';";
            return dbMan.ExecuteReader(query);
        }

        public int InsertANewCurrentReservation(int conf, DateTime Start, DateTime End)
        {
            string query = "Insert into CurrentReservation Values (" + conf + ",'" + Start + "','" + End + "');";
            return dbMan.ExecuteNonQuery(query);
        }

        public DataTable GetTodayCurrentGuests(int conf)
        {
            string query = "select PendingGuest.NationalID,PendingGuest.FName,PendingGuest.Minit,PendingGuest.LName,PendingGuest.Nationality,PendingGuest.Age,PendingGuest.Email,PendingGuest.PhoneNumber,PendingGuest.MaritalStatus,PendingGuest.Gender,PendingGuest.State,Reserving.ConfirmationNumber from PendingGuest, Reserving where PendingGuest.NationalID = Reserving.NationalID and Reserving.ConfirmationNumber = " + conf + "";
            return dbMan.ExecuteReader(query);
        }

        public int InsertIntoCurrentGuest(string NI, string Fname, string Minit, string Lname, string Nationality, int Age, string Email, string Phone, string Marital_Status, int conf, string State, string Gender)
        {
            string query = "Insert Into CurrentGuest Values (" + NI + ",'" + Fname + "','" + Minit + "','" + Lname + "','" + Nationality + "'," + Age + ",'" + Email + "'," + Phone + ",'" + Marital_Status + "'," + conf + ",'" + State + "','" + Gender + "');";
            return dbMan.ExecuteNonQuery(query);
        }

        public int InsertIntoSingleCurrentGuest(string NI, string Fname, string Minit, string Lname, string Nationality, int Age, string Email, string Phone, string Marital_Status, int conf, string State, string Gender)
        {
            string query = "Insert Into CurrentGuest Values (" + NI + ",'" + Fname + "','" + Minit + "','" + Lname + "','" + Nationality + "'," + Age + ",'" + Email + "'," + Phone + ",'" + Marital_Status + "'," + conf + ",'" + State + "','" + Gender + "');";
            return dbMan.ExecuteNonQuery(query);
        }

        public DataTable FindReservedRoomsToDay(int conf)
        {
            string query = "select Occupying.RoomNumber from Occupying where ConfirmationNo = " + conf + ";";
            return dbMan.ExecuteReader(query);
        }

        public int UpdateRoomsDataToOccupy(int input1, int input2)
        {
            string query = "Update Rooms Set Rooms.State = 'Occupied', Rooms.OccupiedBy = " + input1 + " where Rooms.RoomNumber = " + input2 + ";";
            return dbMan.ExecuteNonQuery(query);
        }

        public int RemoveFromPendingGuest(string NI)
        {
            string query = "delete from PendingGuest where NationalID = " + NI + ";";
            return dbMan.ExecuteNonQuery(query);
        }

        public void removeAllOldPending(int conf)
        {

            string query = "delete from Occupying where Occupying.ConfirmationNo = " + conf + ";";
            dbMan.ExecuteNonQuery(query);

            query = "delete from Reserving where Reserving.ConfirmationNumber = " + conf + ";";
            dbMan.ExecuteNonQuery(query);

            query = "delete from PendingReservation where PendingReservation.ConfirmationNumber = " + conf + ";";
            dbMan.ExecuteNonQuery(query);
        }

        public DataTable GetFinishedCurrReservations(DateTime ToDay)
        {
            string query = "select * from CurrentReservation where EndDate = '" + ToDay + "';";
            return dbMan.ExecuteReader(query);
        }

        public int InsertANewOlderReservation(int conf, DateTime Start, DateTime End)
        {
            string query = "insert into OlderReservation (ConfirmationNumber, StartDate, EndDate) Values (" + conf + ",'" + Start + "','" + End + "');";
            return dbMan.ExecuteNonQuery(query);
        }

        public DataTable GetNewOlderGuest(int conf)
        {
            string query = "select * from CurrentGuest where CurrentGuest.Reserves = " + conf + ";";
            return dbMan.ExecuteReader(query);
        }

        public int InsertIntoOlderGuest(string NI, string Fname, string Minit, string Lname, string Nationaity, int Age, string Email, string Phone, string maritalstatus, string Gender)
        {
            string query = "insert into OlderGuest Values(" + NI + ",'" + Fname + "','" + Minit + "','" + Lname + "','" + Nationaity + "'," + Age + ",'" + Email + "'," + Phone + ",'" + maritalstatus + "','" + Gender + "')";
            return dbMan.ExecuteNonQuery(query);
        }

        public int InsertIntoSingleOlderGuest(string NI, string Fname, string Minit, string Lname, string Nationaity, int Age, string Email, string Phone, string maritalstatus, string Gender)
        {
            string query = "insert into OlderGuest Values(" + NI + ",'" + Fname + "','" + Minit + "','" + Lname + "','" + Nationaity + "'," + Age + ",'" + Email + "'," + Phone + ",'" + maritalstatus + "','" + Gender + "')";
            return dbMan.ExecuteNonQuery(query);
        }

        public int DeleteFromCurrRReservation(int conf)
        {
            string query = "delete from CurrentGuest where Reserves = " + conf + "";
            return dbMan.ExecuteNonQuery(query);
        }

        public int InsertIntoReserved(string Ni, int conf)
        {
            string query = "insert into Reserved Values(" + conf + "," + Ni + ");";
            return dbMan.ExecuteNonQuery(query);
        }

        public int InsertIntoOccupied(int conf, int RoomNumber)
        {
            string query = "insert into Occupied Values(" + RoomNumber + "," + conf + ");";
            return dbMan.ExecuteNonQuery(query);
        }

        public DataTable GetcurrReservedRooms(int conf)
        {
            string query = "select Rooms.RoomNumber from Rooms where  Rooms.OccupiedBy = " + conf + " ;";
            return dbMan.ExecuteReader(query);
        }

        public int UpdateRoomsStatusAfterDeparture(int conf)
        {
            string query = "Update Rooms Set State = 'Vacant', OccupiedBy = null where OccupiedBy = " + conf + " ;";
            return dbMan.ExecuteNonQuery(query);
        }

        public int RemoveOldCurrentRes(int conf)
        {
            string query = "delete from CurrentReservation where ConfirmationNumber = " + conf + ";";
            return dbMan.ExecuteNonQuery(query);
        }

        public int insertNewReserved(int conf, int NI)
        {
            string query = "insert into reserved Values (" + conf + "," + NI + ");";
            return dbMan.ExecuteNonQuery(query);
        }

        public DataTable ViewAllCUrrentGuest()
        {
            string query = "select * from CurrentGuest;";
            return dbMan.ExecuteReader(query);
        }

        public DataTable ViewAllPendingGuests()
        {
            string query = "select * from PendingGuest";
            return dbMan.ExecuteReader(query);
        }

        public int UpdateStateOfCurrGuest(string state, int NI)
        {
            string query = "Update CurrentGuest set State = '" + state + "' where CurrentGuest.NationalID = " + NI + ";";
            return dbMan.ExecuteNonQuery(query);
        }

        public int UpdateStateOfPendingGuest(string state, int NI)
        {
            string query = "Update PendingGuest set State = '" + state + "' where PendingGuest.NationalID = " + NI + ";";
            return dbMan.ExecuteNonQuery(query);
        }

        public int AddPayment(int PI, string Method, int Credit, string service, int NI)
        {
            string query = "insert into Payments (PaymentID,Method,Credit_Card_Number,Service,PaidBy) Values (" + PI + ",'" + Method + "'," + Credit + ");";
            return dbMan.ExecuteNonQuery(query);
        }

        public DataTable GetPricesOfRooms(int RoomNumber)
        {
            string query = "select Rooms.PricePerDay from Rooms where Rooms.RoomNumber = " + RoomNumber + " ;";
            return dbMan.ExecuteReader(query);
        }

        public DataTable GetPriveOfSer(string ServiceName)
        {
            string query = "select Price from Services where ServiceName = '" + ServiceName + " ';";
            return dbMan.ExecuteReader(query);
        }

        public DataTable GetRoomsToResrve(string NI)
        {
            string query = "select Rooms.RoomNumber from Rooms, CurrentReservation, CurrentGuest where Rooms.OccupiedBy = CurrentReservation.ConfirmationNumber and CurrentGuest.Reserves = CurrentReservation.ConfirmationNumber and CurrentGuest.NationalID = " + NI + " ;";
            return dbMan.ExecuteReader(query);
        }

        public int InsertIntoPayments(int PI, string Method, string CreditCard, string Service, int Price, string NI)
        {
            string query = "insert into Payments Values(" + PI + ",'" + Method + "','" + CreditCard + "','" + Service + "'," + Price + "," + NI + ");";
            return dbMan.ExecuteNonQuery(query);
        }

        public int ExistingPaymentID(int PI)
        {
            string query = "select Count(*) from Payments where PaymentID =" + PI + ";";
            return (int)dbMan.ExecuteScalar(query);
        }

        public DataTable ViewSpecificReservationRequests(string NI, string Fname, string Minit, string Lname, string Email)
        {
            string query = "select* from ReservationRequest where ReservationRequest.NationalID =" + NI + " and ReservationRequest.FName = '" + Fname + "' and ReservationRequest.Minit = '" + Minit + "' and ReservationRequest.LName = '" + Lname + "' and ReservationRequest.Email = '" + Email + "'; ";
            return dbMan.ExecuteReader(query);
        }

        public int UpdateRmInReservationRequest(string NI, string Fname, string Minit, string Lname, string Email, int RM)
        {
            string query = "update ReservationRequest Set RoomNumber = " + RM + " where ReservationRequest.NationalID =" + NI + " and ReservationRequest.FName = '" + Fname + "' and ReservationRequest.Minit = '" + Minit + "' and ReservationRequest.LName = '" + Lname + "' and ReservationRequest.Email = '" + Email + "'; ";
            return dbMan.ExecuteNonQuery(query);
        }

        public int UpdateContactInfroInReservationRequest(string NI, string Fname, string Minit, string Lname, string Email, string newEMail, string phoneNumber)
        {
            string query = "update ReservationRequest Set Email = '" + newEMail + "' , PhoneNumber = " + phoneNumber + "where  ReservationRequest.NationalID =" + NI + " and ReservationRequest.FName = '" + Fname + "' and ReservationRequest.Minit = '" + Minit + "' and ReservationRequest.LName = '" + Lname + "' and ReservationRequest.Email = '" + Email + "';";
            return dbMan.ExecuteNonQuery(query);
        }

        public int RemoveGuestFromReservationRequest(string NI, string Fname, string Minit, string Lname, string Email)
        {
            string query = "delete from ReservationRequest where ReservationRequest.NationalID =" + NI + " and ReservationRequest.FName = '" + Fname + "' and ReservationRequest.Minit = '" + Minit + "' and ReservationRequest.LName = '" + Lname + "' and ReservationRequest.Email = '" + Email + "';";
            return dbMan.ExecuteNonQuery(query);
        }

        public int GetSumPriceServiceDoneByGuest(string NI)
        {
            string query = "select sum(Price) from Payments where PaidBy =" + NI + "  and Service <> 'Reservation';";
            return (int)dbMan.ExecuteScalar(query);
        }

        public int GetCountPriceServiceDoneByGuest(string NI)
        {
            string query = "select count(Price) from Payments where PaidBy = " + NI + " and Service <> 'Reservation';";
            return (int)dbMan.ExecuteScalar(query);
        }

        public int GetPriceOfReservation(string NI)
        {
            string query = "select sum(Price) from Payments where PaidBy = " + NI + " and Service = 'Reservation';";
            return (int)dbMan.ExecuteScalar(query);
        }

        public DataTable GetDatesOfCurrReservation(int conf)
        {
            string query = "select CurrentReservation.StartDate, CurrentReservation.EndDate from CurrentReservation where CurrentReservation.ConfirmationNumber = " + conf + ";";
            return dbMan.ExecuteReader(query);
        }

        public int GetSumPricesOfRoomsReserved(int conf)
        {
            string query = "select sum(Rooms.PricePerDay) from Rooms where Rooms.OccupiedBy = " + conf + ";";
            return (int)dbMan.ExecuteScalar(query);
        }

        public int AddBillToOlderReservation(int Bill, int conf)
        {
            string query = "Update OlderReservation set Bill = " + Bill + " where OlderReservation.ConfirmationNumber = " + conf + " ;";
            return dbMan.ExecuteNonQuery(query);
        }

        public int DeletePaymentsOfGuests(string NI)
        {
            string query = "delete Payments where Payments.PaidBy = " + NI + " ;";
            return dbMan.ExecuteNonQuery(query);
        }


        /************** Made By Ammar ******************/
        //********************************income and outcome*******************
        public int GetIncome(int month)
        {
            string query = "Select sum(Bill) from OlderReservation where month(EndDate)='" + month + "';";
            object Income = dbMan.ExecuteScalar(query);
            if (Income == null)
            {
                return 0;
            }
            return (int)dbMan.ExecuteScalar(query);
}
        public int GetTotalStaffSalary()
        {
            string query = "select sum (Salary) from StaffMember";
            if (query == null)
            {
                return 0;
            }
            return (int)dbMan.ExecuteScalar(query);
}
        public int GetTotalAdministratorsSalary()
        {
            string query = "select sum (Salary) from Administrators";
            if (query == null)
            {
                return 0;
            }
            return (int)dbMan.ExecuteScalar(query);
}
        //*********************************************************************Mokhtar******************************
        public int GetNumberCleaning()
        {
            string query = "SELECT COUNT(*) FROM Rooms WHERE NeedCleaning='yes';";
            return (int)dbMan.ExecuteScalar(query);
        }
        public DataTable GetCleaningRooms()
        {
            string query = "SELECT RoomNumber FROM Rooms WHERE NeedCleaning='yes';";
            return dbMan.ExecuteReader(query);
        }
        public int DoneByChef(int ReqNum)
        {
            string query = "UPDATE RoomServiceRequest SET DoneByChef='Yes' WHERE RequestID='" + ReqNum + "' and RoomServiceState='Not Fulfilled' and DoneByChef='No';";
            return dbMan.ExecuteNonQuery(query);
        }
        public int UpdateRequestState(int ReqNum)
        {
            string query = "UPDATE RoomServiceRequest SET RoomServiceState='Fulfilled' WHERE RequestID='" + ReqNum + "' and DoneByChef='Yes' and RoomServiceState='Not Fulfilled';";
            return dbMan.ExecuteNonQuery(query);
        }
        public DataTable ViewRoomServiceReq()
        {
            string query = "Select * from RoomServiceRequest";
            return dbMan.ExecuteReader(query);
        }
        public int GiveFeedBack(string NID, string content)
        {
            string query = "exec spGiveFeedback @nid='" + NID + "', @feedback='" + content + "';";
            return dbMan.ExecuteNonQuery(query);
        }
        public int UpdateFeedback(string NID, string content)
        {
            string query = "UPDATE Feedback SET Feedback='" + content + "' WHERE NationalID='" + NID + "';";
            return dbMan.ExecuteNonQuery(query);
        }
        public int Complain(string content, string NID)
        {
            string qry = "select Count(*) from Complaints;";
            int result = (int)dbMan.ExecuteScalar(qry);
            if (result == 0)
            {
                result++;
            }
            else
            {
                qry = "select Max(ComplaintID) from Complaints";
                result = (int)dbMan.ExecuteScalar(qry) + 1;
            }
            string d = "SELECT DAY(GetDate());";
            int day = (int)dbMan.ExecuteScalar(d);
            string m = "SELECT MONTH(GetDate());";
            int month = (int)dbMan.ExecuteScalar(m);
            string y = "SELECT YEAR(GetDate());";
            int year = (int)dbMan.ExecuteScalar(y);

            string query = "exec spComplaint @cid='" + result + "' , @content='" + content + "' , @date='" + year + "-" + month + "-" + day + "' , @GuestID='" + NID + "';";
            return dbMan.ExecuteNonQuery(query);

        }

        public int GetExistingCurrentGuest(string NI)
        {
            string query = "select count(*) from CurrentGuest where NationalID = " + NI + " ;";
            return (int)dbMan.ExecuteScalar(query);
        }

        public DataTable GetDepartmentOfStaff(int ID, int password)
        {
            string query = "select Department from StaffMember where  SSN = " + ID + " and Password = '" + password + "';";
            return dbMan.ExecuteReader(query);
        }

        public int GetCountOfAdmins(int ID, int password)
        {
            string query = "select count(*) from Administrators where SSN = " + ID + " and Password = " + password + " ;";
            return (int)dbMan.ExecuteScalar(query);
        }

        public int GetCountOfStaffMembers()
        {
            string query = "exec spStaffNumber";
            return (int)dbMan.ExecuteScalar(query);
        }

        public int GetCountOfAdministrators()
        {
            string query = "exec spAdminNumber";
            return (int)dbMan.ExecuteScalar(query);
        }

        public int GetExistingBill(int month)
        {
            string query = "Select Count(Bill) from OlderReservation where month(EndDate)='" + month + "';";
            return (int)dbMan.ExecuteScalar(query);
        }

        public int GetAvgSalaryOtfMembers()
        {
            string query = "exec spAvgSalaryStaff";
            return (int)dbMan.ExecuteScalar(query);
        }

        public int GetAvgSalaryOtfAdmins()
        {
            string query = "exec spAvgSalaryAdmin";
            return (int)dbMan.ExecuteScalar(query);
        }

        public int GetNumOfComplaints()
        {
            string query = "exec spNumComplaints";
            return (int)dbMan.ExecuteScalar(query);
        }

        public int GetNumOfDeps()
        {
            string query = "exec spDepNum";
            return (int)dbMan.ExecuteScalar(query);
        }

        //****************last updated***********
        public DataTable GetRoomsView()
        {
            string query = "select distinct RoomView from Rooms";
            return dbMan.ExecuteReader(query);
        }
        public int GetNumRoomFromView(string View)
        {
            string query = "exec spRoomView @view = '" + View + "';";
            return (int)dbMan.ExecuteScalar(query);
        }
        public DataTable GetMostService()
        {
            string query = "SELECT OrderType,count(*) as 'Number of Occurences' FROM RoomServiceRequest  GROUP BY OrderType  ORDER BY COUNT(*) DESC";

            return dbMan.ExecuteReader(query);
        }
        public DataTable GetMostRoom()
        {
            string query = "   SELECT RoomNumber,count(*) as 'Number of Occurences'    FROM Occupied    GROUP BY RoomNumber    ORDER BY COUNT(*) DESC";

            return dbMan.ExecuteReader(query);
        }
        public DataTable GetMostFeedback()
        {
            string query = "SELECT FeedBack,count(*) as 'Number of Occurences'    FROM FeedBack     GROUP BY Feedback    ORDER BY COUNT(*) DESC ";

            return dbMan.ExecuteReader(query);
        }
        public DataTable GetMostOccasion()
        {
            string query = "	SELECT Type, count(*) as 'Number of Occurences'    FROM SpecialOccasions    GROUP BY Type    ORDER BY COUNT(*) DESC  ";

            return dbMan.ExecuteReader(query);
        }

        public DataTable GetMainAdmin()
        {
            string query = "select SSN from Administrators where Mgr_SSN is null";
            return dbMan.ExecuteReader(query);
        }

        public int GetAlreadyExistingadmin(int ssn, string email, string pass)
        {
            string query = "select count(*) from Administrators where SSN = " + ssn + " or Email = '" + email + "' or Password = '" + pass + "' ;";
            return (int)dbMan.ExecuteScalar(query);
        }

        public int GetAlreadyExistingstaff(int ssn, string email, string pass)
        {
            string query = "select count(*) from StaffMember where SSN = " + ssn + " or Email = '" + email + "' or Password ='" + pass + "' ;";
            return (int)dbMan.ExecuteScalar(query);
        }

        public int DissaproveReservationsRequest(string NI)
        {
            string query = "delete from ReservationRequest where NationalID = " + NI +" or Parent =  " + NI + ";";
            return dbMan.ExecuteNonQuery(query);
        }

    }
}