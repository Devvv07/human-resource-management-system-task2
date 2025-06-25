# Human Resource management system database

create database hrms;
use hrms;

# Employees Table 

create table employees
(emp_id int primary key auto_increment,
first_name varchar(30),
last_name varchar(30),
email varchar(50),
phone_no bigint unique,
hire_date date,
dob date,
salary int,
gender varchar(6),
job_id varchar(8),
dept_id varchar(8),
foreign key(job_id) references job(job_id),
foreign key(dept_id) references department(dept_id));


# Department Table 

create table department(
dept_id varchar(8) primary key,
dept_name varchar(50),
location varchar(20),
manager_id varchar(8));


# Leave Request Table

CREATE TABLE leave_request (
req_id INT PRIMARY KEY,
emp_id INT,
dept_id VARCHAR(50),
start_date DATE,
end_date DATE,
location VARCHAR(50),
status VARCHAR(20) NOT NULL,
reason varchar(30),
CONSTRAINT chk_status CHECK (status IN ('Approve','Reject')),
FOREIGN KEY (emp_id) REFERENCES employees(emp_id),
FOREIGN KEY (dept_id) REFERENCES department(dept_id));


# Manager Table
 
 create table manager(
 manager_id varchar(8) primary key,
 manager_name varchar(20),
 join_date date,
 location varchar(20),
 dob date,
 gender varchar(20),
 dept_id varchar(15),
 salary bigint,
 foreign key(dept_id) references department(dept_id));
 
 
 # Job details
 
 create table job(
 job_id varchar(8) primary key,
 job_title varchar(60),
 dept_id varchar(8),
 department_name varchar(20),
 min_salary bigint,
 max_salary bigint);
 
  
 commit;
 
 #### task 2 ####
 
 #add a column country using default constraint ---
 
 alter table department add country varchar(7) default "india";
 
 #adding values into employees table  --
 
 INSERT INTO employees(first_name,last_name,email,phone_no,hire_date,dob,salary,gender,job_id,dept_id)VALUES
