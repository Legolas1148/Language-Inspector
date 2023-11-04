USE [master]
GO
/****** Object:  Database [Spell-Check-Word-Reopository]    Script Date: 04-11-2023 3.49.26 PM ******/
CREATE DATABASE [Spell-Check-Word-Reopository]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Spell-Check-Word-Reopository', FILENAME = N'F:\UC\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Spell-Check-Word-Reopository.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Spell-Check-Word-Reopository_log', FILENAME = N'F:\UC\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Spell-Check-Word-Reopository_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Spell-Check-Word-Reopository] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Spell-Check-Word-Reopository].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Spell-Check-Word-Reopository] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Spell-Check-Word-Reopository] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Spell-Check-Word-Reopository] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Spell-Check-Word-Reopository] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Spell-Check-Word-Reopository] SET ARITHABORT OFF 
GO
ALTER DATABASE [Spell-Check-Word-Reopository] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Spell-Check-Word-Reopository] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Spell-Check-Word-Reopository] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Spell-Check-Word-Reopository] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Spell-Check-Word-Reopository] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Spell-Check-Word-Reopository] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Spell-Check-Word-Reopository] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Spell-Check-Word-Reopository] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Spell-Check-Word-Reopository] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Spell-Check-Word-Reopository] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Spell-Check-Word-Reopository] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Spell-Check-Word-Reopository] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Spell-Check-Word-Reopository] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Spell-Check-Word-Reopository] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Spell-Check-Word-Reopository] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Spell-Check-Word-Reopository] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Spell-Check-Word-Reopository] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Spell-Check-Word-Reopository] SET RECOVERY FULL 
GO
ALTER DATABASE [Spell-Check-Word-Reopository] SET  MULTI_USER 
GO
ALTER DATABASE [Spell-Check-Word-Reopository] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Spell-Check-Word-Reopository] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Spell-Check-Word-Reopository] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Spell-Check-Word-Reopository] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Spell-Check-Word-Reopository] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Spell-Check-Word-Reopository] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Spell-Check-Word-Reopository', N'ON'
GO
ALTER DATABASE [Spell-Check-Word-Reopository] SET QUERY_STORE = ON
GO
ALTER DATABASE [Spell-Check-Word-Reopository] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Spell-Check-Word-Reopository]
GO
/****** Object:  Table [dbo].[Spelling_Frequencies]    Script Date: 04-11-2023 3.49.26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Spelling_Frequencies](
	[Word] [varchar](75) NULL,
	[Frequency] [bigint] NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Spell-Check-Word-Reopository] SET  READ_WRITE 
GO
