USE [master]
GO
/****** Object:  Database [Bessonova483_ElectroShop]    Script Date: 28.02.2022 14:35:27 ******/
CREATE DATABASE [Bessonova483_ElectroShop] ON  PRIMARY 
( NAME = N'Bessonova483_ElectroShop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\Bessonova483_ElectroShop.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Bessonova483_ElectroShop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\Bessonova483_ElectroShop_log.LDF' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Bessonova483_ElectroShop] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Bessonova483_ElectroShop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Bessonova483_ElectroShop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Bessonova483_ElectroShop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Bessonova483_ElectroShop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Bessonova483_ElectroShop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Bessonova483_ElectroShop] SET ARITHABORT OFF 
GO
ALTER DATABASE [Bessonova483_ElectroShop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Bessonova483_ElectroShop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Bessonova483_ElectroShop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Bessonova483_ElectroShop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Bessonova483_ElectroShop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Bessonova483_ElectroShop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Bessonova483_ElectroShop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Bessonova483_ElectroShop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Bessonova483_ElectroShop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Bessonova483_ElectroShop] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Bessonova483_ElectroShop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Bessonova483_ElectroShop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Bessonova483_ElectroShop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Bessonova483_ElectroShop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Bessonova483_ElectroShop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Bessonova483_ElectroShop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Bessonova483_ElectroShop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Bessonova483_ElectroShop] SET RECOVERY FULL 
GO
ALTER DATABASE [Bessonova483_ElectroShop] SET  MULTI_USER 
GO
ALTER DATABASE [Bessonova483_ElectroShop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Bessonova483_ElectroShop] SET DB_CHAINING OFF 
GO
USE [Bessonova483_ElectroShop]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 28.02.2022 14:35:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client_Manager]    Script Date: 28.02.2022 14:35:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client_Manager](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDClient] [int] NOT NULL,
	[IDManager] [int] NOT NULL,
 CONSTRAINT [PK_Client_Manager] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 28.02.2022 14:35:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Surname] [varchar](50) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Patronymic] [varchar](50) NOT NULL,
	[IDGender] [int] NOT NULL,
	[BirthDate] [date] NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[RegistrationDate] [date] NOT NULL,
	[Email] [varchar](64) NOT NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 28.02.2022 14:35:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 28.02.2022 14:35:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HistoryLogin]    Script Date: 28.02.2022 14:35:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HistoryLogin](
	[ID] [int] NOT NULL,
	[Login] [varchar](64) NOT NULL,
	[TimeLog] [time](7) NOT NULL,
	[Result] [bit] NOT NULL,
 CONSTRAINT [PK_HistoryLogin] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Objects]    Script Date: 28.02.2022 14:35:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Objects](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[IDCategory] [int] NOT NULL,
	[IDCompany] [int] NOT NULL,
	[DataMade] [date] NOT NULL,
	[ResolutionDate] [date] NOT NULL,
	[Cost] [decimal](18, 0) NOT NULL,
	[ImageObject] [image] NULL,
 CONSTRAINT [PK_Objects] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 28.02.2022 14:35:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDClient] [int] NOT NULL,
	[IDObject] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[Summa] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Otchet]    Script Date: 28.02.2022 14:35:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Otchet](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Context] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Otchet] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 28.02.2022 14:35:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TItle] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 28.02.2022 14:35:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](64) NOT NULL,
	[Password] [varchar](20) NOT NULL,
	[Surname] [varchar](50) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Patronymic] [varchar](50) NOT NULL,
	[IDGender] [int] NOT NULL,
	[RegistrationDate] [nchar](10) NOT NULL,
	[Active] [bit] NOT NULL,
	[IDRole] [int] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([ID], [Title]) VALUES (1, N'Бытовая техника')
INSERT [dbo].[Category] ([ID], [Title]) VALUES (2, N'Компьютерные гаджеты')
INSERT [dbo].[Category] ([ID], [Title]) VALUES (3, N'Телефоны')
INSERT [dbo].[Category] ([ID], [Title]) VALUES (4, N'Аксессуары')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Client_Manager] ON 

INSERT [dbo].[Client_Manager] ([ID], [IDClient], [IDManager]) VALUES (1, 1, 1)
INSERT [dbo].[Client_Manager] ([ID], [IDClient], [IDManager]) VALUES (2, 2, 2)
SET IDENTITY_INSERT [dbo].[Client_Manager] OFF
SET IDENTITY_INSERT [dbo].[Clients] ON 

INSERT [dbo].[Clients] ([ID], [Surname], [Name], [Patronymic], [IDGender], [BirthDate], [Phone], [RegistrationDate], [Email]) VALUES (1, N'Романов', N'Олег', N'Константинович', 2, CAST(N'2012-10-12' AS Date), N'+7(911)091-09-87', CAST(N'2020-12-12' AS Date), N'Oleg-Rom@mail.ru')
INSERT [dbo].[Clients] ([ID], [Surname], [Name], [Patronymic], [IDGender], [BirthDate], [Phone], [RegistrationDate], [Email]) VALUES (2, N'Лилова', N'Валерия', N'Ромашкова', 1, CAST(N'2010-01-08' AS Date), N'+7(950)231-59-12', CAST(N'2021-02-13' AS Date), N'Valeria_Romashkova@mail.ru')
SET IDENTITY_INSERT [dbo].[Clients] OFF
SET IDENTITY_INSERT [dbo].[Company] ON 

