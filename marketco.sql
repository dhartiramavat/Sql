create database MarketCo;
use MarketCo;
 create table Company
 ( CompanyID int primary key,
    CompanyName varchar(45),
    Street varchar(45),
    City varchar(45),
    State varchar(2),
    Zip varchar(10)
  );
   -- 1> Statement to create the contact table  
   create table Contact(
   ContactID int primary key,
   CompanyID int,
   foreign key (CompanyID) references Company(CompanyID),
   FirstName varchar(45),
   LastName varchar(45),
    Street varchar(45),
    City varchar(45),
    State varchar(2),
    Zip varchar(10),
    IsMain bool,
    Email varchar(45),
    Phone varchar(12)
    );
    
--  2> Statement to create the Employee table 
   create table Employee
   ( EmployeeID int primary key,
    FirstName varchar(45),
   LastName varchar(45),
    Salary decimal(10,2),
    HireDate date,
    JobTitle varchar(25),
    Email varchar(45),
    Phone varchar(12)
    );
    
-- 3> Statement to create the ConatctEmployee table
    create table ContactEmployee
    ( ContactEmployeeID int primary key,
	    ContactID int,
       foreign key (ContactID) references Contact(ContactID),
        EmployeeID int,
       foreign key (EmployeeID) references Employee(EmployeeID),
       ContactDate date,
       Description  varchar(100)
       );
    
  insert into Company (CompanyID, CompanyName, Street, City, State, Zip) VALUES
(1, 'Urban Outfitters Inc', '100 Market St', 'Philadelphia', 'PA', '19103'),
(2, 'TechNova Solutions', '55 Innovation Way', 'Austin', 'TX', '78701'),
(3, 'BlueWave Marketing', '820 Ocean Ave', 'Miami', 'FL', '33101'),
(4, 'Toll Brothers', '42 Garden Rd', 'Portland', 'OR', '97201'),
(5, 'Summit Financial', '200 Finance Blvd', 'Charlotte', 'NC', '28202'),
(6, 'Silverline Media', '19 Sunset Ln', 'Los Angeles', 'CA', '90001'),
(7, 'RedPeak Sports', '88 Mountain Dr', 'Denver', 'CO', '80202'),
(8, 'PrimeSource Logistics', '77 Distribution Ct', 'Memphis', 'TN', '38103'),
(9, 'BrightSky Telecom', '450 Connect Dr', 'Seattle', 'WA', '98101'),
(10, 'DailyBean Coffee', '12 Roast Rd', 'Chicago', 'IL', '60601');

insert into Contact (ContactID, CompanyID, LastName, FirstName, Street, City, State, Zip, Email, Phone) VALUES
(101, 4, 'Miller', 'Sophie', '12 Walnut St', 'Philadelphia', 'PA', '19103', 'sophie.miller@uo.com', '215-555-1001'),
(102, 2, 'Johnson', 'Eric', '77 Tech Ave', 'Austin', 'TX', '78701', 'eric.johnson@gmail.com', '512-555-2211'),
(103, 3, 'Green', 'Michael', '8 Forest Ln', 'Portland', 'OR', '97201', 'm.green@gmail.com', '503-555-8921'),
(104, 4, 'Baker', 'Tom', '200 Finance Blvd', 'Charlotte', 'NC', '28202', 't.baker@gmail.com', '704-555-0901'),
(105, 5, 'Lopez', 'Ana', '55 Ocean Dr', 'Miami', 'FL', '33101', 'ana.lopez@gmail.com', '305-555-3212'),
(106, 6, 'Singh', 'Raj', '450 Connect Dr', 'Seattle', 'WA', '98101', 'raj.singh@gmail.com', '206-555-9911'),
(107, 7, 'Washington', 'James', '30 Fabric Rd', 'New York', 'NY', '10001', 'j.washington@gmail.com', '212-555-5301'),
(108, 8, 'Reed', 'Lucas', '88 Mountain Dr', 'Denver', 'CO', '80202', 'lucas.reed@gmail.com', '720-555-1234'),
(109, 9, 'Harris', 'Julia', '19 Sunset Ln', 'Los Angeles', 'CA', '90001', 'j.harris@gmail.com', '213-555-2211'),
(110, 10, 'Connor', 'Dianne', '8 Forest Ln', 'Portland', 'OR', '97201', 'c,dianne@gmail.com', '213-555-2270');
 
  
 insert into Employee (EmployeeID, LastName, FirstName, Salary, HireDate, JobTitle, Email, Phone) VALUES
