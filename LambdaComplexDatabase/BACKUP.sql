USE [master]
GO
/****** Object:  Database [LambdaComplex]    Script Date: 12-04-2024 10:00:18 AM ******/
CREATE DATABASE [LambdaComplex]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LambdaComplex', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\LambdaComplex.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'LambdaComplex_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\LambdaComplex_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [LambdaComplex] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LambdaComplex].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LambdaComplex] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LambdaComplex] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LambdaComplex] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LambdaComplex] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LambdaComplex] SET ARITHABORT OFF 
GO
ALTER DATABASE [LambdaComplex] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LambdaComplex] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LambdaComplex] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LambdaComplex] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LambdaComplex] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LambdaComplex] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LambdaComplex] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LambdaComplex] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LambdaComplex] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LambdaComplex] SET  ENABLE_BROKER 
GO
ALTER DATABASE [LambdaComplex] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LambdaComplex] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LambdaComplex] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LambdaComplex] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LambdaComplex] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LambdaComplex] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LambdaComplex] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LambdaComplex] SET RECOVERY FULL 
GO
ALTER DATABASE [LambdaComplex] SET  MULTI_USER 
GO
ALTER DATABASE [LambdaComplex] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LambdaComplex] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LambdaComplex] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LambdaComplex] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [LambdaComplex] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [LambdaComplex] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'LambdaComplex', N'ON'
GO
ALTER DATABASE [LambdaComplex] SET QUERY_STORE = ON
GO
ALTER DATABASE [LambdaComplex] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [LambdaComplex]
GO
/****** Object:  User [Server_Admin]    Script Date: 12-04-2024 10:00:18 AM ******/
CREATE USER [Server_Admin] FOR LOGIN [Server_Admin] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[LambdaComplex_CalendarEvent_Trn_Tbl]    Script Date: 12-04-2024 10:00:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LambdaComplex_CalendarEvent_Trn_Tbl](
	[ID] [varchar](36) NOT NULL,
	[EventDescription] [varchar](max) NULL,
	[EventDate] [datetime] NULL,
	[CreatedBy] [varchar](36) NOT NULL,
	[ModifiedBy] [varchar](36) NOT NULL,
	[IsDeleted] [bit] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL,
	[EventPriority] [varchar](4) NULL,
	[EventName] [varchar](200) NULL,
	[EventTime] [varchar](10) NULL,
	[IsExpired] [bit] NULL,
 CONSTRAINT [PK__LambdaCo__3214EC278A076386] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LambdaComplex_File_Trn_Tbl]    Script Date: 12-04-2024 10:00:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LambdaComplex_File_Trn_Tbl](
	[ID] [varchar](36) NULL,
	[UserID] [varchar](36) NOT NULL,
	[RecordID] [varchar](36) NOT NULL,
	[FileName] [varchar](200) NOT NULL,
	[FileType] [varchar](200) NOT NULL,
	[StoredFileName] [varchar](500) NOT NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](36) NULL,
	[ModifiedBy] [varchar](36) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LambdaComplex_Goal_Changes_Trn_tbl]    Script Date: 12-04-2024 10:00:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LambdaComplex_Goal_Changes_Trn_tbl](
	[RecordId] [varchar](36) NULL,
	[ID] [varchar](36) NULL,
	[Name] [varchar](200) NULL,
	[Description] [varchar](max) NULL,
	[RunningStatus] [int] NULL,
	[AssignedTo] [varchar](36) NULL,
	[ReportingStatus] [int] NULL,
	[version] [int] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](36) NULL,
	[ModifiedBy] [varchar](36) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LambdaComplex_Goal_Mst_tbl]    Script Date: 12-04-2024 10:00:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LambdaComplex_Goal_Mst_tbl](
	[ID] [varchar](36) NULL,
	[Name] [varchar](200) NULL,
	[Description] [varchar](max) NULL,
	[RunningStatus] [int] NULL,
	[AssignedTo] [varchar](36) NULL,
	[ReportingStatus] [int] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](36) NULL,
	[ModifiedBy] [varchar](36) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LambdaComplex_MileStone_Changes_Trn_tbl]    Script Date: 12-04-2024 10:00:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LambdaComplex_MileStone_Changes_Trn_tbl](
	[RecordId] [varchar](36) NULL,
	[ID] [varchar](36) NULL,
	[Name] [varchar](200) NULL,
	[Description] [varchar](max) NULL,
	[RunningStatus] [int] NULL,
	[AssignedTo] [varchar](36) NULL,
	[ReportingStatus] [int] NULL,
	[version] [int] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](36) NULL,
	[ModifiedBy] [varchar](36) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LambdaComplex_MileStone_Mst_tbl]    Script Date: 12-04-2024 10:00:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LambdaComplex_MileStone_Mst_tbl](
	[ID] [varchar](36) NULL,
	[Name] [varchar](200) NULL,
	[Description] [varchar](max) NULL,
	[RunningStatus] [int] NULL,
	[AssignedTo] [varchar](36) NULL,
	[ReportingStatus] [int] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](36) NULL,
	[ModifiedBy] [varchar](36) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LambdaComplex_Project_Changes_Trn_tbl]    Script Date: 12-04-2024 10:00:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LambdaComplex_Project_Changes_Trn_tbl](
	[ID] [varchar](36) NULL,
	[Name] [varchar](200) NULL,
	[Description] [varchar](max) NULL,
	[RunningStatus] [int] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](36) NULL,
	[ModifiedBy] [varchar](36) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LambdaComplex_Project_Mst_tbl]    Script Date: 12-04-2024 10:00:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LambdaComplex_Project_Mst_tbl](
	[ID] [varchar](36) NULL,
	[Name] [varchar](200) NULL,
	[Description] [varchar](max) NULL,
	[RunningStatus] [int] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](36) NULL,
	[ModifiedBy] [varchar](36) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LambdaComplex_Task_Changes_Trn_tbl]    Script Date: 12-04-2024 10:00:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LambdaComplex_Task_Changes_Trn_tbl](
	[RecordId] [varchar](36) NULL,
	[ID] [varchar](36) NULL,
	[Name] [varchar](200) NULL,
	[Description] [varchar](max) NULL,
	[RunningStatus] [int] NULL,
	[AssignedTo] [varchar](36) NULL,
	[ReportingStatus] [int] NULL,
	[version] [int] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](36) NULL,
	[ModifiedBy] [varchar](36) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LambdaComplex_Task_Mst_tbl]    Script Date: 12-04-2024 10:00:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LambdaComplex_Task_Mst_tbl](
	[ID] [varchar](36) NULL,
	[Name] [varchar](200) NULL,
	[Description] [varchar](max) NULL,
	[RunningStatus] [int] NULL,
	[AssignedTo] [varchar](36) NULL,
	[ReportingStatus] [int] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](36) NULL,
	[ModifiedBy] [varchar](36) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LambdaComplex_Team_Mst_Tbl]    Script Date: 12-04-2024 10:00:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LambdaComplex_Team_Mst_Tbl](
	[ID] [varchar](36) NOT NULL,
	[TeamName] [varchar](200) NULL,
	[TeamDescription] [varchar](max) NULL,
	[LeaderID] [varchar](36) NOT NULL,
	[ProjectID] [varchar](36) NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](36) NULL,
	[ModifiedBy] [varchar](36) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LambdaComplex_TeamMember_Trn_Tbl]    Script Date: 12-04-2024 10:00:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LambdaComplex_TeamMember_Trn_Tbl](
	[ID] [varchar](36) NOT NULL,
	[TeamID] [varchar](36) NOT NULL,
	[TeamMemberID] [varchar](36) NOT NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](36) NULL,
	[ModifiedBy] [varchar](36) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LambdaComplex_User_Mst_Tbl]    Script Date: 12-04-2024 10:00:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LambdaComplex_User_Mst_Tbl](
	[ID] [varchar](36) NOT NULL,
	[FirstName] [varchar](100) NOT NULL,
	[LastName] [varchar](100) NOT NULL,
	[Password] [varchar](500) NOT NULL,
	[UserName] [varchar](100) NOT NULL,
	[EmailID] [varchar](200) NOT NULL,
	[IsDeleted] [bit] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL,
	[Role] [varchar](20) NULL,
	[MobileNumber] [char](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LambdaComplex_WorkTimeline_Trn_Tbl]    Script Date: 12-04-2024 10:00:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LambdaComplex_WorkTimeline_Trn_Tbl](
	[ID] [varchar](36) NULL,
	[Message] [varchar](500) NOT NULL,
	[RecordID] [varchar](36) NOT NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](36) NOT NULL,
	[ModifiedBy] [varchar](36) NOT NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[LambdaComplex_CalendarEvent_Trn_Tbl] ([ID], [EventDescription], [EventDate], [CreatedBy], [ModifiedBy], [IsDeleted], [CreatedOn], [ModifiedOn], [EventPriority], [EventName], [EventTime], [IsExpired]) VALUES (N'03F5BA35-E358-41B0-BB66-93A0463D7662', N'my other event', CAST(N'2024-03-28T00:00:00.000' AS DateTime), N'6DCBDB95-9B96-4E07-A2DE-F6FC6E371812', N'SYSTEM', 0, CAST(N'2024-03-26T10:33:10.823' AS DateTime), CAST(N'2024-04-11T17:56:58.257' AS DateTime), N'LOW', NULL, NULL, 1)
