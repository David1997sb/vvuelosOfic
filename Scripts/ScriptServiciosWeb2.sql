USE [master]
GO
/****** Object:  Database [Pago]    Script Date: 20/10/2018 08:20:38 ******/
CREATE DATABASE [Pago]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Pago', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSRVER\MSSQL\DATA\Pago.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Pago_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSRVER\MSSQL\DATA\Pago_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Pago] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Pago].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Pago] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Pago] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Pago] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Pago] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Pago] SET ARITHABORT OFF 
GO
ALTER DATABASE [Pago] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Pago] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Pago] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Pago] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Pago] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Pago] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Pago] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Pago] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Pago] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Pago] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Pago] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Pago] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Pago] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Pago] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Pago] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Pago] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Pago] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Pago] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Pago] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Pago] SET  MULTI_USER 
GO
ALTER DATABASE [Pago] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Pago] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Pago] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Pago] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Pago]
GO
/****** Object:  Table [dbo].[EasyPay]    Script Date: 20/10/2018 08:20:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EasyPay](
	[num_cuenta] [varchar](50) NOT NULL,
	[cod_seg] [varchar](25) NOT NULL,
	[password] [varchar](25) NOT NULL,
	[retorno] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 20/10/2018 08:20:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Estado](
	[retorno] [int] NOT NULL,
	[descr] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Normal]    Script Date: 20/10/2018 08:20:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Normal](
	[num_tarjeta] [int] NOT NULL,
	[mes_exp] [int] NOT NULL,
	[año_exp] [int] NOT NULL,
	[cvv] [int] NOT NULL,
	[monto] [int] NOT NULL,
	[tipo] [int] NOT NULL,
	[usuario] [varchar](25) NOT NULL,
	[retorno] [int] NOT NULL,
 CONSTRAINT [PK_Normal] PRIMARY KEY CLUSTERED 
(
	[num_tarjeta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
USE [master]
GO
ALTER DATABASE [Pago] SET  READ_WRITE 
GO
