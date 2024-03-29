USE [master]
GO
/****** Object:  Database [Ejercicio1]    Script Date: 06/01/2021 20:17:45 ******/
CREATE DATABASE [Ejercicio1] ON  PRIMARY 
( NAME = N'Ejercicio1', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\Ejercicio1.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Ejercicio1_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\Ejercicio1_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Ejercicio1] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Ejercicio1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Ejercicio1] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Ejercicio1] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Ejercicio1] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Ejercicio1] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Ejercicio1] SET ARITHABORT OFF
GO
ALTER DATABASE [Ejercicio1] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [Ejercicio1] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Ejercicio1] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Ejercicio1] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Ejercicio1] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Ejercicio1] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Ejercicio1] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Ejercicio1] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Ejercicio1] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Ejercicio1] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Ejercicio1] SET  DISABLE_BROKER
GO
ALTER DATABASE [Ejercicio1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Ejercicio1] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Ejercicio1] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Ejercicio1] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Ejercicio1] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Ejercicio1] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Ejercicio1] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Ejercicio1] SET  READ_WRITE
GO
ALTER DATABASE [Ejercicio1] SET RECOVERY FULL
GO
ALTER DATABASE [Ejercicio1] SET  MULTI_USER
GO
ALTER DATABASE [Ejercicio1] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Ejercicio1] SET DB_CHAINING OFF
GO
USE [Ejercicio1]
GO
/****** Object:  User [liz]    Script Date: 06/01/2021 20:17:45 ******/
CREATE USER [liz] FOR LOGIN [liz] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[materia]    Script Date: 06/01/2021 20:17:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[materia](
	[codigo] [varchar](6) NOT NULL,
	[nombre] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[materia] ([codigo], [nombre]) VALUES (N'INF111', N'Introduccion a la programacion')
INSERT [dbo].[materia] ([codigo], [nombre]) VALUES (N'INF142', N'Sistemas digitales')
INSERT [dbo].[materia] ([codigo], [nombre]) VALUES (N'INF273', N'Telematica')
INSERT [dbo].[materia] ([codigo], [nombre]) VALUES (N'INF328', N'Comparacion de lenguajes')
INSERT [dbo].[materia] ([codigo], [nombre]) VALUES (N'MAT114', N'Algebra I')
INSERT [dbo].[materia] ([codigo], [nombre]) VALUES (N'MAT115', N'Calculo I')
/****** Object:  Table [dbo].[alumno]    Script Date: 06/01/2021 20:17:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[alumno](
	[ci] [int] NOT NULL,
	[nombre] [varchar](30) NULL,
	[apellidoPat] [varchar](30) NULL,
	[apellidoMat] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[ci] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[alumno] ([ci], [nombre], [apellidoPat], [apellidoMat]) VALUES (2558658, N'Daniel', N'Sanchez', N'Bautista')
INSERT [dbo].[alumno] ([ci], [nombre], [apellidoPat], [apellidoMat]) VALUES (3154564, N'Patricia', N'Arroyo', N'Santos')
INSERT [dbo].[alumno] ([ci], [nombre], [apellidoPat], [apellidoMat]) VALUES (3434616, N'emma', N'Gutierrez', N'Condori')
INSERT [dbo].[alumno] ([ci], [nombre], [apellidoPat], [apellidoMat]) VALUES (3585452, N'rodrigo', N'maldonado', N'pizarro')
INSERT [dbo].[alumno] ([ci], [nombre], [apellidoPat], [apellidoMat]) VALUES (4512583, N'jose', N'diaz', N'romero')
INSERT [dbo].[alumno] ([ci], [nombre], [apellidoPat], [apellidoMat]) VALUES (5472343, N'antonio', N'villegas', N'flores')
INSERT [dbo].[alumno] ([ci], [nombre], [apellidoPat], [apellidoMat]) VALUES (7347252, N'luisa', N'lopez', N'ribero')
INSERT [dbo].[alumno] ([ci], [nombre], [apellidoPat], [apellidoMat]) VALUES (31452345, N'maria', N'portugal', N'rodriquez')
INSERT [dbo].[alumno] ([ci], [nombre], [apellidoPat], [apellidoMat]) VALUES (43124341, N'rafael', N'rodriguez', N'martinez')
INSERT [dbo].[alumno] ([ci], [nombre], [apellidoPat], [apellidoMat]) VALUES (43823842, N'felipe', N'felipez', N'andrade')
INSERT [dbo].[alumno] ([ci], [nombre], [apellidoPat], [apellidoMat]) VALUES (74391265, N'juan', N'paredes', N'rojas')
/****** Object:  Table [dbo].[alum_mat]    Script Date: 06/01/2021 20:17:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[alum_mat](
	[ci] [int] NOT NULL,
	[codigo] [varchar](6) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[alum_mat] ([ci], [codigo]) VALUES (2558658, N'INF111')
INSERT [dbo].[alum_mat] ([ci], [codigo]) VALUES (2558658, N'MAT114')
INSERT [dbo].[alum_mat] ([ci], [codigo]) VALUES (2558658, N'MAT115')
INSERT [dbo].[alum_mat] ([ci], [codigo]) VALUES (3154564, N'INF142')
INSERT [dbo].[alum_mat] ([ci], [codigo]) VALUES (3154564, N'INF273')
INSERT [dbo].[alum_mat] ([ci], [codigo]) VALUES (3154564, N'INF328')
INSERT [dbo].[alum_mat] ([ci], [codigo]) VALUES (3434616, N'INF142')
INSERT [dbo].[alum_mat] ([ci], [codigo]) VALUES (3585452, N'INF273')
INSERT [dbo].[alum_mat] ([ci], [codigo]) VALUES (4512583, N'MAT114')
INSERT [dbo].[alum_mat] ([ci], [codigo]) VALUES (4512583, N'MAT115')
INSERT [dbo].[alum_mat] ([ci], [codigo]) VALUES (5472343, N'INF111')
INSERT [dbo].[alum_mat] ([ci], [codigo]) VALUES (5472343, N'MAT114')
INSERT [dbo].[alum_mat] ([ci], [codigo]) VALUES (7347252, N'INF111')
INSERT [dbo].[alum_mat] ([ci], [codigo]) VALUES (31452345, N'MAT114')
INSERT [dbo].[alum_mat] ([ci], [codigo]) VALUES (43124341, N'MAT115')
INSERT [dbo].[alum_mat] ([ci], [codigo]) VALUES (43823842, N'INF142')
INSERT [dbo].[alum_mat] ([ci], [codigo]) VALUES (43823842, N'INF273')
INSERT [dbo].[alum_mat] ([ci], [codigo]) VALUES (74391265, N'INF328')
/****** Object:  ForeignKey [FK__alum_mat__ci__173876EA]    Script Date: 06/01/2021 20:17:45 ******/
ALTER TABLE [dbo].[alum_mat]  WITH CHECK ADD FOREIGN KEY([ci])
REFERENCES [dbo].[alumno] ([ci])
GO
/****** Object:  ForeignKey [FK__alum_mat__codigo__182C9B23]    Script Date: 06/01/2021 20:17:45 ******/
ALTER TABLE [dbo].[alum_mat]  WITH CHECK ADD FOREIGN KEY([codigo])
REFERENCES [dbo].[materia] ([codigo])
GO
