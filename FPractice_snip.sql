USE [master]
GO
/****** Object:  Database [Turist_Firma]    Script Date: 15.09.2023 0:25:18 ******/
CREATE DATABASE [Turist_Firma]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Turist_Firma', FILENAME = N'D:\SQL Management ШАГ\Turist_Firma\Turist_Firma.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Turist_Firma_log', FILENAME = N'D:\SQL Management ШАГ\Turist_Firma\Turist_Firma_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Turist_Firma] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Turist_Firma].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Turist_Firma] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Turist_Firma] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Turist_Firma] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Turist_Firma] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Turist_Firma] SET ARITHABORT OFF 
GO
ALTER DATABASE [Turist_Firma] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Turist_Firma] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Turist_Firma] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Turist_Firma] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Turist_Firma] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Turist_Firma] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Turist_Firma] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Turist_Firma] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Turist_Firma] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Turist_Firma] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Turist_Firma] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Turist_Firma] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Turist_Firma] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Turist_Firma] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Turist_Firma] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Turist_Firma] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Turist_Firma] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Turist_Firma] SET RECOVERY FULL 
GO
ALTER DATABASE [Turist_Firma] SET  MULTI_USER 
GO
ALTER DATABASE [Turist_Firma] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Turist_Firma] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Turist_Firma] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Turist_Firma] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Turist_Firma] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Turist_Firma] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Turist_Firma', N'ON'
GO
ALTER DATABASE [Turist_Firma] SET QUERY_STORE = ON
GO
ALTER DATABASE [Turist_Firma] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Turist_Firma]
GO
/****** Object:  Table [dbo].[City_Table]    Script Date: 15.09.2023 0:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City_Table](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[ID_Country] [int] NULL,
 CONSTRAINT [PK_City_Table] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CostTravel_Table]    Script Date: 15.09.2023 0:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CostTravel_Table](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Descrip] [nvarchar](max) NULL,
	[Price] [int] NULL,
 CONSTRAINT [PK_CostTravel_Table] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country_Table]    Script Date: 15.09.2023 0:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country_Table](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Country_Table] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Curort_Table]    Script Date: 15.09.2023 0:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Curort_Table](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Descrip] [nvarchar](max) NULL,
 CONSTRAINT [PK_Curort_Table] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CurortTour_Table]    Script Date: 15.09.2023 0:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CurortTour_Table](
	[ID_Tour] [int] NULL,
	[ID_Curort] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Excursion_Table]    Script Date: 15.09.2023 0:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Excursion_Table](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Excursion_Table] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExcursionCurort_Table]    Script Date: 15.09.2023 0:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExcursionCurort_Table](
	[ID_Excursion] [int] NULL,
	[ID_Curort] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Food_Table]    Script Date: 15.09.2023 0:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Food_Table](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Food_Table] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FoodHotel_Table]    Script Date: 15.09.2023 0:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FoodHotel_Table](
	[ID_Hotel] [int] NULL,
	[ID_Food] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hotel_Table]    Script Date: 15.09.2023 0:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotel_Table](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Descrip] [nvarchar](max) NULL,
	[Stars] [int] NULL,
	[ID_City] [int] NULL,
 CONSTRAINT [PK_Hotel_Table] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HotelCurort_Table]    Script Date: 15.09.2023 0:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HotelCurort_Table](
	[ID_Hotel] [int] NULL,
	[ID_Curort] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Job_Table]    Script Date: 15.09.2023 0:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Job_Table](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Job_Table] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobEmp_Table]    Script Date: 15.09.2023 0:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobEmp_Table](
	[ID_Person] [int] NULL,
	[ID_Job] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment_Table]    Script Date: 15.09.2023 0:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment_Table](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Human] [int] NULL,
	[ID_Tour] [int] NULL,
 CONSTRAINT [PK_Payment_Table] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Person_Table]    Script Date: 15.09.2023 0:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person_Table](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FName] [nvarchar](50) NULL,
	[LName] [nvarchar](50) NULL,
	[SName] [nvarchar](50) NULL,
	[ID_Sex] [int] NULL,
	[ID_City] [int] NULL,
	[ID_Job] [int] NULL,
	[Birth] [date] NULL,
	[ID_Type] [int] NULL,
 CONSTRAINT [PK_Person_Table] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersType_Table]    Script Date: 15.09.2023 0:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersType_Table](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_PersType_Table] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rating_Table]    Script Date: 15.09.2023 0:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rating_Table](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Pers] [int] NULL,
	[ID_Curort] [int] NULL,
	[Rating] [int] NULL,
	[Descrip] [nvarchar](max) NULL,
 CONSTRAINT [PK_Rating_Table] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Relax_Table]    Script Date: 15.09.2023 0:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Relax_Table](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Relax_Table] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RelaxCurort_Table]    Script Date: 15.09.2023 0:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RelaxCurort_Table](
	[ID_Relax] [int] NULL,
	[ID_Curort] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rooms_Table]    Script Date: 15.09.2023 0:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rooms_Table](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Hotel] [int] NULL,
	[ID_Type] [int] NULL,
	[Free] [bit] NULL,
 CONSTRAINT [PK_Rooms_Table] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sex_Table]    Script Date: 15.09.2023 0:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sex_Table](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Sex_Table] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Targer_Table]    Script Date: 15.09.2023 0:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Targer_Table](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Targer_Table] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Time_Table]    Script Date: 15.09.2023 0:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Time_Table](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DateTime] [datetime] NULL,
 CONSTRAINT [PK_Time_Table] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tour_Table]    Script Date: 15.09.2023 0:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tour_Table](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Time] [int] NULL,
	[ID_Cost] [int] NULL,
 CONSTRAINT [PK_Tour_Table] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TourTrans_Table]    Script Date: 15.09.2023 0:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TourTrans_Table](
	[ID_Tour] [int] NOT NULL,
	[ID_Transport] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transport_Table]    Script Date: 15.09.2023 0:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transport_Table](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Transport_Table] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeRoom_Table]    Script Date: 15.09.2023 0:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeRoom_Table](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_TypeRoom_Table] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ZakazCurort_Table]    Script Date: 15.09.2023 0:25:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZakazCurort_Table](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Human] [int] NULL,
	[ID_Tour] [int] NULL,
	[ID_Target] [int] NULL,
	[DateGo] [date] NULL,
	[DateReturn] [date] NULL,
 CONSTRAINT [PK_ZakazCurort_Table] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[City_Table]  WITH CHECK ADD  CONSTRAINT [FK_City_Table_Country_Table] FOREIGN KEY([ID_Country])
REFERENCES [dbo].[Country_Table] ([ID])
GO
ALTER TABLE [dbo].[City_Table] CHECK CONSTRAINT [FK_City_Table_Country_Table]
GO
ALTER TABLE [dbo].[CurortTour_Table]  WITH CHECK ADD  CONSTRAINT [FK_CurortTour_Table_Curort_Table] FOREIGN KEY([ID_Curort])
REFERENCES [dbo].[Curort_Table] ([ID])
GO
ALTER TABLE [dbo].[CurortTour_Table] CHECK CONSTRAINT [FK_CurortTour_Table_Curort_Table]
GO
ALTER TABLE [dbo].[CurortTour_Table]  WITH CHECK ADD  CONSTRAINT [FK_CurortTour_Table_Tour_Table] FOREIGN KEY([ID_Tour])
REFERENCES [dbo].[Tour_Table] ([ID])
GO
ALTER TABLE [dbo].[CurortTour_Table] CHECK CONSTRAINT [FK_CurortTour_Table_Tour_Table]
GO
ALTER TABLE [dbo].[ExcursionCurort_Table]  WITH CHECK ADD  CONSTRAINT [FK_ExcursionCurort_Table_Curort_Table] FOREIGN KEY([ID_Curort])
REFERENCES [dbo].[Curort_Table] ([ID])
GO
ALTER TABLE [dbo].[ExcursionCurort_Table] CHECK CONSTRAINT [FK_ExcursionCurort_Table_Curort_Table]
GO
ALTER TABLE [dbo].[ExcursionCurort_Table]  WITH CHECK ADD  CONSTRAINT [FK_ExcursionCurort_Table_Excursion_Table] FOREIGN KEY([ID_Excursion])
REFERENCES [dbo].[Excursion_Table] ([ID])
GO
ALTER TABLE [dbo].[ExcursionCurort_Table] CHECK CONSTRAINT [FK_ExcursionCurort_Table_Excursion_Table]
GO
ALTER TABLE [dbo].[FoodHotel_Table]  WITH CHECK ADD  CONSTRAINT [FK_FoodHotel_Table_Food_Table] FOREIGN KEY([ID_Food])
REFERENCES [dbo].[Food_Table] ([ID])
GO
ALTER TABLE [dbo].[FoodHotel_Table] CHECK CONSTRAINT [FK_FoodHotel_Table_Food_Table]
GO
ALTER TABLE [dbo].[FoodHotel_Table]  WITH CHECK ADD  CONSTRAINT [FK_FoodHotel_Table_Hotel_Table] FOREIGN KEY([ID_Hotel])
REFERENCES [dbo].[Hotel_Table] ([ID])
GO
ALTER TABLE [dbo].[FoodHotel_Table] CHECK CONSTRAINT [FK_FoodHotel_Table_Hotel_Table]
GO
ALTER TABLE [dbo].[HotelCurort_Table]  WITH CHECK ADD  CONSTRAINT [FK_HotelCurort_Table_Curort_Table] FOREIGN KEY([ID_Curort])
REFERENCES [dbo].[Curort_Table] ([ID])
GO
ALTER TABLE [dbo].[HotelCurort_Table] CHECK CONSTRAINT [FK_HotelCurort_Table_Curort_Table]
GO
ALTER TABLE [dbo].[HotelCurort_Table]  WITH CHECK ADD  CONSTRAINT [FK_HotelCurort_Table_Hotel_Table] FOREIGN KEY([ID_Hotel])
REFERENCES [dbo].[Hotel_Table] ([ID])
GO
ALTER TABLE [dbo].[HotelCurort_Table] CHECK CONSTRAINT [FK_HotelCurort_Table_Hotel_Table]
GO
ALTER TABLE [dbo].[JobEmp_Table]  WITH CHECK ADD  CONSTRAINT [FK_JobEmp_Table_Job_Table] FOREIGN KEY([ID_Job])
REFERENCES [dbo].[Job_Table] ([ID])
GO
ALTER TABLE [dbo].[JobEmp_Table] CHECK CONSTRAINT [FK_JobEmp_Table_Job_Table]
GO
ALTER TABLE [dbo].[JobEmp_Table]  WITH CHECK ADD  CONSTRAINT [FK_JobEmp_Table_Person_Table] FOREIGN KEY([ID_Person])
REFERENCES [dbo].[Person_Table] ([ID])
GO
ALTER TABLE [dbo].[JobEmp_Table] CHECK CONSTRAINT [FK_JobEmp_Table_Person_Table]
GO
ALTER TABLE [dbo].[Payment_Table]  WITH CHECK ADD  CONSTRAINT [FK_Payment_Table_Tour_Table] FOREIGN KEY([ID_Tour])
REFERENCES [dbo].[Tour_Table] ([ID])
GO
ALTER TABLE [dbo].[Payment_Table] CHECK CONSTRAINT [FK_Payment_Table_Tour_Table]
GO
ALTER TABLE [dbo].[Person_Table]  WITH CHECK ADD  CONSTRAINT [FK_Person_Table_City_Table] FOREIGN KEY([ID_City])
REFERENCES [dbo].[City_Table] ([ID])
GO
ALTER TABLE [dbo].[Person_Table] CHECK CONSTRAINT [FK_Person_Table_City_Table]
GO
ALTER TABLE [dbo].[Person_Table]  WITH CHECK ADD  CONSTRAINT [FK_Person_Table_PersType_Table] FOREIGN KEY([ID_Type])
REFERENCES [dbo].[PersType_Table] ([ID])
GO
ALTER TABLE [dbo].[Person_Table] CHECK CONSTRAINT [FK_Person_Table_PersType_Table]
GO
ALTER TABLE [dbo].[Person_Table]  WITH CHECK ADD  CONSTRAINT [FK_Person_Table_Sex_Table] FOREIGN KEY([ID_Sex])
REFERENCES [dbo].[Sex_Table] ([ID])
GO
ALTER TABLE [dbo].[Person_Table] CHECK CONSTRAINT [FK_Person_Table_Sex_Table]
GO
ALTER TABLE [dbo].[Rating_Table]  WITH CHECK ADD  CONSTRAINT [FK_Rating_Table_Curort_Table] FOREIGN KEY([ID_Curort])
REFERENCES [dbo].[Curort_Table] ([ID])
GO
ALTER TABLE [dbo].[Rating_Table] CHECK CONSTRAINT [FK_Rating_Table_Curort_Table]
GO
ALTER TABLE [dbo].[Rating_Table]  WITH CHECK ADD  CONSTRAINT [FK_Rating_Table_Person_Table] FOREIGN KEY([ID_Pers])
REFERENCES [dbo].[Person_Table] ([ID])
GO
ALTER TABLE [dbo].[Rating_Table] CHECK CONSTRAINT [FK_Rating_Table_Person_Table]
GO
ALTER TABLE [dbo].[RelaxCurort_Table]  WITH CHECK ADD  CONSTRAINT [FK_RelaxCurort_Table_Curort_Table] FOREIGN KEY([ID_Curort])
REFERENCES [dbo].[Curort_Table] ([ID])
GO
ALTER TABLE [dbo].[RelaxCurort_Table] CHECK CONSTRAINT [FK_RelaxCurort_Table_Curort_Table]
GO
ALTER TABLE [dbo].[RelaxCurort_Table]  WITH CHECK ADD  CONSTRAINT [FK_RelaxCurort_Table_Relax_Table] FOREIGN KEY([ID_Relax])
REFERENCES [dbo].[Relax_Table] ([ID])
GO
ALTER TABLE [dbo].[RelaxCurort_Table] CHECK CONSTRAINT [FK_RelaxCurort_Table_Relax_Table]
GO
ALTER TABLE [dbo].[Rooms_Table]  WITH CHECK ADD  CONSTRAINT [FK_Rooms_Table_Hotel_Table] FOREIGN KEY([ID_Hotel])
REFERENCES [dbo].[Hotel_Table] ([ID])
GO
ALTER TABLE [dbo].[Rooms_Table] CHECK CONSTRAINT [FK_Rooms_Table_Hotel_Table]
GO
ALTER TABLE [dbo].[Rooms_Table]  WITH CHECK ADD  CONSTRAINT [FK_Rooms_Table_TypeRoom_Table] FOREIGN KEY([ID_Type])
REFERENCES [dbo].[TypeRoom_Table] ([ID])
GO
ALTER TABLE [dbo].[Rooms_Table] CHECK CONSTRAINT [FK_Rooms_Table_TypeRoom_Table]
GO
ALTER TABLE [dbo].[Tour_Table]  WITH CHECK ADD  CONSTRAINT [FK_Tour_Table_CostTravel_Table] FOREIGN KEY([ID_Cost])
REFERENCES [dbo].[CostTravel_Table] ([ID])
GO
ALTER TABLE [dbo].[Tour_Table] CHECK CONSTRAINT [FK_Tour_Table_CostTravel_Table]
GO
ALTER TABLE [dbo].[Tour_Table]  WITH CHECK ADD  CONSTRAINT [FK_Tour_Table_Time_Table] FOREIGN KEY([ID_Time])
REFERENCES [dbo].[Time_Table] ([ID])
GO
ALTER TABLE [dbo].[Tour_Table] CHECK CONSTRAINT [FK_Tour_Table_Time_Table]
GO
ALTER TABLE [dbo].[TourTrans_Table]  WITH CHECK ADD  CONSTRAINT [FK_TourTrans_Table_Tour_Table] FOREIGN KEY([ID_Tour])
REFERENCES [dbo].[Tour_Table] ([ID])
GO
ALTER TABLE [dbo].[TourTrans_Table] CHECK CONSTRAINT [FK_TourTrans_Table_Tour_Table]
GO
ALTER TABLE [dbo].[TourTrans_Table]  WITH CHECK ADD  CONSTRAINT [FK_TourTrans_Table_Transport_Table] FOREIGN KEY([ID_Transport])
REFERENCES [dbo].[Transport_Table] ([ID])
GO
ALTER TABLE [dbo].[TourTrans_Table] CHECK CONSTRAINT [FK_TourTrans_Table_Transport_Table]
GO
ALTER TABLE [dbo].[ZakazCurort_Table]  WITH CHECK ADD  CONSTRAINT [FK_ZakazCurort_Table_Person_Table] FOREIGN KEY([ID_Human])
REFERENCES [dbo].[Person_Table] ([ID])
GO
ALTER TABLE [dbo].[ZakazCurort_Table] CHECK CONSTRAINT [FK_ZakazCurort_Table_Person_Table]
GO
ALTER TABLE [dbo].[ZakazCurort_Table]  WITH CHECK ADD  CONSTRAINT [FK_ZakazCurort_Table_Targer_Table] FOREIGN KEY([ID_Target])
REFERENCES [dbo].[Targer_Table] ([ID])
GO
ALTER TABLE [dbo].[ZakazCurort_Table] CHECK CONSTRAINT [FK_ZakazCurort_Table_Targer_Table]
GO
ALTER TABLE [dbo].[ZakazCurort_Table]  WITH CHECK ADD  CONSTRAINT [FK_ZakazCurort_Table_Tour_Table] FOREIGN KEY([ID_Tour])
REFERENCES [dbo].[Tour_Table] ([ID])
GO
ALTER TABLE [dbo].[ZakazCurort_Table] CHECK CONSTRAINT [FK_ZakazCurort_Table_Tour_Table]
GO
USE [master]
GO
ALTER DATABASE [Turist_Firma] SET  READ_WRITE 
GO
