# Streamer-Donation-Analytics-System
A comprehensive analytics system tracking donations, streamer growth, and user engagement.
Project Overview:
The Twitch/Youtube Donation Analytics System, developed by Team WittyWallets, is a comprehensive solution designed to track, analyze, and provide insights into donation-related data for Twitch streamers and users. The system empowers streamers to understand their performance, while users can track their contributions. It leverages a well-designed database, stored procedures, functions, and triggers to enhance data management, query performance, and user engagement.

# Key Features:

### Database Design:
Structured tables (Users, Streamers, Donations, Moderation, Subscriptions) with primary key, foreign key, and not null constraints ensure data integrity.
Clustered and non-clustered indexes optimize query performance.

### Data Analysis:
Various types of joins (inner, left outer, right outer, full outer) facilitate seamless data integration for analysis.
Stored procedures efficiently process complex tasks, enabling users to gain valuable insights.

### Auditing and Triggers:
DDL trigger logs table creation, alteration, or dropping events, ensuring structural changes are recorded.
DML trigger captures donation-related events, tracking real-time donation activities.

### Stored Procedures and Functions:
InsertDonation: Validates and inserts donations into the Donations table, raising an error for invalid amounts.
GetDonationsByUser: Retrieves all donations made by a specific user, enhancing user transparency.
GetHighestEarningStreamerInMonth: Identifies the highest-earning streamer in a given month.
GetGrowingStreamers: Find new streamers experiencing growth in terms of donations.
RankStreamersOfMonth: Ranks streamers of the month based on total donations.

# Conclusion:
The Twitch/Youtube Donation Analytics System showcases  Team ' WittyWallets ' expertise in database design, SQL querying, and solution development. The project addresses the crucial need for transparency and analysis within the Twitch/Youtube community, providing streamers and users with actionable insights into their donation interactions. The utilization of triggers, stored procedures, functions, and comprehensive data constraints highlights the dedication to creating a robust and efficient solution for the Twitch/Youtube ecosystem.


# Running the Project

1. Open SQL Server Management Studio.
2. Connect to the appropriate server instance.
3. Open a new query window.
4. Copy and paste the SQL script from the provided files into the query window.
5. Execute each section of the script step by step (database setup, constraints, indexes, etc.) by selecting the section and clicking the "Execute" button.
6. To run specific stored procedures or queries, highlight the code and execute it.