INSERT [dbo].[Company] ([ID], [Title]) VALUES (1, N'AppleCase')
INSERT [dbo].[Company] ([ID], [Title]) VALUES (2, N'Overdrive')
INSERT [dbo].[Company] ([ID], [Title]) VALUES (3, N'Sony')
INSERT [dbo].[Company] ([ID], [Title]) VALUES (4, N'Windows')
INSERT [dbo].[Company] ([ID], [Title]) VALUES (5, N'Ocarle')
INSERT [dbo].[Company] ([ID], [Title]) VALUES (6, N'Oklick')
INSERT [dbo].[Company] ([ID], [Title]) VALUES (7, N'Defender')
INSERT [dbo].[Company] ([ID], [Title]) VALUES (8, N'LG')
SET IDENTITY_INSERT [dbo].[Company] OFF
SET IDENTITY_INSERT [dbo].[Gender] ON 

INSERT [dbo].[Gender] ([ID], [Title]) VALUES (1, N'Женский')
INSERT [dbo].[Gender] ([ID], [Title]) VALUES (2, N'Мужской')
SET IDENTITY_INSERT [dbo].[Gender] OFF
SET IDENTITY_INSERT [dbo].[Objects] ON 

INSERT [dbo].[Objects] ([ID], [Title], [IDCategory], [IDCompany], [DataMade], [ResolutionDate], [Cost], [ImageObject]) VALUES (1, N'Микроволновка', 1, 8, CAST(N'2021-02-12' AS Date), CAST(N'2021-02-28' AS Date), CAST(650 AS Decimal(18, 0)), NULL)
INSERT [dbo].[Objects] ([ID], [Title], [IDCategory], [IDCompany], [DataMade], [ResolutionDate], [Cost], [ImageObject]) VALUES (2, N'Чехол_дляIphone', 4, 1, CAST(N'2021-03-30' AS Date), CAST(N'2021-04-01' AS Date), CAST(45 AS Decimal(18, 0)), NULL)
SET IDENTITY_INSERT [dbo].[Objects] OFF
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([ID], [TItle]) VALUES (1, N'Менеджер по продажи')
INSERT [dbo].[Roles] ([ID], [TItle]) VALUES (2, N'Главный Менеджер')
INSERT [dbo].[Roles] ([ID], [TItle]) VALUES (3, N'Администратор')
SET IDENTITY_INSERT [dbo].[Roles] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID], [Email], [Password], [Surname], [Name], [Patronymic], [IDGender], [RegistrationDate], [Active], [IDRole]) VALUES (1, N'Manager1@mail.ru', N'password1', N'Филикова', N'Наталья', N'Александровна', 1, N'12.01.2020', 1, 1)
INSERT [dbo].[Users] ([ID], [Email], [Password], [Surname], [Name], [Patronymic], [IDGender], [RegistrationDate], [Active], [IDRole]) VALUES (2, N'Manager2@mail.ru', N'password2', N'Доминов', N'Роман', N'Романович', 2, N'13.04.2019', 1, 1)
INSERT [dbo].[Users] ([ID], [Email], [Password], [Surname], [Name], [Patronymic], [IDGender], [RegistrationDate], [Active], [IDRole]) VALUES (3, N'Manager3@Gmail.com', N'password3', N'Черишкина', N'Юлия', N'Ломикова', 1, N'14.01.2021', 0, 1)
INSERT [dbo].[Users] ([ID], [Email], [Password], [Surname], [Name], [Patronymic], [IDGender], [RegistrationDate], [Active], [IDRole]) VALUES (4, N'GlavManager@Yandex.ru', N'GlavManager1', N'Костюшкин', N'Константин', N'Александров', 2, N'12.03.2019', 1, 2)
INSERT [dbo].[Users] ([ID], [Email], [Password], [Surname], [Name], [Patronymic], [IDGender], [RegistrationDate], [Active], [IDRole]) VALUES (5, N'Admin@gmail.com', N'Admin', N'Большов', N'Алексей', N'Вылович', 2, N'01.01.2022', 1, 3)
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[Client_Manager]  WITH CHECK ADD  CONSTRAINT [FK_Client_Manager_Clients] FOREIGN KEY([IDClient])
REFERENCES [dbo].[Clients] ([ID])
GO
ALTER TABLE [dbo].[Client_Manager] CHECK CONSTRAINT [FK_Client_Manager_Clients]
GO
ALTER TABLE [dbo].[Client_Manager]  WITH CHECK ADD  CONSTRAINT [FK_Client_Manager_Users] FOREIGN KEY([IDManager])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Client_Manager] CHECK CONSTRAINT [FK_Client_Manager_Users]
GO
ALTER TABLE [dbo].[Clients]  WITH CHECK ADD  CONSTRAINT [FK_Clients_Gender] FOREIGN KEY([IDGender])
REFERENCES [dbo].[Gender] ([ID])
GO
ALTER TABLE [dbo].[Clients] CHECK CONSTRAINT [FK_Clients_Gender]
GO
ALTER TABLE [dbo].[Objects]  WITH CHECK ADD  CONSTRAINT [FK_Objects_Category] FOREIGN KEY([IDCategory])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[Objects] CHECK CONSTRAINT [FK_Objects_Category]
GO
ALTER TABLE [dbo].[Objects]  WITH CHECK ADD  CONSTRAINT [FK_Objects_Company] FOREIGN KEY([IDCompany])
REFERENCES [dbo].[Company] ([ID])
GO
ALTER TABLE [dbo].[Objects] CHECK CONSTRAINT [FK_Objects_Company]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Clients] FOREIGN KEY([IDClient])
REFERENCES [dbo].[Clients] ([ID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Clients]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Objects] FOREIGN KEY([IDObject])
REFERENCES [dbo].[Objects] ([ID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Objects]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Gender] FOREIGN KEY([IDGender])
REFERENCES [dbo].[Gender] ([ID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Gender]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles] FOREIGN KEY([IDRole])
REFERENCES [dbo].[Roles] ([ID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles]
GO
USE [master]
GO
ALTER DATABASE [Bessonova483_ElectroShop] SET  READ_WRITE 
GO
