-- PROJECT STREAMER DONATION TRACKER
-- Team - WittyWallets                                    
-- Members: Oluwamayokun Badejo, Akshit Negi
--
CREATE DATABASE WittyWallets;

--TABLES--
 
--Users Table:

CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);


--Streamers Table:

CREATE TABLE Streamers (
    streamer_id INT PRIMARY KEY,
    streamer_name VARCHAR(255) NOT NULL,
    bio TEXT,
    donation_goal DECIMAL(10, 2) NOT NULL
);

--Donations Table:

CREATE TABLE Donations (
    donation_id INT PRIMARY KEY,
    user_id INT,
    streamer_id INT,
    amount DECIMAL(10, 2) NOT NULL,
    donation_date DATETIME NOT NULL,
    message TEXT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (streamer_id) REFERENCES Streamers(streamer_id)
);

--Moderation Table:

CREATE TABLE Moderation (
    moderation_id INT PRIMARY KEY,
    user_id INT,
    streamer_id INT,
    moderation_date DATETIME NOT NULL,
    reason TEXT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (streamer_id) REFERENCES Streamers(streamer_id)
);

--Subscriptions Table:

CREATE TABLE Subscriptions (
    subscription_id INT PRIMARY KEY,
    user_id INT,
    streamer_id INT,
    subscription_date DATETIME NOT NULL,
    expiration_date DATETIME NOT NULL,
    subscription_level VARCHAR(50) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (streamer_id) REFERENCES Streamers(streamer_id)
);


--INSERT DATA INTO THE TABLES--

--Users Table:

INSERT INTO Users (user_id, username, email, password)
VALUES
    (1, 'JohnDoe', 'john.doe@example.com', 'password123'),
    (2, 'JaneSmith', 'jane.smith@example.com', 'secret@321'),
    (3, 'MikeJohnson', 'mike.johnson@example.com', 'myPassWord'),
    (4, 'EmilyBrown', 'emily.brown@example.com', 'P@ssw0rd'),
    (5, 'AlexWilson', 'alex.wilson@example.com', 'securePass123'),
    (6, 'SarahMiller', 'sarah.miller@example.com', 'password!23'),
    (7, 'DavidLee', 'david.lee@example.com', 'hello123'),
    (8, 'EmmaClark', 'emma.clark@example.com', 'testPassword'),
    (9, 'RyanTaylor', 'ryan.taylor@example.com', 'sample123'),
    (10, 'OliviaWhite', 'olivia.white@example.com', 'mySecretPass');

--Streamers Tables

INSERT INTO Streamers (streamer_id, streamer_name, bio, donation_goal)
VALUES
    (1, 'StreamerX', 'Gaming and entertaining you!', 500.00),
    (2, 'ProGamer123', 'Join me for epic gaming sessions!', 1000.00),
    (3, 'CookingMaster', 'Cooking up delicious recipes!', 800.00),
    (4, 'MusicVibes', 'Bringing you great music and vibes!', 1200.00),
    (5, 'TechGeek', 'Exploring the latest tech trends!', 1500.00),
    (6, 'FitnessGuru', 'Get fit and stay healthy with me!', 1000.00),
    (7, 'ArtisticSoul', 'Creating beautiful art together!', 700.00),
    (8, 'FunnyClips', 'Laugh out loud with funny videos!', 600.00),
    (9, 'TravelExplorer', 'Let us travel the world virtually!', 900.00),
    (10, 'EducatorX', 'Learning new things every day!', 500.00);


--Donations Tables:

INSERT INTO Donations (donation_id, user_id, streamer_id, amount, donation_date, message)
VALUES
    (1, 2, 1, 20.00, '2023-08-01 12:30:00', 'Keep up the great work!'),
    (2, 4, 2, 50.00, '2023-08-02 18:45:00', 'Love your gaming skills!'),
    (3, 1, 3, 30.00, '2023-08-03 10:15:00', 'Amazing recipe, thanks!'),
    (4, 3, 4, 25.00, '2023-08-04 15:00:00', 'Great music selection!'),
    (5, 5, 5, 100.00, '2023-08-05 20:20:00', 'Keep innovating in tech!'),
    (6, 6, 6, 40.00, '2023-08-06 09:00:00', 'Fitness goals achieved!'),
    (7, 9, 7, 15.00, '2023-08-07 14:30:00', 'Your art is inspiring!'),
    (8, 7, 8, 10.00, '2023-08-08 17:10:00', 'Hilarious videos!'),
    (9, 8, 9, 70.00, '2023-08-09 22:00:00', 'Traveling with you is fun!'),
    (10, 10, 10, 40.00, '2023-08-10 11:40:00', 'Learning a lot from you!');

