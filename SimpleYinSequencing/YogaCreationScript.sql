USE [master]
GO
/****** Object:  Database [yoga]    Script Date: 6/25/2017 9:49:39 AM ******/
CREATE DATABASE [yoga]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'yoga', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\yoga.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'yoga_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\yoga_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [yoga] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [yoga].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [yoga] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [yoga] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [yoga] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [yoga] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [yoga] SET ARITHABORT OFF 
GO
ALTER DATABASE [yoga] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [yoga] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [yoga] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [yoga] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [yoga] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [yoga] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [yoga] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [yoga] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [yoga] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [yoga] SET  DISABLE_BROKER 
GO
ALTER DATABASE [yoga] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [yoga] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [yoga] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [yoga] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [yoga] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [yoga] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [yoga] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [yoga] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [yoga] SET  MULTI_USER 
GO
ALTER DATABASE [yoga] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [yoga] SET DB_CHAINING OFF 
GO
ALTER DATABASE [yoga] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [yoga] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [yoga] SET DELAYED_DURABILITY = DISABLED 
GO
USE [yoga]
GO
/****** Object:  Table [dbo].[poses]    Script Date: 6/25/2017 9:49:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[poses](
	[name] [varchar](100) NOT NULL,
	[sanskrit] [varchar](100) NULL,
	[difficulty] [int] NULL,
	[start_pose] [bit] NULL,
	[end_pose] [bit] NULL,
	[unilateral] [bit] NULL,
	[rest] [bit] NULL,
	[duration_in_seconds] [int] NULL,
	[fatigue_level] [int] NULL,
	[use_beginning] [bit] NULL,
	[use_middle] [bit] NULL,
	[use_end] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'anjaneyasana', N'anjaneyasana', 2, 0, 0, 1, 0, 60, 5, 1, 1, 0)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'anjaneyasana twist', N'anjaneyasana ', 2, 0, 0, 1, 0, 60, 5, 1, 1, 0)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'bhekasana', N'bhekasana', 5, 0, 0, 0, 0, 90, 10, 0, 1, 1)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'boat', N'navasana', 2, 0, 0, 0, 0, 60, 5, 0, 1, 1)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'bound angle', N'baddha konasana', 1, 1, 1, 0, 1, 120, 1, 1, 0, 1)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'bow pose', N'dhanurasana', 3, 0, 0, 0, 0, 90, 5, 0, 1, 1)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'bridge pose', N'setu bandhasana?', 2, 0, 1, 0, 0, 90, 5, 0, 0, 1)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'camel pose', N'ustrasana', 3, 0, 0, 0, 0, 90, 10, 0, 1, 1)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'cat cow', N'marjaryasana bitilasana', 1, 1, 0, 0, 0, 120, 5, 1, 0, 0)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'chair', N'utkatasana', 2, 0, 0, 0, 0, 60, 10, 1, 1, 1)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'child''s pose', N'balasana', 1, 1, 1, 0, 1, 120, 1, 1, 1, 1)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'cobra', N'bhujangasana', 1, 1, 0, 0, 0, 60, 5, 1, 1, 1)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'corpse pose', N'savasana', 1, 1, 0, 0, 1, 60, 1, 1, 1, 0)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'cow face pose', N'gomukhasana', 3, 0, 0, 1, 0, 90, 5, 0, 1, 1)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'crescent warrior', N'ashta chandrasana', 3, 0, 0, 1, 0, 60, 10, 0, 1, 0)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'crow pose', N'bakasana', 4, 0, 0, 0, 0, 90, 15, 0, 1, 1)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'dancing shiva', N'natarajasana', 3, 0, 0, 1, 0, 60, 5, 0, 1, 1)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'dolphin ', N'shishulasana', 3, 0, 0, 0, 0, 90, 10, 0, 1, 1)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'down dog', N'adho mukha svanasana', 1, 1, 0, 0, 0, 60, 5, 1, 1, 1)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'eagle pose', N'garudasana', 3, 0, 0, 1, 0, 60, 10, 0, 1, 1)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'ear-squeezing pose', N'karnapidasana', 4, 0, 0, 0, 0, 60, 5, 0, 0, 1)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'eight angle pose', N'astavakrasana', 5, 0, 0, 1, 0, 30, 15, 0, 1, 0)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'extended side angle', N'utthita parsvakonasana', 2, 0, 0, 1, 0, 60, 5, 0, 1, 0)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'fire log ', N'agnistambhasana', 2, 0, 1, 1, 0, 60, 2, 1, 0, 1)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'fish pose', N'matsyasana', 2, 0, 0, 0, 0, 90, 5, 0, 0, 1)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'forearm plank', N'?', 3, 0, 0, 0, 0, 60, 10, 1, 1, 1)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'forearm stand', N'pincha mayurasana', 5, 0, 0, 0, 0, 120, 20, 0, 1, 1)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'four limbed staff pose', N'chaturanga dandasana', 2, 0, 0, 0, 0, 30, 5, 1, 1, 0)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'gate pose', N'parighasana', 2, 0, 0, 1, 0, 60, 2, 1, 1, 1)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'goddess squat', N'malasana', 2, 0, 0, 0, 0, 90, 5, 1, 1, 1)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'half bound lotus forward fold', N'ardha baddha padmottanasana', 5, 0, 0, 1, 0, 90, 10, 0, 1, 1)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'half camel', N'ardha ustrasana', 2, 0, 0, 0, 0, 90, 5, 1, 1, 1)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'half moon', N'ardha chandrasana', 3, 0, 0, 1, 0, 60, 10, 0, 1, 0)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'halfway lift', N'ardha uttanasana', 1, 0, 0, 0, 0, 60, 2, 1, 1, 0)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'hand to foot pose', N'pada hastasana', 2, 0, 0, 0, 0, 90, 2, 1, 1, 1)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'handstand', N'adho mukha vrksasana', 4, 0, 0, 0, 0, 120, 20, 0, 1, 1)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'head to knee pose', N'janu sirsasana', 2, 0, 0, 1, 0, 60, 2, 1, 1, 1)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'hero pose', N'virasana', 2, 1, 0, 0, 0, 90, 3, 1, 0, 1)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'heron pose', N'krouchasana', 4, 0, 0, 1, 0, 90, 10, 0, 1, 1)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'legs up the wall', N'viparita karani', 1, 1, 1, 0, 0, 90, 1, 1, 0, 1)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'locust', N'salabhasana', 2, 0, 0, 0, 0, 60, 10, 1, 1, 1)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'monkey pose', N'hanumanasana', 4, 0, 0, 1, 0, 90, 5, 0, 1, 1)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'mountain', N'tadasana', 1, 1, 0, 0, 1, 60, 1, 1, 1, 1)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'plank', N'phalakasana', 3, 0, 0, 0, 0, 60, 10, 1, 1, 1)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'plow ', N'halasana', 3, 0, 1, 0, 0, 90, 5, 0, 0, 1)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'puppy dog', N'anahatasana', 1, 1, 0, 0, 0, 60, 5, 1, 0, 1)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'pyramid', N'parsvottanasana', 3, 0, 0, 1, 0, 90, 5, 0, 1, 1)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'reclined bound angle', N'supta baddha konasana', 1, 1, 1, 0, 1, 120, 1, 1, 0, 1)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'reclined hero pose', N'supta virasana', 3, 0, 0, 0, 0, 60, 5, 1, 0, 1)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'revolved chair', N'parivrtta utkatasana', 3, 0, 0, 1, 0, 60, 10, 1, 1, 1)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'revolved half moon', N'parivrtta ardha chandrasana', 3, 0, 0, 1, 0, 60, 10, 0, 1, 1)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'revolved head to knee pose', N'parivrtta janu sirsasana', 3, 0, 0, 1, 0, 60, 3, 1, 1, 1)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'revolved triangle', N'parivrtta trikonasana', 3, 0, 0, 1, 0, 60, 10, 0, 1, 1)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'samastihi', N'samastihi', 1, 1, 0, 0, 0, 30, 1, 1, 1, 0)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'seated forward fold', N'paschimottanasana', 2, 1, 0, 0, 1, 90, 1, 1, 0, 1)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'seated wide legged forward fold', N'upavista konasana', 2, 1, 0, 0, 0, 90, 3, 1, 0, 1)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'shoulder squeezing pose', N'bhujapidasana', 5, 0, 0, 0, 0, 120, 15, 0, 1, 1)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'side crow', N'parsva bakasana', 4, 0, 0, 1, 0, 30, 10, 0, 1, 0)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'side plank', N'vasisthasana', 3, 0, 0, 1, 0, 60, 10, 1, 1, 0)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'staff pose', N'dandasana', 1, 1, 0, 0, 1, 60, 1, 1, 0, 1)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'standing forward fold', N'uttanasana', 1, 0, 0, 0, 0, 60, 1, 1, 1, 0)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'supine twist', N'supta matsyendrasana', 1, 1, 1, 1, 1, 120, 1, 1, 0, 1)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'tree pose', N'vrksasana', 2, 0, 0, 1, 0, 60, 5, 0, 1, 1)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'triangle', N'trikonasana', 2, 0, 0, 1, 0, 60, 5, 0, 1, 1)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'updog', N'urdhva mukha svanasana', 2, 0, 0, 0, 0, 30, 5, 1, 1, 0)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'upward facing plank', N'pursvottanasana', 3, 0, 0, 0, 0, 60, 10, 0, 1, 1)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'upward hands pose', N'urdhva hastasana', 1, 0, 0, 0, 0, 60, 1, 1, 1, 0)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'warrior 1', N'virabhadrasana 1', 2, 0, 0, 1, 0, 60, 5, 1, 1, 0)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'warrior 2', N'virabhadrasana 2', 2, 0, 0, 1, 0, 60, 5, 1, 1, 0)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'warrior 3', N'virabhadrasana 3', 3, 0, 0, 1, 0, 60, 10, 0, 1, 0)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'wheel', N'urdhva dhanurasana', 3, 0, 0, 0, 0, 60, 10, 0, 0, 1)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'wide legged forward fold', N'prasarita padottanasana ', 2, 0, 0, 0, 0, 90, 5, 0, 1, 0)
INSERT [dbo].[poses] ([name], [sanskrit], [difficulty], [start_pose], [end_pose], [unilateral], [rest], [duration_in_seconds], [fatigue_level], [use_beginning], [use_middle], [use_end]) VALUES (N'yogic bicycles', N'dvicakravahanasana', 3, 0, 0, 0, 0, 60, 10, 0, 1, 1)
USE [master]
GO
ALTER DATABASE [yoga] SET  READ_WRITE 
GO