INSERT [dbo].[LambdaComplex_CalendarEvent_Trn_Tbl] ([ID], [EventDescription], [EventDate], [CreatedBy], [ModifiedBy], [IsDeleted], [CreatedOn], [ModifiedOn], [EventPriority], [EventName], [EventTime], [IsExpired]) VALUES (N'07D59335-7253-4BE7-A306-E69470C57017', N'eid', CAST(N'2024-03-28T00:00:00.000' AS DateTime), N'6DCBDB95-9B96-4E07-A2DE-F6FC6E371812', N'SYSTEM', 0, CAST(N'2024-03-26T15:48:32.520' AS DateTime), CAST(N'2024-04-11T17:56:58.257' AS DateTime), N'LOW', NULL, NULL, 1)
INSERT [dbo].[LambdaComplex_CalendarEvent_Trn_Tbl] ([ID], [EventDescription], [EventDate], [CreatedBy], [ModifiedBy], [IsDeleted], [CreatedOn], [ModifiedOn], [EventPriority], [EventName], [EventTime], [IsExpired]) VALUES (N'30CF9385-F67C-4D51-891F-F3704CE26263', N'er', CAST(N'2024-04-10T00:00:00.000' AS DateTime), N'DE73D226-5B97-4800-B00A-71002378397E', N'SYSTEM', 0, CAST(N'2024-04-09T16:39:57.470' AS DateTime), CAST(N'2024-04-11T17:56:58.257' AS DateTime), N'HIGH', N'er', N'12:30 AM', 1)
INSERT [dbo].[LambdaComplex_CalendarEvent_Trn_Tbl] ([ID], [EventDescription], [EventDate], [CreatedBy], [ModifiedBy], [IsDeleted], [CreatedOn], [ModifiedOn], [EventPriority], [EventName], [EventTime], [IsExpired]) VALUES (N'367CA0AD-BFDD-4808-B022-2A45A1DEDF56', N'', CAST(N'2024-04-10T00:00:00.000' AS DateTime), N'DE73D226-5B97-4800-B00A-71002378397E', N'SYSTEM', 0, CAST(N'2024-04-09T16:37:29.510' AS DateTime), CAST(N'2024-04-11T17:56:58.257' AS DateTime), N'HIGH', N'er', N'12:30 AM', 1)
INSERT [dbo].[LambdaComplex_CalendarEvent_Trn_Tbl] ([ID], [EventDescription], [EventDate], [CreatedBy], [ModifiedBy], [IsDeleted], [CreatedOn], [ModifiedOn], [EventPriority], [EventName], [EventTime], [IsExpired]) VALUES (N'55C21F30-3AAA-483F-A0C1-28901F47043C', N'we', CAST(N'2024-04-11T00:00:00.000' AS DateTime), N'DE73D226-5B97-4800-B00A-71002378397E', N'SYSTEM', 0, CAST(N'2024-04-10T20:43:44.360' AS DateTime), CAST(N'2024-04-11T17:56:58.257' AS DateTime), N'HIGH', N'we', N'12:30 AM', 1)
INSERT [dbo].[LambdaComplex_CalendarEvent_Trn_Tbl] ([ID], [EventDescription], [EventDate], [CreatedBy], [ModifiedBy], [IsDeleted], [CreatedOn], [ModifiedOn], [EventPriority], [EventName], [EventTime], [IsExpired]) VALUES (N'5BC1FB77-0E10-4910-B768-2327C71E2B08', N'er', CAST(N'2024-04-10T00:00:00.000' AS DateTime), N'DE73D226-5B97-4800-B00A-71002378397E', N'SYSTEM', 0, CAST(N'2024-04-09T16:35:50.777' AS DateTime), CAST(N'2024-04-11T17:56:58.257' AS DateTime), N'HIGH', N'xyz', N'1:00 AM', 1)
INSERT [dbo].[LambdaComplex_CalendarEvent_Trn_Tbl] ([ID], [EventDescription], [EventDate], [CreatedBy], [ModifiedBy], [IsDeleted], [CreatedOn], [ModifiedOn], [EventPriority], [EventName], [EventTime], [IsExpired]) VALUES (N'64F4321C-E3DF-4874-B569-112DCF69E8D9', N'My event', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'6DCBDB95-9B96-4E07-A2DE-F6FC6E371812', N'SYSTEM', 0, CAST(N'2024-03-26T10:03:31.017' AS DateTime), CAST(N'2024-04-11T17:56:58.257' AS DateTime), N'LOW', NULL, NULL, 1)
INSERT [dbo].[LambdaComplex_CalendarEvent_Trn_Tbl] ([ID], [EventDescription], [EventDate], [CreatedBy], [ModifiedBy], [IsDeleted], [CreatedOn], [ModifiedOn], [EventPriority], [EventName], [EventTime], [IsExpired]) VALUES (N'66F66C94-1764-4C1D-A0B1-723FE43E383B', N' my event for the day ', CAST(N'2024-04-09T00:00:00.000' AS DateTime), N'DE73D226-5B97-4800-B00A-71002378397E', N'SYSTEM', 0, CAST(N'2024-04-08T12:11:33.150' AS DateTime), CAST(N'2024-04-11T17:56:58.257' AS DateTime), N'HIGH', N'My event for the day', N'1:00 AM', 1)
INSERT [dbo].[LambdaComplex_CalendarEvent_Trn_Tbl] ([ID], [EventDescription], [EventDate], [CreatedBy], [ModifiedBy], [IsDeleted], [CreatedOn], [ModifiedOn], [EventPriority], [EventName], [EventTime], [IsExpired]) VALUES (N'6E0B6BFD-E0A5-449B-8FB9-E7D6F4077F56', N'my event', CAST(N'2024-03-28T00:00:00.000' AS DateTime), N'15DE59B3-4751-4A07-AB42-C1FF5F8A2D10', N'SYSTEM', 0, CAST(N'2024-03-27T12:58:39.847' AS DateTime), CAST(N'2024-04-11T17:56:58.257' AS DateTime), N'LOW', NULL, NULL, 1)
INSERT [dbo].[LambdaComplex_CalendarEvent_Trn_Tbl] ([ID], [EventDescription], [EventDate], [CreatedBy], [ModifiedBy], [IsDeleted], [CreatedOn], [ModifiedOn], [EventPriority], [EventName], [EventTime], [IsExpired]) VALUES (N'8D074A09-7E40-4E0D-8731-E77F59494675', N'Important Meeting that day', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'DE73D226-5B97-4800-B00A-71002378397E', N'SYSTEM', 0, CAST(N'2024-03-26T20:14:54.250' AS DateTime), CAST(N'2024-04-11T17:56:58.257' AS DateTime), N'LOW', NULL, NULL, 1)
INSERT [dbo].[LambdaComplex_CalendarEvent_Trn_Tbl] ([ID], [EventDescription], [EventDate], [CreatedBy], [ModifiedBy], [IsDeleted], [CreatedOn], [ModifiedOn], [EventPriority], [EventName], [EventTime], [IsExpired]) VALUES (N'9BBE5C67-53AE-4B3B-96B2-2C1152B6CD28', N' my event for the day ', CAST(N'2024-04-09T00:00:00.000' AS DateTime), N'DE73D226-5B97-4800-B00A-71002378397E', N'SYSTEM', 0, CAST(N'2024-04-08T12:11:33.150' AS DateTime), CAST(N'2024-04-11T17:56:58.257' AS DateTime), N'HIGH', N'My event for the day', N'1:00 AM', 1)
INSERT [dbo].[LambdaComplex_CalendarEvent_Trn_Tbl] ([ID], [EventDescription], [EventDate], [CreatedBy], [ModifiedBy], [IsDeleted], [CreatedOn], [ModifiedOn], [EventPriority], [EventName], [EventTime], [IsExpired]) VALUES (N'B339DA99-688B-4720-8172-B1C3BAFAB179', N'My event', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'6DCBDB95-9B96-4E07-A2DE-F6FC6E371812', N'SYSTEM', 0, CAST(N'2024-03-26T10:32:55.257' AS DateTime), CAST(N'2024-04-11T17:56:58.257' AS DateTime), N'LOW', NULL, NULL, 1)
INSERT [dbo].[LambdaComplex_CalendarEvent_Trn_Tbl] ([ID], [EventDescription], [EventDate], [CreatedBy], [ModifiedBy], [IsDeleted], [CreatedOn], [ModifiedOn], [EventPriority], [EventName], [EventTime], [IsExpired]) VALUES (N'D4890465-57B1-4B78-8055-94F001DFC4C8', N' my event for the day1 ', CAST(N'2024-04-09T00:00:00.000' AS DateTime), N'DE73D226-5B97-4800-B00A-71002378397E', N'SYSTEM', 0, CAST(N'2024-04-08T12:11:38.970' AS DateTime), CAST(N'2024-04-11T17:56:58.257' AS DateTime), N'HIGH', N'My event for the day1', N'12:30 AM', 1)
INSERT [dbo].[LambdaComplex_CalendarEvent_Trn_Tbl] ([ID], [EventDescription], [EventDate], [CreatedBy], [ModifiedBy], [IsDeleted], [CreatedOn], [ModifiedOn], [EventPriority], [EventName], [EventTime], [IsExpired]) VALUES (N'D572EB17-62EA-4835-BDEF-FB94D3D4D6D3', N'34', CAST(N'2024-04-12T00:00:00.000' AS DateTime), N'DE73D226-5B97-4800-B00A-71002378397E', N'DE73D226-5B97-4800-B00A-71002378397E', 0, CAST(N'2024-04-11T08:31:18.063' AS DateTime), CAST(N'2024-04-11T08:31:18.063' AS DateTime), N'HIGH', N'34', N'12:30 AM', 0)
INSERT [dbo].[LambdaComplex_CalendarEvent_Trn_Tbl] ([ID], [EventDescription], [EventDate], [CreatedBy], [ModifiedBy], [IsDeleted], [CreatedOn], [ModifiedOn], [EventPriority], [EventName], [EventTime], [IsExpired]) VALUES (N'DC72C1CD-FDD5-4F94-A9C9-109F003379A7', N' my event for the day ', CAST(N'2024-04-09T00:00:00.000' AS DateTime), N'DE73D226-5B97-4800-B00A-71002378397E', N'SYSTEM', 0, CAST(N'2024-04-08T12:11:33.150' AS DateTime), CAST(N'2024-04-11T17:56:58.257' AS DateTime), N'HIGH', N'My event for the day', N'1:00 AM', 1)
INSERT [dbo].[LambdaComplex_CalendarEvent_Trn_Tbl] ([ID], [EventDescription], [EventDate], [CreatedBy], [ModifiedBy], [IsDeleted], [CreatedOn], [ModifiedOn], [EventPriority], [EventName], [EventTime], [IsExpired]) VALUES (N'E116A228-6D4C-4939-B1D8-3E69780BB918', N' my event for the day1 ', CAST(N'2024-04-09T00:00:00.000' AS DateTime), N'DE73D226-5B97-4800-B00A-71002378397E', N'SYSTEM', 0, CAST(N'2024-04-08T12:11:38.970' AS DateTime), CAST(N'2024-04-11T17:56:58.257' AS DateTime), N'HIGH', N'My event for the day1', N'12:30 AM', 1)
INSERT [dbo].[LambdaComplex_CalendarEvent_Trn_Tbl] ([ID], [EventDescription], [EventDate], [CreatedBy], [ModifiedBy], [IsDeleted], [CreatedOn], [ModifiedOn], [EventPriority], [EventName], [EventTime], [IsExpired]) VALUES (N'E7A00B39-C1FC-4D1D-9C87-6D8134272EB4', N' my event for the day ', CAST(N'2024-04-09T00:00:00.000' AS DateTime), N'DE73D226-5B97-4800-B00A-71002378397E', N'SYSTEM', 0, CAST(N'2024-04-08T12:11:33.150' AS DateTime), CAST(N'2024-04-11T17:56:58.257' AS DateTime), N'HIGH', N'My event for the day', N'1:00 AM', 1)
INSERT [dbo].[LambdaComplex_CalendarEvent_Trn_Tbl] ([ID], [EventDescription], [EventDate], [CreatedBy], [ModifiedBy], [IsDeleted], [CreatedOn], [ModifiedOn], [EventPriority], [EventName], [EventTime], [IsExpired]) VALUES (N'FD6D3988-E0FA-439A-9648-C1CDA0AFC840', N' my event for the day1 ', CAST(N'2024-04-09T00:00:00.000' AS DateTime), N'DE73D226-5B97-4800-B00A-71002378397E', N'SYSTEM', 0, CAST(N'2024-04-08T12:11:38.970' AS DateTime), CAST(N'2024-04-11T17:56:58.257' AS DateTime), N'HIGH', N'My event for the day1', N'12:30 AM', 1)
INSERT [dbo].[LambdaComplex_CalendarEvent_Trn_Tbl] ([ID], [EventDescription], [EventDate], [CreatedBy], [ModifiedBy], [IsDeleted], [CreatedOn], [ModifiedOn], [EventPriority], [EventName], [EventTime], [IsExpired]) VALUES (N'FE10DE71-3F3A-4A26-A692-3F4869400858', N' my event for the day1 ', CAST(N'2024-04-09T00:00:00.000' AS DateTime), N'DE73D226-5B97-4800-B00A-71002378397E', N'SYSTEM', 0, CAST(N'2024-04-08T12:11:38.970' AS DateTime), CAST(N'2024-04-11T17:56:58.257' AS DateTime), N'HIGH', N'My event for the day1', N'12:30 AM', 1)
GO
INSERT [dbo].[LambdaComplex_File_Trn_Tbl] ([ID], [UserID], [RecordID], [FileName], [FileType], [StoredFileName], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (N'ED36A44F-AB4E-4C04-AB6C-FE284F2CE81D', N'DE73D226-5B97-4800-B00A-71002378397E', N'D572EB17-62EA-4835-BDEF-FB94D3D4D6D3', N'Export (9).xlsx', N'xlsx', N'ED36A44F-AB4E-4C04-AB6C-FE284F2CE81D-Export (9).xlsx', 0, N'DE73D226-5B97-4800-B00A-71002378397E', N'DE73D226-5B97-4800-B00A-71002378397E', CAST(N'2024-04-11T08:56:42.400' AS DateTime), CAST(N'2024-04-11T08:56:42.400' AS DateTime))
INSERT [dbo].[LambdaComplex_File_Trn_Tbl] ([ID], [UserID], [RecordID], [FileName], [FileType], [StoredFileName], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (N'D322171B-49E1-4E15-B42A-B9B9FD196CD4', N'DE73D226-5B97-4800-B00A-71002378397E', N'D572EB17-62EA-4835-BDEF-FB94D3D4D6D3', N'Install-and-Upgrade-Script.sql', N'sql', N'D322171B-49E1-4E15-B42A-B9B9FD196CD4-Install-and-Upgrade-Script.sql', 1, N'DE73D226-5B97-4800-B00A-71002378397E', N'DE73D226-5B97-4800-B00A-71002378397E', CAST(N'2024-04-11T08:56:42.407' AS DateTime), CAST(N'2024-04-11T09:01:36.700' AS DateTime))
INSERT [dbo].[LambdaComplex_File_Trn_Tbl] ([ID], [UserID], [RecordID], [FileName], [FileType], [StoredFileName], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (N'35AF4BF4-726F-46D0-9BC0-EE49B2DF9C5D', N'DE73D226-5B97-4800-B00A-71002378397E', N'D572EB17-62EA-4835-BDEF-FB94D3D4D6D3', N'Export (8).xlsx', N'xlsx', N'35AF4BF4-726F-46D0-9BC0-EE49B2DF9C5D-Export (8).xlsx', 0, N'DE73D226-5B97-4800-B00A-71002378397E', N'DE73D226-5B97-4800-B00A-71002378397E', CAST(N'2024-04-11T08:56:42.410' AS DateTime), CAST(N'2024-04-11T08:56:42.410' AS DateTime))
INSERT [dbo].[LambdaComplex_File_Trn_Tbl] ([ID], [UserID], [RecordID], [FileName], [FileType], [StoredFileName], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (N'2624D7C7-96FC-4F01-8C5E-8AEA9DB57B7C', N'DE73D226-5B97-4800-B00A-71002378397E', N'D572EB17-62EA-4835-BDEF-FB94D3D4D6D3', N'Export (7).xlsx', N'xlsx', N'2624D7C7-96FC-4F01-8C5E-8AEA9DB57B7C-Export (7).xlsx', 1, N'DE73D226-5B97-4800-B00A-71002378397E', N'DE73D226-5B97-4800-B00A-71002378397E', CAST(N'2024-04-11T08:56:42.413' AS DateTime), CAST(N'2024-04-11T09:01:59.157' AS DateTime))
GO
INSERT [dbo].[LambdaComplex_Team_Mst_Tbl] ([ID], [TeamName], [TeamDescription], [LeaderID], [ProjectID], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (N'1DCE50DE-F5BA-4908-B1E2-2B038BE13A5D', N'Lambda Core Team', N' Lambda Core team infinite rocks!!!!!!
                        ', N'8334276F-F2DB-42A8-A2B2-0558A1CD87D8', N'er', 0, N'DE73D226-5B97-4800-B00A-71002378397E', N'DE73D226-5B97-4800-B00A-71002378397E', CAST(N'2024-04-11T13:03:16.350' AS DateTime), CAST(N'2024-04-11T13:03:16.350' AS DateTime))
INSERT [dbo].[LambdaComplex_Team_Mst_Tbl] ([ID], [TeamName], [TeamDescription], [LeaderID], [ProjectID], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (N'4734A958-B6E1-41D8-8301-A6F7AE5A5FE9', N'X Force 3', N'&lt;strong&gt;&lt;span style="text-decoration:underline;color:#ff0000;background-color:#0000ff;"&gt;&lt;em&gt;X FORCe 3 ROCKS!!!!&lt;/em&gt;&lt;/span&gt;&lt;/strong&gt;', N'C7A5C2CC-D769-4553-A86F-7D3CA5BD5B76', N'23', 1, N'DE73D226-5B97-4800-B00A-71002378397E', N'DE73D226-5B97-4800-B00A-71002378397E', CAST(N'2024-04-06T19:48:55.940' AS DateTime), CAST(N'2024-04-06T19:48:55.940' AS DateTime))
INSERT [dbo].[LambdaComplex_Team_Mst_Tbl] ([ID], [TeamName], [TeamDescription], [LeaderID], [ProjectID], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (N'B663E300-C9E6-48AE-BD38-E60B4A5B7C2A', N'New Team ', N'&lt;p&gt;&lt;strong&gt;&lt;em&gt;Team Motto:-&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;span style="color:#ff3300;"&gt;&lt;em&gt;&lt;strong&gt;Work Smart&lt;/strong&gt;&lt;/em&gt;&lt;/span&gt;&lt;/li&gt;&lt;li&gt;&lt;span style="color:#ff3300;"&gt;&lt;em&gt;&lt;strong&gt;Work safe&lt;/strong&gt;&lt;/em&gt;&lt;/span&gt;&lt;/li&gt;&lt;li&gt;&lt;span style="color:#ff3300;"&gt;&lt;em&gt;&lt;strong&gt;Prioritize productivity &lt;/strong&gt;&lt;/em&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;', N'81378D7A-53CD-4DD3-8D4D-E6F4A0B50811', N'23', 0, N'DE73D226-5B97-4800-B00A-71002378397E', N'DE73D226-5B97-4800-B00A-71002378397E', CAST(N'2024-04-10T09:56:33.023' AS DateTime), CAST(N'2024-04-10T09:56:33.023' AS DateTime))
INSERT [dbo].[LambdaComplex_Team_Mst_Tbl] ([ID], [TeamName], [TeamDescription], [LeaderID], [ProjectID], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (N'D58E1ECA-202F-44B8-8B00-2FDC5F9BC948', N'ABC team', N'&lt;ul&gt;&lt;li&gt;Work diligent&lt;/li&gt;&lt;li&gt;Work safe&lt;/li&gt;&lt;/ul&gt;', N'8334276F-F2DB-42A8-A2B2-0558A1CD87D8', N'24', 0, N'DE73D226-5B97-4800-B00A-71002378397E', N'DE73D226-5B97-4800-B00A-71002378397E', CAST(N'2024-04-06T17:39:07.520' AS DateTime), CAST(N'2024-04-06T17:39:07.520' AS DateTime))
GO
INSERT [dbo].[LambdaComplex_TeamMember_Trn_Tbl] ([ID], [TeamID], [TeamMemberID], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (N'1E10E4D4-C3B4-455F-9B49-4442FCC52EE1', N'B663E300-C9E6-48AE-BD38-E60B4A5B7C2A', N'2907AAE4-860A-430F-8DAB-62E1998911EA', 0, N'DE73D226-5B97-4800-B00A-71002378397E', N'DE73D226-5B97-4800-B00A-71002378397E', CAST(N'2024-04-10T09:56:49.220' AS DateTime), CAST(N'2024-04-10T09:56:49.220' AS DateTime))
INSERT [dbo].[LambdaComplex_TeamMember_Trn_Tbl] ([ID], [TeamID], [TeamMemberID], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (N'46C5BB62-615E-47DF-98E2-DAFAB0740AFC', N'B663E300-C9E6-48AE-BD38-E60B4A5B7C2A', N'15DE59B3-4751-4A07-AB42-C1FF5F8A2D10', 0, N'DE73D226-5B97-4800-B00A-71002378397E', N'DE73D226-5B97-4800-B00A-71002378397E', CAST(N'2024-04-10T09:57:05.403' AS DateTime), CAST(N'2024-04-10T09:57:05.403' AS DateTime))
INSERT [dbo].[LambdaComplex_TeamMember_Trn_Tbl] ([ID], [TeamID], [TeamMemberID], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (N'75B4F81E-1641-49FD-8A3F-2D780C49B35F', N'B663E300-C9E6-48AE-BD38-E60B4A5B7C2A', N'48A23EE3-CBE6-4104-8D91-C435EBA89A84', 0, N'DE73D226-5B97-4800-B00A-71002378397E', N'DE73D226-5B97-4800-B00A-71002378397E', CAST(N'2024-04-10T09:56:57.230' AS DateTime), CAST(N'2024-04-10T09:56:57.230' AS DateTime))
INSERT [dbo].[LambdaComplex_TeamMember_Trn_Tbl] ([ID], [TeamID], [TeamMemberID], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (N'C5B4BBE5-541F-4D33-8FCF-3E09EEE18F4A', N'D58E1ECA-202F-44B8-8B00-2FDC5F9BC948', N'2907AAE4-860A-430F-8DAB-62E1998911EA', 1, N'DE73D226-5B97-4800-B00A-71002378397E', N'DE73D226-5B97-4800-B00A-71002378397E', CAST(N'2024-04-06T21:50:30.820' AS DateTime), CAST(N'2024-04-06T21:50:30.820' AS DateTime))
INSERT [dbo].[LambdaComplex_TeamMember_Trn_Tbl] ([ID], [TeamID], [TeamMemberID], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (N'F9CFFF8A-1132-4F19-B32F-9A419CF51064', N'D58E1ECA-202F-44B8-8B00-2FDC5F9BC948', N'48A23EE3-CBE6-4104-8D91-C435EBA89A84', 0, N'DE73D226-5B97-4800-B00A-71002378397E', N'DE73D226-5B97-4800-B00A-71002378397E', CAST(N'2024-04-06T21:45:00.943' AS DateTime), CAST(N'2024-04-06T21:45:00.943' AS DateTime))
GO
INSERT [dbo].[LambdaComplex_User_Mst_Tbl] ([ID], [FirstName], [LastName], [Password], [UserName], [EmailID], [IsDeleted], [CreatedOn], [ModifiedOn], [Role], [MobileNumber]) VALUES (N'DE73D226-5B97-4800-B00A-71002378397E', N'Rishit', N'Selia', N'HIM~1»£Õ¬«n{·ªtÎ…ÔVV^õsvw²', N'Rishit.Selia', N'Rishit.Selia@gmail.com', 0, CAST(N'2024-03-12T22:54:20.747' AS DateTime), CAST(N'2024-03-24T11:38:30.993' AS DateTime), N'Admin', N'9099433022')
INSERT [dbo].[LambdaComplex_User_Mst_Tbl] ([ID], [FirstName], [LastName], [Password], [UserName], [EmailID], [IsDeleted], [CreatedOn], [ModifiedOn], [Role], [MobileNumber]) VALUES (N'6DCBDB95-9B96-4E07-A2DE-F6FC6E371812', N'Muneer', N'Ahmad', N'HIM~1»£Õ¬«n{·ªtÎ…ÔVV^õsvw²', N'Muneer.Ahmad', N'Muneer.Ahmad@gmail.com', 0, CAST(N'2024-03-25T09:25:09.920' AS DateTime), CAST(N'2024-03-26T15:49:15.750' AS DateTime), N'Admin', N'9760811155')
INSERT [dbo].[LambdaComplex_User_Mst_Tbl] ([ID], [FirstName], [LastName], [Password], [UserName], [EmailID], [IsDeleted], [CreatedOn], [ModifiedOn], [Role], [MobileNumber]) VALUES (N'2907AAE4-860A-430F-8DAB-62E1998911EA', N'Berlin', N'Singh', N'HIM~1»£Õ¬«n{·ªtÎ…ÔVV^õsvw²', N'Berlin.Singh', N'Berlin.Singh@gmail.com', 0, CAST(N'2024-03-25T09:25:50.130' AS DateTime), CAST(N'2024-03-25T09:25:50.130' AS DateTime), N'Dev', N'9090909090')
INSERT [dbo].[LambdaComplex_User_Mst_Tbl] ([ID], [FirstName], [LastName], [Password], [UserName], [EmailID], [IsDeleted], [CreatedOn], [ModifiedOn], [Role], [MobileNumber]) VALUES (N'8334276F-F2DB-42A8-A2B2-0558A1CD87D8', N'Afraa', N'Shariff', N'HIM~1»£Õ¬«n{·ªtÎ…ÔVV^õsvw²', N'Afraa.Shariff', N'Afraa.Shariff@gmail.com', 0, CAST(N'2024-03-25T09:26:18.760' AS DateTime), CAST(N'2024-03-25T09:26:18.760' AS DateTime), N'Lead', N'9090909090')
INSERT [dbo].[LambdaComplex_User_Mst_Tbl] ([ID], [FirstName], [LastName], [Password], [UserName], [EmailID], [IsDeleted], [CreatedOn], [ModifiedOn], [Role], [MobileNumber]) VALUES (N'48A23EE3-CBE6-4104-8D91-C435EBA89A84', N'Rajmukut', N'Gogoi', N'HIM~1»£Õ¬«n{·ªtÎ…ÔVV^õsvw²', N'Rajmukut.Gogoi', N'Rajmukut.Gogoi@gmail.com', 0, CAST(N'2024-03-25T09:26:38.097' AS DateTime), CAST(N'2024-03-25T09:26:38.097' AS DateTime), N'Dev', N'9090909090')
INSERT [dbo].[LambdaComplex_User_Mst_Tbl] ([ID], [FirstName], [LastName], [Password], [UserName], [EmailID], [IsDeleted], [CreatedOn], [ModifiedOn], [Role], [MobileNumber]) VALUES (N'C7A5C2CC-D769-4553-A86F-7D3CA5BD5B76', N'xyz', N'xyz', N'hW*ç.æ¿ã· Üfå@þö@59ÿ<QÉiÆèò÷†ò—', N'xyz.xyz', N'xyz.xyz@gmail.com', 0, CAST(N'2024-03-26T20:06:51.570' AS DateTime), CAST(N'2024-03-26T20:06:51.570' AS DateTime), N'lead', N'9090909090')
INSERT [dbo].[LambdaComplex_User_Mst_Tbl] ([ID], [FirstName], [LastName], [Password], [UserName], [EmailID], [IsDeleted], [CreatedOn], [ModifiedOn], [Role], [MobileNumber]) VALUES (N'15DE59B3-4751-4A07-AB42-C1FF5F8A2D10', N'mun', N'ahm', N'Î¤KRF_õÊƒ¸?;aWì[×*£ƒ''±gŒÑ³uŠ', N'mun.ahm', N'mun.ahm@gmail.com', 0, CAST(N'2024-03-27T12:55:20.747' AS DateTime), CAST(N'2024-03-27T12:55:20.747' AS DateTime), N'dev', N'9090909090')
INSERT [dbo].[LambdaComplex_User_Mst_Tbl] ([ID], [FirstName], [LastName], [Password], [UserName], [EmailID], [IsDeleted], [CreatedOn], [ModifiedOn], [Role], [MobileNumber]) VALUES (N'81378D7A-53CD-4DD3-8D4D-E6F4A0B50811', N'ABC', N'XYZ', N'ßëØRîÆ\A¥‹øÎÎH¸gDpÞzš0¥¾û8ÚÆ', N'ABC.XYZ', N'ABC.xyz1234@gmail.com', 0, CAST(N'2024-04-10T09:50:16.780' AS DateTime), CAST(N'2024-04-10T09:50:16.780' AS DateTime), N'lead', N'9090909090')
GO
INSERT [dbo].[LambdaComplex_WorkTimeline_Trn_Tbl] ([ID], [Message], [RecordID], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (N'0C247BCA-C5C1-4A30-A2A4-BD93F49E1CE7', N'Created a new Team named Lambda Core Team', N'1DCE50DE-F5BA-4908-B1E2-2B038BE13A5D', 0, N'DE73D226-5B97-4800-B00A-71002378397E', N'DE73D226-5B97-4800-B00A-71002378397E', CAST(N'2024-04-11T13:03:31.330' AS DateTime), CAST(N'2024-04-11T13:03:31.330' AS DateTime))
INSERT [dbo].[LambdaComplex_WorkTimeline_Trn_Tbl] ([ID], [Message], [RecordID], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (N'E30ACCFC-5B54-49DF-B62C-0570FA87582E', N'Updated a new Team named Lambda Core Team', N'1DCE50DE-F5BA-4908-B1E2-2B038BE13A5D', 0, N'DE73D226-5B97-4800-B00A-71002378397E', N'DE73D226-5B97-4800-B00A-71002378397E', CAST(N'2024-04-11T13:04:34.723' AS DateTime), CAST(N'2024-04-11T13:04:34.723' AS DateTime))
GO
ALTER TABLE [dbo].[LambdaComplex_CalendarEvent_Trn_Tbl] ADD  CONSTRAINT [DF__LambdaComple__ID__49C3F6B7]  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[LambdaComplex_CalendarEvent_Trn_Tbl] ADD  CONSTRAINT [DF__LambdaCom__Event__4AB81AF0]  DEFAULT ('') FOR [EventDescription]
GO
ALTER TABLE [dbo].[LambdaComplex_CalendarEvent_Trn_Tbl] ADD  CONSTRAINT [DF__LambdaCom__Event__4BAC3F29]  DEFAULT (getdate()) FOR [EventDate]
GO
ALTER TABLE [dbo].[LambdaComplex_CalendarEvent_Trn_Tbl] ADD  CONSTRAINT [DF__LambdaCom__IsDel__4CA06362]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[LambdaComplex_CalendarEvent_Trn_Tbl] ADD  CONSTRAINT [DF__LambdaCom__Creat__4D94879B]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[LambdaComplex_CalendarEvent_Trn_Tbl] ADD  CONSTRAINT [DF__LambdaCom__Modif__4E88ABD4]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[LambdaComplex_CalendarEvent_Trn_Tbl] ADD  CONSTRAINT [DF__LambdaCom__Event__4F7CD00D]  DEFAULT ('MID') FOR [EventPriority]
GO
ALTER TABLE [dbo].[LambdaComplex_CalendarEvent_Trn_Tbl] ADD  CONSTRAINT [DF__LambdaCom__IsExp__4D5F7D71]  DEFAULT ((0)) FOR [IsExpired]
GO
ALTER TABLE [dbo].[LambdaComplex_File_Trn_Tbl] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[LambdaComplex_File_Trn_Tbl] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[LambdaComplex_File_Trn_Tbl] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[LambdaComplex_File_Trn_Tbl] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[LambdaComplex_Goal_Changes_Trn_tbl] ADD  DEFAULT (newid()) FOR [RecordId]
GO
ALTER TABLE [dbo].[LambdaComplex_Goal_Changes_Trn_tbl] ADD  DEFAULT ('') FOR [Name]
GO
ALTER TABLE [dbo].[LambdaComplex_Goal_Changes_Trn_tbl] ADD  DEFAULT ('') FOR [Description]
GO
ALTER TABLE [dbo].[LambdaComplex_Goal_Changes_Trn_tbl] ADD  DEFAULT ((0)) FOR [RunningStatus]
GO
ALTER TABLE [dbo].[LambdaComplex_Goal_Changes_Trn_tbl] ADD  DEFAULT ((0)) FOR [ReportingStatus]
GO
ALTER TABLE [dbo].[LambdaComplex_Goal_Changes_Trn_tbl] ADD  DEFAULT ((1)) FOR [version]
GO
ALTER TABLE [dbo].[LambdaComplex_Goal_Changes_Trn_tbl] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[LambdaComplex_Goal_Changes_Trn_tbl] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[LambdaComplex_Goal_Changes_Trn_tbl] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[LambdaComplex_Goal_Mst_tbl] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[LambdaComplex_Goal_Mst_tbl] ADD  DEFAULT ('') FOR [Name]
GO
ALTER TABLE [dbo].[LambdaComplex_Goal_Mst_tbl] ADD  DEFAULT ('') FOR [Description]
GO
ALTER TABLE [dbo].[LambdaComplex_Goal_Mst_tbl] ADD  DEFAULT ((0)) FOR [RunningStatus]
GO
ALTER TABLE [dbo].[LambdaComplex_Goal_Mst_tbl] ADD  DEFAULT ((0)) FOR [ReportingStatus]
GO
ALTER TABLE [dbo].[LambdaComplex_Goal_Mst_tbl] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[LambdaComplex_Goal_Mst_tbl] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[LambdaComplex_Goal_Mst_tbl] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[LambdaComplex_MileStone_Changes_Trn_tbl] ADD  DEFAULT (newid()) FOR [RecordId]
GO
ALTER TABLE [dbo].[LambdaComplex_MileStone_Changes_Trn_tbl] ADD  DEFAULT ('') FOR [Name]
GO
ALTER TABLE [dbo].[LambdaComplex_MileStone_Changes_Trn_tbl] ADD  DEFAULT ('') FOR [Description]
GO
ALTER TABLE [dbo].[LambdaComplex_MileStone_Changes_Trn_tbl] ADD  DEFAULT ((0)) FOR [RunningStatus]
GO
ALTER TABLE [dbo].[LambdaComplex_MileStone_Changes_Trn_tbl] ADD  DEFAULT ((0)) FOR [ReportingStatus]
GO
ALTER TABLE [dbo].[LambdaComplex_MileStone_Changes_Trn_tbl] ADD  DEFAULT ((1)) FOR [version]
GO
ALTER TABLE [dbo].[LambdaComplex_MileStone_Changes_Trn_tbl] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[LambdaComplex_MileStone_Changes_Trn_tbl] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[LambdaComplex_MileStone_Changes_Trn_tbl] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[LambdaComplex_MileStone_Mst_tbl] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[LambdaComplex_MileStone_Mst_tbl] ADD  DEFAULT ('') FOR [Name]
GO
ALTER TABLE [dbo].[LambdaComplex_MileStone_Mst_tbl] ADD  DEFAULT ('') FOR [Description]
GO
ALTER TABLE [dbo].[LambdaComplex_MileStone_Mst_tbl] ADD  DEFAULT ((0)) FOR [RunningStatus]
GO
ALTER TABLE [dbo].[LambdaComplex_MileStone_Mst_tbl] ADD  DEFAULT ((0)) FOR [ReportingStatus]
GO
ALTER TABLE [dbo].[LambdaComplex_MileStone_Mst_tbl] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[LambdaComplex_MileStone_Mst_tbl] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[LambdaComplex_MileStone_Mst_tbl] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[LambdaComplex_Project_Changes_Trn_tbl] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[LambdaComplex_Project_Changes_Trn_tbl] ADD  DEFAULT ('') FOR [Name]
GO
ALTER TABLE [dbo].[LambdaComplex_Project_Changes_Trn_tbl] ADD  DEFAULT ('') FOR [Description]
GO
ALTER TABLE [dbo].[LambdaComplex_Project_Changes_Trn_tbl] ADD  DEFAULT ((0)) FOR [RunningStatus]
GO
ALTER TABLE [dbo].[LambdaComplex_Project_Changes_Trn_tbl] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[LambdaComplex_Project_Changes_Trn_tbl] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[LambdaComplex_Project_Changes_Trn_tbl] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[LambdaComplex_Project_Mst_tbl] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[LambdaComplex_Project_Mst_tbl] ADD  DEFAULT ('') FOR [Name]
GO
ALTER TABLE [dbo].[LambdaComplex_Project_Mst_tbl] ADD  DEFAULT ('') FOR [Description]
GO
ALTER TABLE [dbo].[LambdaComplex_Project_Mst_tbl] ADD  DEFAULT ((0)) FOR [RunningStatus]
GO
ALTER TABLE [dbo].[LambdaComplex_Project_Mst_tbl] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[LambdaComplex_Project_Mst_tbl] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[LambdaComplex_Project_Mst_tbl] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[LambdaComplex_Task_Changes_Trn_tbl] ADD  DEFAULT (newid()) FOR [RecordId]
GO
ALTER TABLE [dbo].[LambdaComplex_Task_Changes_Trn_tbl] ADD  DEFAULT ('') FOR [Name]
GO
ALTER TABLE [dbo].[LambdaComplex_Task_Changes_Trn_tbl] ADD  DEFAULT ('') FOR [Description]
GO
ALTER TABLE [dbo].[LambdaComplex_Task_Changes_Trn_tbl] ADD  DEFAULT ((0)) FOR [RunningStatus]
GO
ALTER TABLE [dbo].[LambdaComplex_Task_Changes_Trn_tbl] ADD  DEFAULT ((0)) FOR [ReportingStatus]
GO
ALTER TABLE [dbo].[LambdaComplex_Task_Changes_Trn_tbl] ADD  DEFAULT ((1)) FOR [version]
GO
ALTER TABLE [dbo].[LambdaComplex_Task_Changes_Trn_tbl] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[LambdaComplex_Task_Changes_Trn_tbl] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[LambdaComplex_Task_Changes_Trn_tbl] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[LambdaComplex_Task_Mst_tbl] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[LambdaComplex_Task_Mst_tbl] ADD  DEFAULT ('') FOR [Name]
GO
ALTER TABLE [dbo].[LambdaComplex_Task_Mst_tbl] ADD  DEFAULT ('') FOR [Description]
GO
ALTER TABLE [dbo].[LambdaComplex_Task_Mst_tbl] ADD  DEFAULT ((0)) FOR [RunningStatus]
GO
ALTER TABLE [dbo].[LambdaComplex_Task_Mst_tbl] ADD  DEFAULT ((0)) FOR [ReportingStatus]
GO
ALTER TABLE [dbo].[LambdaComplex_Task_Mst_tbl] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[LambdaComplex_Task_Mst_tbl] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[LambdaComplex_Task_Mst_tbl] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[LambdaComplex_Team_Mst_Tbl] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[LambdaComplex_Team_Mst_Tbl] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[LambdaComplex_Team_Mst_Tbl] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[LambdaComplex_Team_Mst_Tbl] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[LambdaComplex_TeamMember_Trn_Tbl] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[LambdaComplex_TeamMember_Trn_Tbl] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[LambdaComplex_TeamMember_Trn_Tbl] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[LambdaComplex_TeamMember_Trn_Tbl] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[LambdaComplex_User_Mst_Tbl] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[LambdaComplex_User_Mst_Tbl] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[LambdaComplex_User_Mst_Tbl] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[LambdaComplex_User_Mst_Tbl] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[LambdaComplex_WorkTimeline_Trn_Tbl] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[LambdaComplex_WorkTimeline_Trn_Tbl] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[LambdaComplex_WorkTimeline_Trn_Tbl] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[LambdaComplex_WorkTimeline_Trn_Tbl] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
USE [master]
GO
ALTER DATABASE [LambdaComplex] SET  READ_WRITE 
GO