("Amit","Sharma","amit.sharma1@mail.com",9012345601,STR_TO_DATE("12-08-2012","%d-%m-%Y"),STR_TO_DATE("02-12-1988","%d-%m-%Y"),220000,"male","J001","D001"),
("Sonia","Sharma","sonia.sharma@mail.com",9012345602,STR_TO_DATE("22-10-2011","%d-%m-%Y"),STR_TO_DATE("13-11-1994","%d-%m-%Y"),180000,"female","J002","D001"),
("Aarav","Patel","aarav.patel@mail.com",9012345603,STR_TO_DATE("14-06-2014","%d-%m-%Y"),STR_TO_DATE("22-06-1985","%d-%m-%Y"),250000,"male","J005","D003"),
("Neha","Patel","neha.patel@mail.com",9012345604,STR_TO_DATE("19-01-2009","%d-%m-%Y"),STR_TO_DATE("16-07-1981","%d-%m-%Y"),200000,"female","J003","D005"),
("Vikram","Khan","vikram.khan@mail.com",9012345605,STR_TO_DATE("13-08-2011","%d-%m-%Y"),STR_TO_DATE("18-03-1980","%d-%m-%Y"),270000,"male","J016","D008"),
("Rhea","Khan","rhea.khan@mail.com",9012345606,STR_TO_DATE("10-09-2015","%d-%m-%Y"),STR_TO_DATE("19-10-1990","%d-%m-%Y"),230000,"female","J008","D004"),
("Kabir","Mehta","kabir.mehta@mail.com",9012345607,STR_TO_DATE("26-03-2009","%d-%m-%Y"),STR_TO_DATE("27-12-1981","%d-%m-%Y"),210000,"male","J017","D009"),
("Ishita","Mehta","ishita.mehta@mail.com",9012345608,STR_TO_DATE("12-11-2010","%d-%m-%Y"),STR_TO_DATE("28-10-1998","%d-%m-%Y"),190000,"female","J014","D007"),
("Raj","Singh","raj.singh@mail.com",9012345609,STR_TO_DATE("21-02-2020","%d-%m-%Y"),STR_TO_DATE("10-05-1990","%d-%m-%Y"),150000,"male","J002","D001"),
("Meera","Singh","meera.singh@mail.com",9012345610,STR_TO_DATE("15-07-2018","%d-%m-%Y"),STR_TO_DATE("15-07-1994","%d-%m-%Y"),78000,"female","J010","D004"),
("Priya","Reddy","priya.reddy@mail.com",9012345611,STR_TO_DATE("03-06-2015","%d-%m-%Y"),STR_TO_DATE("15-11-1988","%d-%m-%Y"),85000,"female","J004","D002"),
("Aditya","Reddy","aditya.reddy@mail.com",9012345612,STR_TO_DATE("28-03-2012","%d-%m-%Y"),STR_TO_DATE("22-09-1985","%d-%m-%Y"),93000,"male","J006","D003"),
("Sakshi","Verma","sakshi.verma@mail.com",9012345613,STR_TO_DATE("11-09-2017","%d-%m-%Y"),STR_TO_DATE("05-07-1982","%d-%m-%Y"),115000,"female","J009","D004"),
("Nikhil","Verma","nikhil.verma@mail.com",9012345614,STR_TO_DATE("19-04-2015","%d-%m-%Y"),STR_TO_DATE("30-12-1991","%d-%m-%Y"),130000,"male","J010","D004"),
("Tanya","Gupta","tanya.gupta@mail.com",9012345615,STR_TO_DATE("11-08-2017","%d-%m-%Y"),STR_TO_DATE("18-06-1993","%d-%m-%Y"),111000,"female","J005","D003"),
("Yash","Gupta","yash.gupta@mail.com",9012345616,STR_TO_DATE("14-11-2012","%d-%m-%Y"),STR_TO_DATE("07-02-1986","%d-%m-%Y"),160000,"male","J007","D003"),
("Sneha","Chopra","sneha.chopra@mail.com",9012345617,STR_TO_DATE("20-02-2020","%d-%m-%Y"),STR_TO_DATE("02-10-1990","%d-%m-%Y"),99000,"female","J011","D005"),
("Diya","Chopra","diya.chopra@mail.com",9012345618,STR_TO_DATE("01-11-2019","%d-%m-%Y"),STR_TO_DATE("01-11-1992","%d-%m-%Y"),93000,"female","J011","D005"),
("Anil","Chopra","anil.chopra@mail.com",9012345619,STR_TO_DATE("10-09-2024","%d-%m-%Y"),STR_TO_DATE("13-08-1995","%d-%m-%Y"),76000,"male","J006","D003"),
("Neeta","Kumar","neeta.kumar@mail.com",9012345620,STR_TO_DATE("05-05-2016","%d-%m-%Y"),STR_TO_DATE("20-05-1992","%d-%m-%Y"),88000,"female","J002","D001"),
("Aakash","Kumar","aakash.kumar@mail.com",9012345621,STR_TO_DATE("01-01-2020","%d-%m-%Y"),STR_TO_DATE("01-02-1993","%d-%m-%Y"),95000,"male","J013","D006"),
("Vivaan","Sharma","vivaan.sharma@mail.com",9012345622,STR_TO_DATE("12-12-2021","%d-%m-%Y"),STR_TO_DATE("12-12-1993","%d-%m-%Y"),99000,"male","J002","D001"),
("Vikas","Shah","vikas.shah@mail.com",9012345623,STR_TO_DATE("20-03-2014","%d-%m-%Y"),STR_TO_DATE("20-03-1987","%d-%m-%Y"),105000,"male","J014","D007"),
("Rina","Shah","rina.shah@mail.com",9012345624,STR_TO_DATE("22-08-2019","%d-%m-%Y"),STR_TO_DATE("22-08-1991","%d-%m-%Y"),83000,"female","J009","D004"),
("Karan","Malhotra","karan.malhotra@mail.com",9012345625,STR_TO_DATE("10-10-2021","%d-%m-%Y"),STR_TO_DATE("10-10-1993","%d-%m-%Y"),95000,"male","J012","D006"),
("Pooja","Malhotra","pooja.malhotra@mail.com",9012345626,STR_TO_DATE("12-12-2018","%d-%m-%Y"),STR_TO_DATE("12-12-1992","%d-%m-%Y"),89000,"female","J015","D008"),
("Ananya","Verma","ananya.verma@mail.com",9012345627,STR_TO_DATE("05-01-2020","%d-%m-%Y"),STR_TO_DATE("05-11-1992","%d-%m-%Y"),96000,"female","J003","D005"),
("Rohan","Gupta","rohan.gupta@mail.com",9012345628,STR_TO_DATE("10-03-2019","%d-%m-%Y"),STR_TO_DATE("10-09-1990","%d-%m-%Y"),102000,"male","J005","D003");