--Moderation Tables:

INSERT INTO Moderation (moderation_id, user_id, streamer_id, moderation_date, reason)
VALUES
    (1, 1, 2, '2023-08-02 13:00:00', 'Inappropriate language'),
    (2, 3, 4, '2023-08-04 16:20:00', 'Spamming the chat'),
    (3, 5, 7, '2023-08-07 15:30:00', 'Offensive content'),
    (4, 9, 8, '2023-08-08 17:30:00', 'Breaking community guidelines'),
    (5, 2, 9, '2023-08-09 23:00:00', 'Unwanted self-promotion');

--Subscriptions Table:

INSERT INTO Subscriptions (subscription_id, user_id, streamer_id, subscription_date, expiration_date, subscription_level)
VALUES
    (1, 2, 1, '2023-08-01 12:30:00', '2024-08-01 12:30:00', 'Tier 1'),
    (2, 4, 2, '2023-08-02 18:45:00', '2024-08-02 18:45:00', 'Tier 2'),
    (3, 1, 3, '2023-08-03 10:15:00', '2024-08-03 10:15:00', 'Tier 1'),
    (4, 3, 4, '2023-08-04 15:00:00', '2024-08-04 15:00:00', 'Tier 1'),
    (5, 5, 5, '2023-08-05 20:20:00', '2024-08-05 20:20:00', 'Tier 3'),
    (6, 6, 6, '2023-08-06 09:00:00', '2024-08-06 09:00:00', 'Tier 2'),
    (7, 9, 7, '2023-08-07 14:30:00', '2024-08-07 14:30:00', 'Tier 1'),
    (8, 7, 8, '2023-08-08 17:10:00', '2024-08-08 17:10:00', 'Tier 1'),
    (9, 8, 9, '2023-08-09 22:00:00', '2024-08-09 22:00:00', 'Tier 3'),
    (10, 10, 10, '2023-08-10 11:40:00', '2024-08-10 11:40:00', 'Tier 2');


--tables Users, Streamers, Donations, Moderation, and Subscriptions have been populated with sample data--


------------------------------PROJECT REQUIREMENTS------------------------------------------------

----Different types of constraints on the tables using primary key, FK and not not null tables.--

--Users Table - Add Unique Constraint for Email:
ALTER TABLE Users
ADD CONSTRAINT UQ_Users_Email UNIQUE (email);

--Streamers Table - Add Check Constraint for Donation Goal:
ALTER TABLE Streamers
ADD CONSTRAINT CHK_Streamers_DonationGoal CHECK (donation_goal >= 0);

--Donations Table - Add Check Constraint for Amount and Not Null Constraint for Reason:
ALTER TABLE Donations
ADD CONSTRAINT CHK_Donations_Amount CHECK (amount > 0);

ALTER TABLE Moderation
ALTER COLUMN reason TEXT NOT NULL;

--Moderation Table - Add Not Null Constraint for Reason:
ALTER TABLE Moderation
ALTER COLUMN reason TEXT NOT NULL;




----Building of cluster / Non cluster indexex on the table for performance turning

--Note: We have chosen to add non-clustered indexes on the foreign key columns (user_id and streamer_id)
--in the Donations, Moderation, and Subscriptions tables. These indexes can be beneficial for improving 
--query performance when joining, filtering, or searching based on these columns.


--Donations Table - Non-Clustered Index on user_id:

CREATE NONCLUSTERED INDEX idx_Donations_UserId
ON Donations (user_id);


--Moderation Table - Non-Clustered Index on user_id:

CREATE NONCLUSTERED INDEX idx_Moderation_UserId
ON Moderation (user_id);

--Subscriptions Table - Non-Clustered Indexes on user_id and streamer_id:

CREATE NONCLUSTERED INDEX idx_Subscriptions_UserId
ON Subscriptions (user_id);

CREATE NONCLUSTERED INDEX idx_Subscriptions_StreamerId
ON Subscriptions (streamer_id);


------------------------------------------------------------------------------------------------------------------
--Inner Join: Retrieve data where there is a match in both tables.
SELECT Users.username, Streamers.streamer_name, Donations.amount
FROM Users
INNER JOIN Donations ON Users.user_id = Donations.user_id
INNER JOIN Streamers ON Donations.streamer_id = Streamers.streamer_id;