(1001, 'Bland', 'Lesley', 70000, '2021-11-20', 'Data Analyst', 'lesley.bland@gmail.com', '215-555-8800'),
(1002, 'Frost', 'Julia', 40000, '2022-10-24', 'Data Scientist', 'julia.frost@gmail.com', '215-555-1199'),
(1003, 'Kim', 'Daniel', 50000, '2020-02-28', 'Software Engineer', 'daniel.kim@gmail.com', '215-555-5500'),
(1004, 'Patel', 'Nina', 60000, '2019-03-25', 'Developer', 'nina.patel@gmail.com', '215-555-7822'),
(1005, 'Moris', 'Chris', 30000, '2021-02-05', 'Tester','chris.moore@gmail.com', '215-555-4401'),
(1006, 'David', 'Jenner', 40000, '2018-10-10', 'Game developer','ian.davis@gmail.com', '215-555-7766'),
(1007, 'Jordan', 'Alex', 45000, '2022-06-15', 'Data Analyst','alex.jordan@gmail.com', '215-555-9988'),
(1008, 'Jonas', 'Tara', 65000, '2021-09-01', 'Data Scientist','tara.young@gmail.com', '215-555-2344'),
(1009, 'Lee', 'Jack', 55000, '2019-11-11', 'Developer','jack.young@gmail.com', '215-555-6655');
 
insert into ContactEmployee (ContactEmployeeID, ContactID, EmployeeID, ContactDate, Description) VALUES
(1, 101, 1003, '2024-01-12', 'Initial meeting'),
(2, 102, 1001, '2024-01-15', 'Follow-up call'),
(3, 103, 1004, '2024-02-10', 'Project discussion'),
(4, 104, 1002, '2024-02-20', 'Quarterly review'),
(5, 105, 1006, '2024-03-01', 'Financial consultation'),
(6, 106, 1005, '2024-03-14', 'Marketing strategy'),
(7, 107, 1008, '2024-03-19', 'Sales update'),
(8, 108, 1007, '2024-04-02', 'Logistics planning'),
(9, 109, 1004, '2024-04-11', 'Project discussio'),
(10, 110, 1009, '2024-04-21', 'Initial meeting');

  
-- 4> In the Employee table, the statement that changes Lesley Bland’s phone number to 215-555-8800 
		UPDATE Employee
		SET Phone = '215-555-8800'
		WHERE EmployeeID = 1001;
        
 -- 5> In the Company table, the statement that changes the name of “Urban Outfitters, Inc.” 
 -- 	to “Urban Outfitters” 
		update Company
		Set CompanyName = 'Urban Outfitters'
		where CompanyID = 1;

/* 6>  In ContactEmployee table, the statement that removes
    Dianne Connor’s contact event  with Jack Lee (one statement).
    HINT: Use the primary key of the ContactEmployee table to specify the correct record to remove. */
		
         delete ContactEmployee from ContactEmployee 
			join  Contact on Contact.ContactID = ContactEmployee.ContactID
			join Employee on Employee.EmployeeID = ContactEmployee.EmployeeID
			where Contact.ContactID = 110
			and Employee.EmployeeID = 1009;

/* 7> Write the SQL SELECT query that displays the names of the employees 
    that have contacted Toll Brothers (one statement). 
     Run the SQL SELECT query in MySQL Workbench. Copy the results below as well. */
	
    select  Employee.FirstName, Employee.LastName, CompanyName from Employee
			join ContactEmployee 
				on ContactEmployee.EmployeeID = Employee.EmployeeID  
			join Contact 
				on Contact.ContactID = ContactEmployee.ContactID
			join Company 
				on Company.CompanyID = Contact.CompanyID
			where Company.CompanyName = 'Toll Brothers';
             /* result:
						 FirstName,LastName,CompanyName
						 Daniel,Kim,"Toll Brothers"
						Julia,Frost,"Toll Brothers"   */