#adding values into department ---
 
insert into department values("D001","gemline","mumbai","M0011");
insert into department values("D002","star","banglore","M0022");
insert into department values("D003","starlink","hyderabad","M0033");
insert into department values("D004","golden","mumbai","M0055");
insert into department values("D005","silver","mumbai","M0055");
insert into department values("D006","rock","delhi","M0077");
insert into department values("D007","stone","delhi","M0099");
insert into department values("D008","diamond","hyderabad","M0033");
insert into department values("D009","crown","banglore","M0088");
insert into department values("D010","red","hyderabad","M0066");
insert into department values("D011","rose","hyderabad","M0066");
insert into department values("D012","rose","delhi","M0077");


#adding values into leave request of employees --
 
 INSERT INTO leave_request(req_id, emp_id, dept_id, start_date, end_date, location, status, reason)
VALUES(1,  37, "D001", STR_TO_DATE("05-01-2016","%d-%m-%Y"), STR_TO_DATE("07-01-2016","%d-%m-%Y"), "mumbai",  "Approve", "Personal"),
(2,  47, "D001", STR_TO_DATE("10-02-2017","%d-%m-%Y"), STR_TO_DATE("11-02-2017","%d-%m-%Y"), "mumbai",  "Reject",  "Workload"),
(3,  53, "D003", STR_TO_DATE("15-03-2018","%d-%m-%Y"), STR_TO_DATE("20-03-2018","%d-%m-%Y"), "hyderabad","Approve","Vacation"),
(4,  62, "D005", STR_TO_DATE("01-04-2019","%d-%m-%Y"), STR_TO_DATE("03-04-2019","%d-%m-%Y"), "mumbai",  "Reject",  "Deadline"),
(5,  55, "D008", STR_TO_DATE("10-05-2020","%d-%m-%Y"), STR_TO_DATE("12-05-2020","%d-%m-%Y"), "hyderabad","Approve","Medical"),
(6,  56, "D004", STR_TO_DATE("20-05-2021","%d-%m-%Y"), STR_TO_DATE("22-05-2021","%d-%m-%Y"), "mumbai",  "Reject",  "No leave"),
(7,  40, "D009", STR_TO_DATE("05-06-2022","%d-%m-%Y"), STR_TO_DATE("07-06-2022","%d-%m-%Y"), "banglore","Approve","Wedding"),
(8,  48, "D007", STR_TO_DATE("15-06-2023","%d-%m-%Y"), STR_TO_DATE("17-06-2023","%d-%m-%Y"), "delhi",   "Reject",  "Staff shortage"),
(9,  39, "D001", STR_TO_DATE("01-07-2015","%d-%m-%Y"), STR_TO_DATE("05-07-2015","%d-%m-%Y"), "mumbai",  "Approve","Conference"),
(10, 50, "D004", STR_TO_DATE("10-07-2016","%d-%m-%Y"), STR_TO_DATE("12-07-2016","%d-%m-%Y"), "mumbai", "Reject",  "Urgent work"),
(11, 61, "D002", STR_TO_DATE("20-08-2017","%d-%m-%Y"), STR_TO_DATE("22-08-2017","%d-%m-%Y"), "banglore","Approve","Training"),
(12, 42, "D003", STR_TO_DATE("15-09-2018","%d-%m-%Y"), STR_TO_DATE("17-09-2018","%d-%m-%Y"), "hyderabad","Reject","Busy"),
(13, 53, "D004", STR_TO_DATE("05-10-2019","%d-%m-%Y"), STR_TO_DATE("07-10-2019","%d-%m-%Y"), "mumbai", "Approve","Health"),
(14, 44, "D004", STR_TO_DATE("15-11-2020","%d-%m-%Y"), STR_TO_DATE("17-11-2020","%d-%m-%Y"), "mumbai", "Reject",  "Family"),
(15, 58, "D008", STR_TO_DATE("01-12-2021","%d-%m-%Y"), STR_TO_DATE("03-12-2021","%d-%m-%Y"), "hyderabad","Approve","Religious"),
(16, 49, "D003", STR_TO_DATE("10-12-2022","%d-%m-%Y"), STR_TO_DATE("12-12-2022","%d-%m-%Y"), "hyderabad","Reject","Upgrade"),
(17, 50, "D001", STR_TO_DATE("05-01-2023","%d-%m-%Y"), STR_TO_DATE("07-01-2023","%d-%m-%Y"), "mumbai", "Approve","Personal"),
(18, 37, "D001", STR_TO_DATE("10-02-2024","%d-%m-%Y"), STR_TO_DATE("12-02-2024","%d-%m-%Y"), "mumbai", "Reject",  "Collide"),
(19, 39, "D005", STR_TO_DATE("15-03-2016","%d-%m-%Y"), STR_TO_DATE("17-03-2016","%d-%m-%Y"), "mumbai", "Approve","Workshop"),
(20, 40, "D006", STR_TO_DATE("01-04-2017","%d-%m-%Y"), STR_TO_DATE("03-04-2017","%d-%m-%Y"), "delhi",  "Reject",  "Training"),
(21, 52, "D006", STR_TO_DATE("10-05-2018","%d-%m-%Y"), STR_TO_DATE("12-05-2018","%d-%m-%Y"), "delhi",  "Approve","Conference"),
(22, 59, "D007", STR_TO_DATE("20-06-2019","%d-%m-%Y"), STR_TO_DATE("22-06-2019","%d-%m-%Y"), "delhi",  "Reject",  "Pending"),
(23, 60, "D010", STR_TO_DATE("05-07-2020","%d-%m-%Y"), STR_TO_DATE("07-07-2020","%d-%m-%Y"), "hyderabad","Approve","Research"),
(24, 54, "D010", STR_TO_DATE("15-08-2021","%d-%m-%Y"), STR_TO_DATE("17-08-2021","%d-%m-%Y"), "hyderabad","Reject",  "Project"),
(25, 56, "D008", STR_TO_DATE("01-09-2022","%d-%m-%Y"), STR_TO_DATE("03-09-2022","%d-%m-%Y"), "hyderabad","Approve","Festival"),
(26, 58, "D009", STR_TO_DATE("10-10-2023","%d-%m-%Y"), STR_TO_DATE("12-10-2023","%d-%m-%Y"), "banglore","Reject",  "Budget"),
(27, 49, "D002", STR_TO_DATE("20-11-2015","%d-%m-%Y"), STR_TO_DATE("22-11-2015","%d-%m-%Y"), "banglore","Approve","Maintenance"),
(28, 42, "D005", STR_TO_DATE("05-12-2016","%d-%m-%Y"), STR_TO_DATE("07-12-2016","%d-%m-%Y"), "mumbai",  "Reject",  "Short notice"),
(29, 44, "D007", STR_TO_DATE("15-01-2017","%d-%m-%Y"), STR_TO_DATE("17-01-2017","%d-%m-%Y"), "delhi",  "Approve","Training"),
(30, 48, "D009", STR_TO_DATE("25-02-2018","%d-%m-%Y"), STR_TO_DATE("27-02-2018","%d-%m-%Y"), "banglore","Reject",  "Client");


