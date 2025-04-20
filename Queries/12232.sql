create database ORG;
use ORG;
create table WORKER(
	workerID int not null primary key ,
	FirstName varchar(25),
	LastName Varchar(25),
	Salary int ,
	JoinigDate date,
	Department varchar(50)
);
INSERT INTO WORKER(workerID,FirstName,LastName,Salary,JoinigDate,Department)
VALUES
    (001, 'Monika', 'Arora', 100000, '2014-02-20', 'HR'),
    (002, 'Niharika', 'Verma', 80000, '2014-06-11', 'Admin'),
    (003, 'Vishal', 'Singhal', 300000, '2014-02-20', 'HR'),
    (004, 'Amitabh', 'Singh', 500000, '2014-02-20', 'Admin'),
    (005, 'Vivek', 'Bhati', 500000, '2014-06-11', 'Admin'),
    (006, 'Vipul', 'Diwan', 200000, '2014-06-11', 'Account'),
    (007, 'Satish', 'Kumar', 75000, '2014-01-20', 'Account'),
    (008, 'Geetika', 'Chauhan', 90000, '2014-04-11', 'Admin');
CREATE TABLE Bonus(
    WORKER_REF_ID INT,
    BONUS_AMOUNT INT,
    BONUS_DATE DATE,
    FOREIGN KEY (WORKER_REF_ID)
        REFERENCES Worker(workerID)
        ON DELETE CASCADE
);

INSERT INTO Bonus (WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES
    (001, 5000, '2016-02-20'),
    (002, 3000, '2016-06-11'),
    (003, 4000, '2016-02-20'),
    (001, 4500, '2016-02-20'),
    (002, 3500, '2016-06-11');
CREATE TABLE Title (
    WORKER_REF_ID INT,
    WORKER_TITLE CHAR(25),
    AFFECTED_FROM DATE,
    FOREIGN KEY (WORKER_REF_ID)
        REFERENCES Worker(workerID)
        ON DELETE CASCADE
);
INSERT INTO Title (WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
    (001, 'Manager', '2016-02-20'),
    (002, 'Executive', '2016-06-11'),
    (008, 'Executive', '2016-06-11'),
    (005, 'Manager', '2016-06-11'),
    (004, 'Asst. Manager', '2016-06-11'),
    (007, 'Executive', '2016-06-11'),
    (006, 'Lead', '2016-06-11'),
    (003, 'Lead', '2016-06-11');
use ORG;
select* from account;
insert into ACCOUNT(Balance,accountHolderName,interestRate)
values(129,'habib',3.30);
insert  into ACCOUNT values(123,'ali',3.3);



INSERT INTO ACCOUNT(Balance, accountHolderName, interestRate) VALUES (150, 'Ali', 2.5);
INSERT INTO ACCOUNT(Balance, accountHolderName, interestRate) VALUES (200, 'Sara', 3.1);
INSERT INTO ACCOUNT(Balance, accountHolderName, interestRate) VALUES (175, 'Ahmed', 2.9);
INSERT INTO ACCOUNT(Balance, accountHolderName, interestRate) VALUES (300, 'Zainab', 3.2);
INSERT INTO ACCOUNT(Balance, accountHolderName, interestRate) VALUES (220, 'Omar', 3.0);
INSERT INTO ACCOUNT(Balance, accountHolderName, interestRate) VALUES (185, 'Ayesha', 2.7);
INSERT INTO ACCOUNT(Balance, accountHolderName, interestRate) VALUES (250, 'Bilal', 3.4);
INSERT INTO ACCOUNT(Balance, accountHolderName, interestRate) VALUES (199, 'Fatima', 2.8);
INSERT INTO ACCOUNT(Balance, accountHolderName, interestRate) VALUES (160, 'Usman', 3.0);
INSERT INTO ACCOUNT(Balance, accountHolderName, interestRate) VALUES (350, 'Noor', 3.6);
INSERT INTO ACCOUNT(Balance, accountHolderName, interestRate) VALUES (280, 'Hamza', 2.6);
INSERT INTO ACCOUNT(Balance, accountHolderName, interestRate) VALUES (210, 'Mariam', 3.3);
INSERT INTO ACCOUNT(Balance, accountHolderName, interestRate) VALUES (270, 'Hassan', 2.9);
INSERT INTO ACCOUNT(Balance, accountHolderName, interestRate) VALUES (310, 'Sana', 3.1);
INSERT INTO ACCOUNT(Balance, accountHolderName, interestRate) VALUES (190, 'Yasir', 2.5);
INSERT INTO ACCOUNT(Balance, accountHolderName, interestRate) VALUES (140, 'Nida', 3.0);
INSERT INTO ACCOUNT(Balance, accountHolderName, interestRate) VALUES (230, 'Imran', 3.2);
INSERT INTO ACCOUNT(Balance, accountHolderName, interestRate) VALUES (260, 'Hina', 3.4);
INSERT INTO ACCOUNT(Balance, accountHolderName, interestRate) VALUES (320, 'Farhan', 2.7);
INSERT INTO ACCOUNT(Balance, accountHolderName, interestRate) VALUES (165, 'Rabia', 2.8);