--Left Join: Retrieve all rows from the left table and the matching rows from the right table (if any).
SELECT Users.username, Streamers.streamer_name, Donations.amount
FROM Users
LEFT JOIN Donations ON Users.user_id = Donations.user_id
LEFT JOIN Streamers ON Donations.streamer_id = Streamers.streamer_id;


--Right Join: Retrieve all rows from the right table and the matching rows from the left table (if any).
SELECT Users.username, Streamers.streamer_name, Donations.amount
FROM Users
RIGHT JOIN Donations ON Users.user_id = Donations.user_id
RIGHT JOIN Streamers ON Donations.streamer_id = Streamers.streamer_id;


--Full Outer Join: Retrieve all rows when there is a match in either the left or right table.
SELECT Users.username, Streamers.streamer_name, Donations.amount
FROM Users
FULL OUTER JOIN Donations ON Users.user_id = Donations.user_id
FULL OUTER JOIN Streamers ON Donations.streamer_id = Streamers.streamer_id;


---------------------------------------------------------------------------------------------------------------------------------
--Imagine you have a special tool that can watch over your database and keep track of certain changes. 
--A DDL trigger is like a little detective that gets activated whenever something important happens to your tables.
--DDL Trigger: creating a DDL trigger that logs the details of any table creation, alteration, or dropping.
CREATE TRIGGER ddl_trigger_log
ON DATABASE
FOR CREATE_TABLE, ALTER_TABLE, DROP_TABLE
AS
BEGIN
    DECLARE @EventData XML;
    SET @EventData = EVENTDATA();
    
    INSERT INTO DDL_Log (event_type, object_name, event_date)
    VALUES (@EventData.value('(/EVENT_INSTANCE/EventType)[1]', 'nvarchar(100)'),
            @EventData.value('(/EVENT_INSTANCE/ObjectName)[1]', 'nvarchar(100)'),
            GETDATE());
END;
--In this example, we assume that there is a table named DDL_Log to store the log information of DDL events. 
--This trigger will insert a new row into the DDL_Log table whenever a table is created, altered, or dropped
--------------------------------
--DML Trigger: creating a DML trigger that logs the details of any donations made to the Donations table.
CREATE TRIGGER dml_trigger_log
ON Donations
AFTER INSERT
AS
BEGIN
    INSERT INTO Donation_Log (user_id, streamer_id, amount, donation_date)
    SELECT user_id, streamer_id, amount, donation_date
    FROM INSERTED;
END;
--In this example, we assume that there is a table named Donation_Log to store the log information of donations. 
--This trigger will insert a new row into the Donation_Log table whenever a new donation is made to the Donations table.

----------------------------------------------------------------------------------------------------------------------------------



------------------------------------------------------------------------------------------------------------------------------------
--Function to Calculate Total Donations for a Streamer:
CREATE FUNCTION dbo.GetTotalDonationsForStreamer
(
    @streamer_id INT
)
RETURNS DECIMAL(10, 2)
AS
BEGIN
    DECLARE @total_amount DECIMAL(10, 2)

    SELECT @total_amount = SUM(amount)
    FROM Donations
    WHERE streamer_id = @streamer_id

    RETURN @total_amount;
END;

-- Calculate total donations for Streamer with streamer_id = 1
DECLARE @total_donations DECIMAL(10, 2)
SET @total_donations = dbo.GetTotalDonationsForStreamer(2)
PRINT 'Total Donations for Streamer 1: ' + CAST(@total_donations AS VARCHAR)


--Function to Get Count of Donations for a User:
CREATE FUNCTION dbo.GetDonationCountForUser
(
    @user_id INT
)
RETURNS INT
AS
BEGIN
    DECLARE @donation_count INT

    SELECT @donation_count = COUNT(*)
    FROM Donations
    WHERE user_id = @user_id

    RETURN @donation_count;
END;
-- Get donation count for User with user_id = 2
DECLARE @donation_count INT
SET @donation_count = dbo.GetDonationCountForUser(4)
PRINT 'Donation Count for User 1: ' + CAST(@donation_count AS VARCHAR)



---------------------------------------------------------------
		--STORED PROCEDURES--
---------------------------------------------------------------


--The purpose of creating and executing Stored procedures, Validate data and raise error


-----------------------------------------------------------------------------------------
--A stored procedure called InsertDonation that validates the donation amount
--before inserting it into the Donations table. The procedure will raise an error if the amount is less than or equal to 0.
------------------------------------------------------------------------------------------
CREATE PROCEDURE InsertDonation
    @user_id INT,
    @streamer_id INT,
    @amount DECIMAL(10, 2),
    @donation_date DATETIME,
    @message TEXT