/* 8> What is the significance of “%” and “_” operators in the LIKE statement?
   Ans> -> In MySQL, "%" and "_" operators is used with "LIKE" keyword in queries.
		_(Underscore) : 
        -> It represents exactly one single character.
		-> It used when you want to match a pattern with a specific number of characters.
		-> Syntax :-
				select column1, column2, ... from table_name
                where column_name like 'p_ttern'
					
        %(Percent) : 
        -> It represents zero, one, or multiple characters.
		-> It used when you want to match a sequence of characters of any length.                 
        -> Syntax :-
				select column1, column2, ... from table_name
				where column_name like 'pattern%'
                         
   9> Explain normalization in the context of databases.
   Ans> -> Normalization is the process of minimizing redundancy (duplicity) 
			from a relation or set of relations.
		-> Redundancy in relation may cause insertion, deletion and updation anomalies.
			So, it helps to minimize the redundancy in relations.
		-> Most Commonly used normal forms:
			* First normal form(1NF) :--
				A relation is in first normal form if every attribute in that relation
                is singled valued attribute.
			* Second normal form(2NF) :--
				To be in second normal form, a relation must be in first normal form
                and relation must not contain any partial dependency.
            * Third normal form(3NF) :--
				A relation is in third normal form, if there is no transitive dependency for 
                non-prime attributes as well as it is in second normal form
            
   10> What does a join in MySQL mean?
   Ans> -> A MySQL Join statement is used to combine data or rows 
			from two or more tables based on a common field between them.
        -> Joins allows us to retrieve a data from multiple tables in a single query.
        -> It contains types of joins such as
				* left join
                * right join 
                * inner join 
                * full join

   11> What do you understand about DDL, DCL, and DML in MySQL?
   Ans>	In MySQL, DDL, DML, and DCL are categories of SQL commands which are 
		used to interact with a database system.
		DDL–Data Definition Language
			-> DDL commands are used to define(create), modify(alter), and manage the 
				structure of database objects like tables, views, procedure, function. 
			-> These commands affect the database itself, not the data within it.
			-> It contains some commands:
				* CREATE : This command is use to create table, function, other object...
				* ALTER : This command is use to make changes in existing database object such as table, view, function.
                * DROP : This command is to use to delete the database object like table, view.
                
        DML–Data Manipulation Language
			-> DML commands are used to manipulate the data stored in database tables.
            -> By using DML, you can insert new records, update existing data, 
				delete unwanted data or retrieve information.
			-> It contains:
				* INSERT : This command is use for inserting new records in tables.
                * UPDATE : This command is use for making changes or modifying existing data in tables.
                * DELETE : This command is use to delete the records from the tables.
		
        DCL–Data Control Language
			-> DCL deal with the rights, permissions and other controls of the database system.
			-> It is used to control access to data in the database by granting or revoking permissions.
			-> It contains:
				* GRANT : This command is to provide specific access privileges or permissions
						   to users on database objects.
				* REVOKE : This command is to withdraw or remove privileges that were previously 
							granted to a user.
 
 12> What is the role of the MySQL JOIN clause in a query, and what are some common types of join
 Ans> Role of MySQL JOIN clause in query:
		-> It connect two or more tables for retriving some comman records from different tables.
		-> We don't have to store all the information in one big table.
		-> It retrieve related data stored across multiple tables.
        -> Types of Joins:
			* Left Joins - It returns all records from the left table
							and the matching records from the right table.
			* Right Join - It returns all rows from the right table   
							and the matching rows from the left table
			* Inner Join - It returns only that records which are
							comman in both tables based on the given join condition.
			* Full Join - It returns combined results of both left and right joins.





*/