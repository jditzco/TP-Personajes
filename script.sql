USE [master]
GO
/****** Object:  Database [DAI-Personajes]    Script Date: 27/4/2023 09:55:50 ******/
CREATE DATABASE [DAI-Personajes]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DAI-Personajes', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\DAI-Personajes.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DAI-Personajes_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\DAI-Personajes_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [DAI-Personajes] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DAI-Personajes].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DAI-Personajes] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DAI-Personajes] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DAI-Personajes] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DAI-Personajes] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DAI-Personajes] SET ARITHABORT OFF 
GO
ALTER DATABASE [DAI-Personajes] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DAI-Personajes] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DAI-Personajes] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DAI-Personajes] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DAI-Personajes] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DAI-Personajes] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DAI-Personajes] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DAI-Personajes] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DAI-Personajes] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DAI-Personajes] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DAI-Personajes] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DAI-Personajes] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DAI-Personajes] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DAI-Personajes] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DAI-Personajes] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DAI-Personajes] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DAI-Personajes] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DAI-Personajes] SET RECOVERY FULL 
GO
ALTER DATABASE [DAI-Personajes] SET  MULTI_USER 
GO
ALTER DATABASE [DAI-Personajes] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DAI-Personajes] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DAI-Personajes] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DAI-Personajes] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DAI-Personajes] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'DAI-Personajes', N'ON'
GO
ALTER DATABASE [DAI-Personajes] SET QUERY_STORE = OFF
GO
USE [DAI-Personajes]
GO
/****** Object:  User [alumno]    Script Date: 27/4/2023 09:55:50 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Peliculas]    Script Date: 27/4/2023 09:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Peliculas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Imagen] [varchar](200) NULL,
	[Titulo] [varchar](50) NOT NULL,
	[FechaCreacion] [date] NOT NULL,
	[Calificacion] [int] NOT NULL,
	[Asociados] [varchar](200) NOT NULL,
 CONSTRAINT [PK_Peliculas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Peliculas_Personajes]    Script Date: 27/4/2023 09:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Peliculas_Personajes](
	[IdPelicula] [int] NOT NULL,
	[IdPersonaje] [int] NOT NULL,
 CONSTRAINT [PK_Peliculas_Personajes] PRIMARY KEY CLUSTERED 
(
	[IdPelicula] ASC,
	[IdPersonaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personajes]    Script Date: 27/4/2023 09:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personajes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Imagen] [varchar](200) NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Edad] [varchar](50) NOT NULL,
	[Peso] [varchar](50) NOT NULL,
	[Historia] [varchar](50) NOT NULL,
	[Asociadas] [varchar](200) NOT NULL,
 CONSTRAINT [PK_Personajes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Peliculas] ON 

INSERT [dbo].[Peliculas] ([Id], [Imagen], [Titulo], [FechaCreacion], [Calificacion], [Asociados]) VALUES (1, NULL, N'peli1', CAST(N'2001-01-01' AS Date), 1, N'primero')
INSERT [dbo].[Peliculas] ([Id], [Imagen], [Titulo], [FechaCreacion], [Calificacion], [Asociados]) VALUES (6, NULL, N'peli2', CAST(N'2023-02-02' AS Date), 2, N'segundo')
INSERT [dbo].[Peliculas] ([Id], [Imagen], [Titulo], [FechaCreacion], [Calificacion], [Asociados]) VALUES (7, NULL, N'peli3', CAST(N'2023-03-03' AS Date), 3, N'tercero')
INSERT [dbo].[Peliculas] ([Id], [Imagen], [Titulo], [FechaCreacion], [Calificacion], [Asociados]) VALUES (8, NULL, N'peli4', CAST(N'2023-04-04' AS Date), 4, N'cuarto')
INSERT [dbo].[Peliculas] ([Id], [Imagen], [Titulo], [FechaCreacion], [Calificacion], [Asociados]) VALUES (9, NULL, N'peli5', CAST(N'2023-05-05' AS Date), 5, N'quinto')
SET IDENTITY_INSERT [dbo].[Peliculas] OFF
GO
SET IDENTITY_INSERT [dbo].[Personajes] ON 

INSERT [dbo].[Personajes] ([Id], [Imagen], [Nombre], [Edad], [Peso], [Historia], [Asociadas]) VALUES (1, NULL, N'primero', N'1', N'1', N'historia1', N'peli1')
INSERT [dbo].[Personajes] ([Id], [Imagen], [Nombre], [Edad], [Peso], [Historia], [Asociadas]) VALUES (2, NULL, N'segundo', N'2', N'2', N'historia2', N'peli2')
INSERT [dbo].[Personajes] ([Id], [Imagen], [Nombre], [Edad], [Peso], [Historia], [Asociadas]) VALUES (3, NULL, N'tercero', N'3', N'3', N'historia3', N'peli3')
INSERT [dbo].[Personajes] ([Id], [Imagen], [Nombre], [Edad], [Peso], [Historia], [Asociadas]) VALUES (4, NULL, N'cuarto', N'4', N'4', N'historia4', N'peli4')
INSERT [dbo].[Personajes] ([Id], [Imagen], [Nombre], [Edad], [Peso], [Historia], [Asociadas]) VALUES (5, NULL, N'quinto', N'5', N'5', N'historia5', N'peli5')
SET IDENTITY_INSERT [dbo].[Personajes] OFF
GO
ALTER TABLE [dbo].[Peliculas_Personajes]  WITH CHECK ADD  CONSTRAINT [FK_Peliculas_Personajes_Peliculas] FOREIGN KEY([IdPelicula])
REFERENCES [dbo].[Peliculas] ([Id])
GO
ALTER TABLE [dbo].[Peliculas_Personajes] CHECK CONSTRAINT [FK_Peliculas_Personajes_Peliculas]
GO
ALTER TABLE [dbo].[Peliculas_Personajes]  WITH CHECK ADD  CONSTRAINT [FK_Peliculas_Personajes_Personajes] FOREIGN KEY([IdPersonaje])
REFERENCES [dbo].[Personajes] ([Id])
GO
ALTER TABLE [dbo].[Peliculas_Personajes] CHECK CONSTRAINT [FK_Peliculas_Personajes_Personajes]
GO
USE [master]
GO
ALTER DATABASE [DAI-Personajes] SET  READ_WRITE 
GO