#adding values into manager table 

 insert into manager(manager_id,manager_name,join_date,location,dob,gender,dept_id,salary)  
 values("M0011","rakesh Gehlot",STR_TO_DATE('12-08-2012', '%d-%m-%Y'),"mumbai",STR_TO_DATE('02-12-1988', '%d-%m-%Y'),"male","D001",231000),
 ("M0022","priya desai",STR_TO_DATE('22-10-2011', '%d-%m-%Y'),"banglore",STR_TO_DATE('13-11-1994', '%d-%m-%Y'),"female","D002",190000),
 ("M0033","suresh goswami",STR_TO_DATE('14-06-2014', '%d-%m-%Y'),"hyderabad",STR_TO_DATE('22-06-1985', '%d-%m-%Y'),"male","D003",321000),
 ("M0055","ankit gaekwad",STR_TO_DATE('19-01-2009', '%d-%m-%Y'),"mumbai",STR_TO_DATE('16-07-1981', '%d-%m-%Y'),"male","D004",430000),
 ("M0066","reshma sekhawat",STR_TO_DATE('13-08-2011', '%d-%m-%Y'),"hyderabad",STR_TO_DATE('18-03-1980', '%d-%m-%Y'),"female","D010",370000),
 ("M0077","meena desai",STR_TO_DATE('10-09-2015', '%d-%m-%Y'),"delhi",STR_TO_DATE('19-10-1990', '%d-%m-%Y'),"female","D006",255000),
 ("M0088","shiv shinde",STR_TO_DATE('26-03-2009', '%d-%m-%Y'),"banglore",STR_TO_DATE('27-12-1981', '%d-%m-%Y'),"male","D009",287000),
