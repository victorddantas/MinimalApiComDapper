USE [master]
GO

/****** Object:  Database [Carros]    Script Date: 14/09/2023 22:58:07 ******/
CREATE DATABASE [Carros]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Carros', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Carros.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Carros_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Carros_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Carros].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [Carros] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [Carros] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [Carros] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [Carros] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [Carros] SET ARITHABORT OFF 
GO

ALTER DATABASE [Carros] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [Carros] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [Carros] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [Carros] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [Carros] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [Carros] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [Carros] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [Carros] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [Carros] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [Carros] SET  DISABLE_BROKER 
GO

ALTER DATABASE [Carros] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [Carros] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [Carros] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [Carros] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [Carros] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [Carros] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [Carros] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [Carros] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [Carros] SET  MULTI_USER 
GO

ALTER DATABASE [Carros] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [Carros] SET DB_CHAINING OFF 
GO

ALTER DATABASE [Carros] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [Carros] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [Carros] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [Carros] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [Carros] SET QUERY_STORE = OFF
GO

ALTER DATABASE [Carros] SET  READ_WRITE 
GO

USE [Carros]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Veiculo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Marca] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Ano] [int] NULL,
	[Cor] [nvarchar](100) NULL
) ON [PRIMARY]
GO


