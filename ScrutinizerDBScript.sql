USE [master]
GO
/****** Object:  Database [Test_Project]    Script Date: 11/7/2019 9:22:03 AM ******/
CREATE DATABASE [Test_Project]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Test_Project', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Test_Project.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Test_Project_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Test_Project_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Test_Project] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Test_Project].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Test_Project] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Test_Project] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Test_Project] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Test_Project] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Test_Project] SET ARITHABORT OFF 
GO
ALTER DATABASE [Test_Project] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Test_Project] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Test_Project] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Test_Project] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Test_Project] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Test_Project] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Test_Project] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Test_Project] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Test_Project] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Test_Project] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Test_Project] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Test_Project] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Test_Project] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Test_Project] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Test_Project] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Test_Project] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Test_Project] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Test_Project] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Test_Project] SET  MULTI_USER 
GO
ALTER DATABASE [Test_Project] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Test_Project] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Test_Project] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Test_Project] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Test_Project] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Test_Project]
GO
/****** Object:  Table [dbo].[ArrestDetails]    Script Date: 11/7/2019 9:22:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ArrestDetails](
	[arrestId] [int] IDENTITY(100000,1) NOT NULL,
	[arrestPlace] [varchar](50) NULL,
	[arrestTime] [varchar](50) NULL,
	[arrestDate] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[arrestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 11/7/2019 9:22:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Booking](
	[bookingId] [int] IDENTITY(1000,1) NOT NULL,
	[bookingStatus] [varchar](max) NULL,
 CONSTRAINT [PK__Booking__C6D03BCD15B572C0] PRIMARY KEY CLUSTERED 
(
	[bookingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CaseDetails]    Script Date: 11/7/2019 9:22:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CaseDetails](
	[caseId] [int] IDENTITY(10000,1) NOT NULL,
	[caseName] [varchar](50) NULL,
	[date] [varchar](50) NULL,
	[evidence] [varchar](50) NULL,
	[witness] [varchar](50) NULL,
	[caseDescription] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[caseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CriminalDetails]    Script Date: 11/7/2019 9:22:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CriminalDetails](
	[criminalId] [int] IDENTITY(1000,1) NOT NULL,
	[criminalName] [varchar](50) NULL,
	[age] [int] NULL,
	[gender] [varchar](50) NULL,
	[height] [varchar](10) NULL,
	[weight] [int] NULL,
	[identification] [varchar](50) NULL,
	[native] [varchar](50) NULL,
	[address] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[criminalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OfficerDetails]    Script Date: 11/7/2019 9:22:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OfficerDetails](
	[officerId] [int] IDENTITY(10,1) NOT NULL,
	[officerName] [varchar](50) NULL,
	[officerPassword] [varchar](max) NULL,
	[stationNo] [varchar](50) NULL,
	[stationAddress] [varchar](50) NULL,
	[designation] [varchar](50) NULL,
	[gender] [varchar](50) NULL,
	[age] [int] NULL,
	[complaintType] [varchar](50) NULL,
	[complaint] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[officerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserDetails]    Script Date: 11/7/2019 9:22:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserDetails](
	[userId] [int] IDENTITY(1,1) NOT NULL,
	[userName] [varchar](50) NULL,
	[userPassword] [varchar](max) NULL,
	[city] [varchar](50) NULL,
	[address] [varchar](50) NULL,
	[complaintType] [varchar](50) NULL,
	[complaint] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ArrestDetails] ON 

INSERT [dbo].[ArrestDetails] ([arrestId], [arrestPlace], [arrestTime], [arrestDate]) VALUES (100000, N'Surapet', N'8:00 AM', N'23/09/2013')
INSERT [dbo].[ArrestDetails] ([arrestId], [arrestPlace], [arrestTime], [arrestDate]) VALUES (100001, N'Beach Railway Station', N'11:00 PM', N'07/09/2019')
SET IDENTITY_INSERT [dbo].[ArrestDetails] OFF
SET IDENTITY_INSERT [dbo].[Booking] ON 

INSERT [dbo].[Booking] ([bookingId], [bookingStatus]) VALUES (1011, N'Case Accepted and Investigation is Done!!!-Contact Scrutinizers for further Updates')
SET IDENTITY_INSERT [dbo].[Booking] OFF
SET IDENTITY_INSERT [dbo].[CaseDetails] ON 

INSERT [dbo].[CaseDetails] ([caseId], [caseName], [date], [evidence], [witness], [caseDescription]) VALUES (10000, N'Purse Theft in bus', N'2019-10-10', N'Purse- crocodile brand black leather with Id cards', N'Conductor', N' Missed the purse in 519 bus during heavy rush near shollinganallur at 5:00 Pm')
INSERT [dbo].[CaseDetails] ([caseId], [caseName], [date], [evidence], [witness], [caseDescription]) VALUES (10001, N'Chain Theft', N'2019-04-09', N'Gold Chain with the name designed as vijay.', N'Railway Maintainer in Beach Railway Station.', N'The culprit was caught near the Beach Railway station.')
SET IDENTITY_INSERT [dbo].[CaseDetails] OFF
SET IDENTITY_INSERT [dbo].[CriminalDetails] ON 

INSERT [dbo].[CriminalDetails] ([criminalId], [criminalName], [age], [gender], [height], [weight], [identification], [native], [address]) VALUES (1000, N'Priya', 22, N'Female', N'5.1', 50, N'Specs', N'Tiruchendore', N'Chennai')
INSERT [dbo].[CriminalDetails] ([criminalId], [criminalName], [age], [gender], [height], [weight], [identification], [native], [address]) VALUES (1001, N'Ravi', 33, N'Male', N'5.8', 65, N'Black guy with a scar near his chin', N'Chengalpat', N'Chennai')
SET IDENTITY_INSERT [dbo].[CriminalDetails] OFF
SET IDENTITY_INSERT [dbo].[OfficerDetails] ON 

INSERT [dbo].[OfficerDetails] ([officerId], [officerName], [officerPassword], [stationNo], [stationAddress], [designation], [gender], [age], [complaintType], [complaint]) VALUES (10, N'Ram', N'ram', N'S10', N'Chennai', N'AC', N'Male', 28, N'Purse Theft', N'I Lost My Mobile near Broadway Bus Stop')
INSERT [dbo].[OfficerDetails] ([officerId], [officerName], [officerPassword], [stationNo], [stationAddress], [designation], [gender], [age], [complaintType], [complaint]) VALUES (11, N'Vakeesh', N'vakeesh', N'S12', N'Ashok Nagar', N'SI', N'Male', 28, N'Chain Theft', N'I lost my chain in Beach Railway Station.')
SET IDENTITY_INSERT [dbo].[OfficerDetails] OFF
SET IDENTITY_INSERT [dbo].[UserDetails] ON 

INSERT [dbo].[UserDetails] ([userId], [userName], [userPassword], [city], [address], [complaintType], [complaint]) VALUES (1, N'Praveen', N'123', N'Chennai', N'Medavakkam', N'Purse Theft', N'I lost my purse in 519 bus.')
INSERT [dbo].[UserDetails] ([userId], [userName], [userPassword], [city], [address], [complaintType], [complaint]) VALUES (2, N'Mohan', N'456', N'Chennai', N'Red Hills', N'Mobile Theft', N'I Lost My Mobile near Broadway Bus Stop')
INSERT [dbo].[UserDetails] ([userId], [userName], [userPassword], [city], [address], [complaintType], [complaint]) VALUES (3, N'Vijay', N'789', N'Chennai', N'Navalur', N'Chain Theft', N'I lost my chain in Beach Railway Station.')
SET IDENTITY_INSERT [dbo].[UserDetails] OFF
/****** Object:  StoredProcedure [dbo].[USP_checkofficeruser]    Script Date: 11/7/2019 9:22:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--*****************************************************************************
--Name        : Scrutinizers
--Batch       : Dotnet
--Description : Created procedure to check the valid OfficerSignIn
--*****************************************************************************
create procedure [dbo].[USP_checkofficeruser]
(
@officerName varchar(50),
@password varchar(50)
)
as
begin
select count(*) from OfficerDetails where officerName=@officerName and officerPassword=@password
end
GO
/****** Object:  StoredProcedure [dbo].[USP_checkpublicuser]    Script Date: 11/7/2019 9:22:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--*****************************************************************************
--Name        : Scrutinizers
--Batch       : Dotnet
--Description : Created procedure to check the valid publicSignIn
--*****************************************************************************
create procedure [dbo].[USP_checkpublicuser]
(
@userName varchar(50),
@password varchar(50)
)
as
begin
select count(*) from UserDetails where userName=@userName and userPassword=@password
end
GO
/****** Object:  StoredProcedure [dbo].[USP_GetBookingDetails]    Script Date: 11/7/2019 9:22:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

  --*****************************************************************************
--Name        : Scrutinizers
--Batch       : Dotnet
--Description : Created procedure to retrive the record from Booking 
--*****************************************************************************
  CREATE proc [dbo].[USP_GetBookingDetails] 
  as
  begin
	select [bookingId],[bookingStatus] from Booking;
	  end
GO
/****** Object:  StoredProcedure [dbo].[USP_GetBookingDetailsNew]    Script Date: 11/7/2019 9:22:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  --*****************************************************************************
--Name        : Scrutinizers
--Batch       : Dotnet
--Description : Created procedure to retrive the record from Booking 
--*****************************************************************************
  Create proc [dbo].[USP_GetBookingDetailsNew] 
  as
  begin
	select [bookingId],[bookingStatus] from Booking;
	  end

GO
/****** Object:  StoredProcedure [dbo].[USP_GetComplientDetails]    Script Date: 11/7/2019 9:22:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--*****************************************************************************
--Name        : Scrutinizers
--Batch       : Dotnet
--Description : Created procedure to retrive the record from User Complient 
--*****************************************************************************
  create proc [dbo].[USP_GetComplientDetails]
  
  as
  begin
select [complaintType],[complaint]
from [dbo].[UserDetails]
  end
GO
/****** Object:  StoredProcedure [dbo].[USP_GetOfficercomplaintDetails]    Script Date: 11/7/2019 9:22:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 --*****************************************************************************
--Name        : Scrutinizers
--Batch       : Dotnet
--Description : Created procedure to retrive the record from Officer
--*****************************************************************************
 create proc [dbo].[USP_GetOfficercomplaintDetails] 
  @officerName varchar(50)
  as
  begin
select complaintType,complaint
from [dbo].[OfficerDetails] where [officerName]=@officerName
  end

GO
/****** Object:  StoredProcedure [dbo].[USP_GetOfficerDetails]    Script Date: 11/7/2019 9:22:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  --*****************************************************************************
--Name        : Scrutinizers
--Batch       : Dotnet
--Description : Created procedure to retrive the record from Officer
--*****************************************************************************
  CREATE proc [dbo].[USP_GetOfficerDetails]
  @officerName varchar(50)
  as
  begin
select  [officerName],[stationNo],[stationAddress],[designation],[gender],[age]
from [dbo].[OfficerDetails] where [officerName]=@officerName
  end
GO
/****** Object:  StoredProcedure [dbo].[USP_GetUserDetails]    Script Date: 11/7/2019 9:22:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--*****************************************************************************
--Name        : Scrutinizers
--Batch       : Dotnet
--Description : Created procedure to retrive the record from User Details 
--*****************************************************************************
  CREATE proc [dbo].[USP_GetUserDetails]
  @username varchar(50)
    as
  begin
	Declare @userid int;
	select @userid= userid from UserDetails where userName=@username;
	select userName,city,address,complaintType,complaint
	from [dbo].[UserDetails] where userid=@userid;
  end
GO
/****** Object:  StoredProcedure [dbo].[USP_insertArrestDetails]    Script Date: 11/7/2019 9:22:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--*****************************************************************************
--Name        : Scrutinizers
--Batch       : Dotnet
--Description : Created procedure to insert the records in ArrestDetails Table
--*****************************************************************************
  CREATE proc [dbo].[USP_insertArrestDetails]
  (
  @place varchar(50),
  @time varchar(50),
  @date varchar(50)
  )
  as
  begin
  set nocount on;
  insert into ArrestDetails(arrestPlace,arrestTime,arrestDate)
  values(@place,@time,@date)
  end
GO
/****** Object:  StoredProcedure [dbo].[USP_insertBooking]    Script Date: 11/7/2019 9:22:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--*****************************************************************************
--Name        : Scrutinizers
--Batch       : Dotnet
--Description : Created procedure to insert the record in Booking Table
--*****************************************************************************
  CREATE proc [dbo].[USP_insertBooking]
  (
  @book varchar(max)
 
  )
  as
  begin
  set nocount on;
  insert into Booking(bookingStatus)
  values(@book)
  end
GO
/****** Object:  StoredProcedure [dbo].[USP_insertCaseDetails]    Script Date: 11/7/2019 9:22:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--*****************************************************************************
--Name        : Scrutinizers
--Batch       : Dotnet
--Description : Created procedure to insert the records in CaseDetails Table
--*****************************************************************************
  create proc [dbo].[USP_insertCaseDetails]
  (
  @name varchar(50),
  @date varchar(50) ,
  @evidence varchar(50),
  @witness varchar(50) ,
  @description varchar(max)
  )
  as
  begin
  set nocount on;
  insert into CaseDetails(caseName,date,evidence,witness,caseDescription)
  values(@name,@date,@evidence,@witness,@description)
  end

GO
/****** Object:  StoredProcedure [dbo].[USP_insertCriminalDetails]    Script Date: 11/7/2019 9:22:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--*****************************************************************************
--Name        : Scrutinizers
--Batch       : Dotnet
--Description : Created procedure to insert the records in CriminalDetails Table
--*****************************************************************************
  CREATE proc [dbo].[USP_insertCriminalDetails]
  (
  @name varchar(50),
  @age int,
  @gender varchar(50),
  @height varchar(50) ,
  @weight int,
  @identity varchar(50) ,
  @native varchar(50) ,
  @address varchar(50) 
  )
  as
  begin
  set nocount on;
  insert into CriminalDetails(criminalName,age,gender,height,weight,identification,native,address)
  values(@name,@age,@gender,@height,@weight,@identity,@native,@address)
  end

GO
/****** Object:  StoredProcedure [dbo].[USP_insertOfficerDetails]    Script Date: 11/7/2019 9:22:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--*****************************************************************************
--Name        : Scrutinizers
--Batch       : Dotnet
--Description : Created procedure to insert the records in OfficerDetails Table
--*****************************************************************************
  CREATE proc [dbo].[USP_insertOfficerDetails]
  (
  @name varchar(50),
  @password varchar(max) ,
  @stationNo varchar(50),
  @stationAddress varchar(50) ,
  @designation varchar(50),
  @gender varchar(50),
  @age int,
  @complaintType varchar(50),
  @complaint varchar(max)
  )
  as
  begin
  set nocount on;
  insert into OfficerDetails(officerName,officerPassword,stationNo,stationAddress,designation,gender,age,complaintType,complaint)
  values(@name,@password,@stationNo,@stationAddress,@designation,@gender,@age,@complaintType,@complaint)
  end

GO
/****** Object:  StoredProcedure [dbo].[USP_insertUserDetails]    Script Date: 11/7/2019 9:22:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--*****************************************************************************
--Name        : Scrutinizers
--Batch       : Dotnet
--Description : Created procedure to insert the records in UserDetails Table
--*****************************************************************************
  create proc [dbo].[USP_insertUserDetails]
  (
  @name varchar(50),
  @password varchar(max) ,
  @city varchar(50),
  @address varchar(50) ,
  @complainttype varchar(50),
  @complaint varchar(max)
  )
  as
  begin
  set nocount on;
  insert into UserDetails([userName],[userPassword],[city],[address],[complaintType],[complaint])
  values(@name,@password,@city,@address,@complainttype,@complaint)
  end
GO
USE [master]
GO
ALTER DATABASE [Test_Project] SET  READ_WRITE 
GO