("M0099","raj sekhawat",STR_TO_DATE('12-11-2010', '%d-%m-%Y'),"delhi",STR_TO_DATE('28-10-1998', '%d-%m-%Y'),"male","D007",300000),
("M123","vyum kulkarni",STR_TO_DATE('22-11-2019', '%d-%m-%Y'),"delhi",STR_TO_DATE('28-10-1999', '%d-%m-%Y'),"male","D007",343000);


#adding values into job table  ---

INSERT INTO job(job_id, job_title, dept_id, department_name, min_salary, max_salary)
VALUES("J001", "Sales Manager","D001", "gemline",60000, 120000),
("J002", "Sales Representative","D001", "gemline",40000,80000),
("J003", "Marketing Lead","D002", "star",65000, 130000),
("J004", "Social Media Specialist","D002", "star",35000,70000),
("J005", "Software Engineer","D003", "starlink",70000, 150000),
("J006", "Data Analyst","D003", "starlink",  50000,90000),
("J007", "DevOps Engineer","D003", "starlink",80000, 160000),
("J008", "Finance Manager","D004", "golden",75000, 140000),
("J009", "Accountant", "D004", "golden",45000,  85000),
("J010", "HR Coordinator", "D005", "silver",40000,  80000),
("J011", "Recruiter", "D005", "silver",35000,70000),
("J012", "Operations Supervisor", "D006", "rock",60000, 110000),
("J013", "Supply Chain Analyst", "D006", "rock",50000,  90000),
("J014", "Quality Engineer","D007", "stone",50000, 100000),
("J015", "Supply Chain Manager","D008", "diamond",70000, 140000),
("J016", "Logistics Coordinator","D008","diamond",40000, 80000),
("J017", "Customer Service Rep","D009","crown",30000, 60000),
("J018", "Research Scientist","D010", "red",80000, 160000);


### Update values in table using where condition ---

update job set max_salary=210000 where job_id="J018";

update job set min_salary=80000 where max_salary>150000;

update job set job_title="Customer care Service" where job_id="J017";

update employees set salary=124000 where first_name="meera";

### delete some value using condition ---

delete from leave_request where req_id=12;

delete from manager where manager_name="vyum kulkarni";

delete from department where dept_name="rose";

commit;