AS
BEGIN
    -- Validation: Check if the amount is greater than 0
    IF @amount <= 0
    BEGIN
        RAISERROR ('Donation amount must be greater than 0.', 16, 1);
        RETURN; -- Exit the procedure without inserting the data
    END

    -- Insert the data into the Donations table
    INSERT INTO Donations (user_id, streamer_id, amount, donation_date, message)
    VALUES (@user_id, @streamer_id, @amount, @donation_date, @message);

    -- Successful insertion message
    PRINT 'Donation inserted successfully.';
END;


-- Test case: Valid donation
EXEC InsertDonation 1, 1, 50.00, '2023-08-04 10:30:00', 'Keep up the good work!';

-- Test case: Invalid donation (amount is less than or equal to 0)
EXEC InsertDonation 2, 2, -10.00, '2023-08-04 12:15:00', 'Invalid donation.';

-------------------------------------------------------------------------------------------------------------------------
-- retrieves all donations made by a specific user. We will pass the user_id as 
--a parameter to the stored procedure, and it will return the details of all donations made by that user.
---------------------------------------------------------------------------------------------------------------------------
CREATE PROCEDURE GetDonationsByUser
    @user_id INT
AS
BEGIN
    -- Retrieve all donations made by the specified user
    SELECT Users.username, Streamers.streamer_name, Donations.amount, Donations.donation_date, Donations.message
    FROM Users
    INNER JOIN Donations ON Users.user_id = Donations.user_id
    INNER JOIN Streamers ON Donations.streamer_id = Streamers.streamer_id
    WHERE Users.user_id = @user_id;
END;


-- Execute the GetDonationsByUser stored procedure with user_id = 1
EXEC GetDonationsByUser 3;


---------------------------------------------------------------------------------------------
--stored procedure that can help you find out who made the highest amount of money in a specific month among all the streamers
---------------------------------------------------------------------------------------------
CREATE PROCEDURE GetHighestEarningStreamerInMonth
    @Month INT,
    @Year INT
AS
BEGIN
    SELECT TOP 1
        s.streamer_name,
        SUM(d.amount) AS total_earnings
    FROM
        Streamers s
    INNER JOIN
        Donations d ON s.streamer_id = d.streamer_id
    WHERE
        MONTH(d.donation_date) = @Month AND YEAR(d.donation_date) = @Year
    GROUP BY
        s.streamer_name
    ORDER BY
        total_earnings DESC;

END;

EXEC GetHighestEarningStreamerInMonth @Month = 8, @Year = 2023;


---------------------------------------------------------------------------------------------
--Stored procedure that can help you find new streamers who are getting 
--more donations or are experiencing growth in terms of donations
---------------------------------------------------------------------------------------------

CREATE PROCEDURE GetGrowingStreamers
    @StartDate DATETIME,
    @EndDate DATETIME,
    @MinimumDonations INT
AS
BEGIN
    SELECT
        s.streamer_name,
        SUM(d.amount) AS total_donations
    FROM
        Streamers s
    INNER JOIN
        Donations d ON s.streamer_id = d.streamer_id
    WHERE
        d.donation_date BETWEEN @StartDate AND @EndDate
    GROUP BY
        s.streamer_name
    HAVING
        SUM(d.amount) >= @MinimumDonations
    ORDER BY
        total_donations DESC;

END;

EXEC GetGrowingStreamers @StartDate = '2023-08-01', @EndDate = '2023-08-31', @MinimumDonations = 100; 


---------------------------------------------------------------------------------------------
--stored procedure that calculates and ranks the streamers of the month based on their total donations
---------------------------------------------------------------------------------------------

CREATE PROCEDURE RankStreamersOfMonth
    @Month INT,
    @Year INT
AS
BEGIN
    WITH StreamerDonationTotals AS (
        SELECT
            s.streamer_id,
            s.streamer_name,
            SUM(d.amount) AS total_donations
        FROM
            Streamers s
        INNER JOIN
            Donations d ON s.streamer_id = d.streamer_id
        WHERE
            MONTH(d.donation_date) = @Month AND YEAR(d.donation_date) = @Year
        GROUP BY
            s.streamer_id, s.streamer_name
    )
    SELECT
        RANK() OVER (ORDER BY total_donations DESC) AS ranking,
        streamer_name,
        total_donations
    FROM
        StreamerDonationTotals
    ORDER BY
        ranking;
END;

EXEC RankStreamersOfMonth @Month = 8, @Year = 2023; -- Example for August 2023

---------------------------------------------------------------------------------------------
