USE [master]
GO
/****** Object:  Database [FCS]    Script Date: 8/31/2022 1:14:40 AM ******/
CREATE DATABASE [FCS]
GO
ALTER DATABASE [FCS] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FCS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FCS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FCS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FCS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FCS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FCS] SET ARITHABORT OFF 
GO
ALTER DATABASE [FCS] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [FCS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FCS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FCS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FCS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FCS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FCS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FCS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FCS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FCS] SET  ENABLE_BROKER 
GO
ALTER DATABASE [FCS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FCS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FCS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FCS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FCS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FCS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FCS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FCS] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FCS] SET  MULTI_USER 
GO
ALTER DATABASE [FCS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FCS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FCS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FCS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FCS] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FCS] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [FCS] SET QUERY_STORE = OFF
GO
USE [FCS]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 8/31/2022 1:14:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[AccountID] [int] IDENTITY(1,1) NOT NULL,
	[RoleID] [int] NULL,
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](32) NULL,
	[AccountStatus] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admins]    Script Date: 8/31/2022 1:14:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admins](
	[AdminID] [int] IDENTITY(1,1) NOT NULL,
	[Avatar] [nvarchar](max) NULL,
	[FirstName] [nvarchar](60) NULL,
	[LastName] [nvarchar](20) NULL,
	[Age] [smallint] NULL,
	[CountryID] [int] NULL,
	[ProvinceID] [int] NULL,
	[DistrictID] [int] NULL,
	[AddressDetail] [nvarchar](200) NULL,
	[Phone] [varchar](10) NULL,
	[Email] [varchar](50) NULL,
	[Gender] [bit] NULL,
	[LinkFacebook] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Buses]    Script Date: 8/31/2022 1:14:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Buses](
	[BusNumber] [int] NOT NULL,
	[Cost] [money] NULL,
	[BusStop] [nvarchar](max) NULL,
	[Url1] [nvarchar](max) NULL,
	[Url2] [nvarchar](max) NULL,
	[ShortDescriptions] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[BusNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clubs]    Script Date: 8/31/2022 1:14:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clubs](
	[ClubID] [int] IDENTITY(1,1) NOT NULL,
	[Avatar] [nvarchar](max) NULL,
	[ClubName] [nvarchar](200) NULL,
	[ClubPresident] [nvarchar](100) NULL,
	[Facebook] [text] NULL,
	[Email] [varchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[Type] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ClubID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 8/31/2022 1:14:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[CountryID] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 8/31/2022 1:14:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[DepId] [int] IDENTITY(1,1) NOT NULL,
	[DepName] [nvarchar](100) NULL,
	[DepNameAbbreviations] [varchar](10) NULL,
	[Email] [varchar](50) NULL,
	[Phone] [nvarchar](30) NULL,
	[OpenDay] [nvarchar](30) NULL,
	[Url1] [nvarchar](max) NULL,
	[Url2] [nvarchar](max) NULL,
	[Descriptions] [nvarchar](max) NULL,
	[ShortDescription] [nvarchar](max) NULL,
	[Position] [nchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[DepId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[District]    Script Date: 8/31/2022 1:14:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[District](
	[DistrictID] [int] IDENTITY(1,1) NOT NULL,
	[ProvinceID] [int] NULL,
	[DistrictName] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[DistrictID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EventOfClub]    Script Date: 8/31/2022 1:14:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventOfClub](
	[EventID] [int] IDENTITY(1,1) NOT NULL,
	[ClubID] [int] NULL,
	[EventName] [nvarchar](100) NULL,
	[Time] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[Url1] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[EventID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FoodImage]    Script Date: 8/31/2022 1:14:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FoodImage](
	[FoodID] [int] NOT NULL,
	[ImageUrl] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[FoodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Foods]    Script Date: 8/31/2022 1:14:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Foods](
	[FoodID] [int] IDENTITY(1,1) NOT NULL,
	[RestaurantID] [int] NULL,
	[FoodName] [nvarchar](100) NULL,
	[Cost] [money] NULL,
	[Descriptions] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[FoodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HostelImage]    Script Date: 8/31/2022 1:14:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HostelImage](
	[HostelID] [int] NOT NULL,
	[Url1] [nvarchar](max) NULL,
	[Url2] [nvarchar](max) NULL,
	[Url3] [nvarchar](max) NULL,
	[Url4] [nvarchar](max) NULL,
	[Url5] [nvarchar](max) NULL,
	[Url6] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[HostelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hostels]    Script Date: 8/31/2022 1:14:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hostels](
	[HostelID] [int] IDENTITY(1,1) NOT NULL,
	[HostelName] [nvarchar](100) NULL,
	[SellerID] [int] NULL,
	[TotalRoom] [int] NULL,
	[Status] [bit] NULL,
	[Floors] [int] NULL,
	[CountryID] [int] NULL,
	[ProvinceID] [int] NULL,
	[DistrictID] [int] NULL,
	[AddressDetail] [nvarchar](200) NULL,
	[RentCost] [money] NULL,
	[Distance] [float] NULL,
	[Descriptions] [nvarchar](max) NULL,
	[StarVoting] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[HostelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Province]    Script Date: 8/31/2022 1:14:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Province](
	[ProvinceID] [int] IDENTITY(1,1) NOT NULL,
	[CountryID] [int] NULL,
	[ProvinceName] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProvinceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReportHostel]    Script Date: 8/31/2022 1:14:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReportHostel](
	[ReportID] [int] IDENTITY(1,1) NOT NULL,
	[HostelID] [int] NULL,
	[Spam] [bit] NULL,
	[Offensive] [bit] NULL,
	[Violent] [bit] NULL,
	[Truthless] [bit] NULL,
	[ReportTime] [datetime] NULL,
	[StudentID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ReportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReportRestaurant]    Script Date: 8/31/2022 1:14:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReportRestaurant](
	[ReportID] [int] IDENTITY(1,1) NOT NULL,
	[RestaurantID] [int] NULL,
	[Spam] [bit] NULL,
	[Offensive] [bit] NULL,
	[Violent] [bit] NULL,
	[Truthless] [bit] NULL,
	[ReportTime] [datetime] NULL,
	[StudentID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ReportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Restaurants]    Script Date: 8/31/2022 1:14:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Restaurants](
	[RestaurantID] [int] IDENTITY(1,1) NOT NULL,
	[RestaurantName] [nvarchar](100) NULL,
	[SellerID] [int] NULL,
	[CountryID] [int] NULL,
	[ProvinceID] [int] NULL,
	[DistrictID] [int] NULL,
	[AddressDetail] [nvarchar](200) NULL,
	[Cost] [varchar](30) NULL,
	[Distance] [float] NULL,
	[Descriptions] [nvarchar](max) NULL,
	[RestaurantImage] [nvarchar](max) NULL,
	[StarVoting] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[RestaurantID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 8/31/2022 1:14:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sellers]    Script Date: 8/31/2022 1:14:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sellers](
	[SellerID] [int] IDENTITY(1,1) NOT NULL,
	[Avatar] [nvarchar](max) NULL,
	[FirstName] [nvarchar](60) NULL,
	[LastName] [nvarchar](20) NULL,
	[Age] [smallint] NULL,
	[Phone] [varchar](10) NULL,
	[Email] [varchar](50) NULL,
	[CountryID] [int] NULL,
	[ProvinceID] [int] NULL,
	[DistrictID] [int] NULL,
	[AddressDetail] [nvarchar](200) NULL,
	[Gender] [bit] NULL,
	[LinkFacebook] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[SellerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StarVotingHostel]    Script Date: 8/31/2022 1:14:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StarVotingHostel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StudentNo] [int] NULL,
	[HostelID] [int] NULL,
	[StarVoting] [int] NULL,
	[Comment] [nvarchar](max) NULL,
	[Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StarVotingRestaurant]    Script Date: 8/31/2022 1:14:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StarVotingRestaurant](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StudentNo] [int] NULL,
	[RestaurantID] [int] NULL,
	[StarVoting] [int] NULL,
	[Comment] [nvarchar](max) NULL,
	[Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 8/31/2022 1:14:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[StudentNo] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [varchar](10) NULL,
	[Avatar] [nvarchar](max) NULL,
	[FirstName] [nvarchar](60) NULL,
	[LastName] [nvarchar](20) NULL,
	[Age] [smallint] NULL,
	[Phone] [varchar](10) NULL,
	[Unit] [varchar](5) NULL,
	[Email] [varchar](50) NULL,
	[CountryID] [int] NULL,
	[ProvinceID] [int] NULL,
	[AddressDetail] [nvarchar](200) NULL,
	[DistrictID] [int] NULL,
	[Gender] [bit] NULL,
	[LinkFacebook] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[StudentNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeOfClub]    Script Date: 8/31/2022 1:14:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeOfClub](
	[TypeID] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[TypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([AccountID], [RoleID], [Username], [Password], [AccountStatus]) VALUES (16, 4, N'clbnhaccutruyenthongfu@gmail.com', N'12345', 1)
INSERT [dbo].[Account] ([AccountID], [RoleID], [Username], [Password], [AccountStatus]) VALUES (36, 2, N'dungsouma1@gmail.com', N'1234567a', 1)
INSERT [dbo].[Account] ([AccountID], [RoleID], [Username], [Password], [AccountStatus]) VALUES (15, 4, N'fmuc.fptmuayclub@gmail.com', N'12345', 1)
INSERT [dbo].[Account] ([AccountID], [RoleID], [Username], [Password], [AccountStatus]) VALUES (20, 4, N'fncnunchakuclub@gmail.com', N'12345', 1)
INSERT [dbo].[Account] ([AccountID], [RoleID], [Username], [Password], [AccountStatus]) VALUES (19, 4, N'fptuaiclub@gmail.com', N'12345', 1)
INSERT [dbo].[Account] ([AccountID], [RoleID], [Username], [Password], [AccountStatus]) VALUES (17, 4, N'fptubusinessclub1@gmail.com', N'12345', 1)
INSERT [dbo].[Account] ([AccountID], [RoleID], [Username], [Password], [AccountStatus]) VALUES (14, 4, N'fptvovinamclub@gmail.com', N'12345', 1)
INSERT [dbo].[Account] ([AccountID], [RoleID], [Username], [Password], [AccountStatus]) VALUES (11, 4, N'fu.melody.club@gmail.com', N'me12345', 1)
INSERT [dbo].[Account] ([AccountID], [RoleID], [Username], [Password], [AccountStatus]) VALUES (21, 4, N'fupphotographyy@gmail.com', N'12345', 1)
INSERT [dbo].[Account] ([AccountID], [RoleID], [Username], [Password], [AccountStatus]) VALUES (3, 2, N'hoantmhe141105@fpt.edu.vn', N'hoa120920', 1)
INSERT [dbo].[Account] ([AccountID], [RoleID], [Username], [Password], [AccountStatus]) VALUES (35, 2, N'hongptthe141389@fpt.edu.vn', N'h12345678', 1)
INSERT [dbo].[Account] ([AccountID], [RoleID], [Username], [Password], [AccountStatus]) VALUES (5, 3, N'hung123@gmail.com', N'12345', 1)
INSERT [dbo].[Account] ([AccountID], [RoleID], [Username], [Password], [AccountStatus]) VALUES (18, 4, N'igoclubvicongdong@gmail.com', N'12345', 1)
INSERT [dbo].[Account] ([AccountID], [RoleID], [Username], [Password], [AccountStatus]) VALUES (4, 4, N'jsclub.fpt@gmail.com', N'js12345', 1)
INSERT [dbo].[Account] ([AccountID], [RoleID], [Username], [Password], [AccountStatus]) VALUES (9, 3, N'ktxongba@gmail.com', N'123456', 1)
INSERT [dbo].[Account] ([AccountID], [RoleID], [Username], [Password], [AccountStatus]) VALUES (7, 3, N'liennga@gmail.com', N'12345', 1)
INSERT [dbo].[Account] ([AccountID], [RoleID], [Username], [Password], [AccountStatus]) VALUES (29, 2, N'linhche@gmail.com', N'12345', 1)
INSERT [dbo].[Account] ([AccountID], [RoleID], [Username], [Password], [AccountStatus]) VALUES (28, 2, N'lykhanh@gmail.com', N'12345', 1)
INSERT [dbo].[Account] ([AccountID], [RoleID], [Username], [Password], [AccountStatus]) VALUES (22, 3, N'minh123@gmail.com', N'12345', 1)
INSERT [dbo].[Account] ([AccountID], [RoleID], [Username], [Password], [AccountStatus]) VALUES (25, 2, N'minhtam@gmail.com', N'12345', 0)
INSERT [dbo].[Account] ([AccountID], [RoleID], [Username], [Password], [AccountStatus]) VALUES (1, 3, N'minkook2909@gmail.com', N'hong1234', 1)
INSERT [dbo].[Account] ([AccountID], [RoleID], [Username], [Password], [AccountStatus]) VALUES (30, 2, N'nghiaquang@gmail.com', N'12345', 1)
INSERT [dbo].[Account] ([AccountID], [RoleID], [Username], [Password], [AccountStatus]) VALUES (24, 3, N'nguyendinhvy@gmail.com', N'12345', 1)
INSERT [dbo].[Account] ([AccountID], [RoleID], [Username], [Password], [AccountStatus]) VALUES (2, 1, N'nguyenmyhoa120920@gmail.com', N'12345', 1)
INSERT [dbo].[Account] ([AccountID], [RoleID], [Username], [Password], [AccountStatus]) VALUES (12, 4, N'noshy.fpt@gmail.com', N'noshy123', 1)
INSERT [dbo].[Account] ([AccountID], [RoleID], [Username], [Password], [AccountStatus]) VALUES (8, 3, N'thaidung@gmail.com', N'12345', 1)
INSERT [dbo].[Account] ([AccountID], [RoleID], [Username], [Password], [AccountStatus]) VALUES (23, 3, N'trungkien@gmail.com', N'12345', 1)
INSERT [dbo].[Account] ([AccountID], [RoleID], [Username], [Password], [AccountStatus]) VALUES (27, 2, N'vanthuykhong@gmail.com', N'12345', 1)
INSERT [dbo].[Account] ([AccountID], [RoleID], [Username], [Password], [AccountStatus]) VALUES (10, 3, N'vietanhnguyen@gmail.com', N'12345', 1)
INSERT [dbo].[Account] ([AccountID], [RoleID], [Username], [Password], [AccountStatus]) VALUES (26, 2, N'vietnguyen@gmail.com', N'12345', 1)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Admins] ON 

INSERT [dbo].[Admins] ([AdminID], [Avatar], [FirstName], [LastName], [Age], [CountryID], [ProvinceID], [DistrictID], [AddressDetail], [Phone], [Email], [Gender], [LinkFacebook]) VALUES (1, NULL, N'Mỹ', N'Hòa', 22, 1, NULL, NULL, N'', N'', N'nguyenmyhoa120920@gmail.com', 0, N'')
SET IDENTITY_INSERT [dbo].[Admins] OFF
GO
INSERT [dbo].[Buses] ([BusNumber], [Cost], [BusStop], [Url1], [Url2], [ShortDescriptions]) VALUES (74, 9000.0000, N'Bx Mỹ Đình&&Gần Ngã 4 Phạm Hùng - Đình Thôn (Hướng Đi Khuất Duy Tiến)-Cột Sau&&Nhà Ct5 Kđt Sông Đà Mỹ Đình - Phạm Hùng&&Nhà Hàng Hàn Quốc, Nhà Ct4 Đn Kđt Mỹ Đình - Đường Mễ Trì&&Tường Rào Trạm Y Tế Mễ Trì - Đường Mễ Trì&&Tường Rào Sân Golf Mỹ Đình Pearl - Đại Lộ Thăng Long&&Xóm La, Đại Mỗ - Đại Lộ Thăng Long&&Qua Đối Diện Lối Vào Thpt Đại Mỗ - Đại Lộ Thăng Long&&Trụ Sở Bộ Tư Lệnh Cảnh Sát Biển - Đại Lộ Thăng Long&&Đối Diện Thiên Đường Bảo Sơn - Đại Lộ Thăng Long&&Qua Lối Rẽ Vào Ubnd Xã An Khánh - Đại Lộ Thăng Long&&Chùa Bà - Thôn Yên Lũng, An Khánh - Đại Lộ Thăng Long&&Trước 50m Lối Vào Ubnd Huyện Hoài Đức&&Cầu Vượt Song Phương - Đại Lộ Thăng Long&&Làng Văn Hóa Thôn Quyết Tiến (Trước 200m Cầu Sông Đáy)&&Chùa Sơn Trung, Xã Yên Sơn&&Ngã 3 Chùa Thầy, Gần Cầu Vượt Sài Sơn&&Cầu Vượt Hoàng Xá - Cột Mốc H7/17 Đại Lộ Thăng Long&&Kcn Thạch Thất - Đại Lộ Thăng Long&&Ngã 3 Tỉnh Lộ 419 - Đại Lộ Thăng Long - Kcn Thạch Thất&&Cầu Chui Dân Sinh Số 11 - Đại Lộ Thăng Long&&Cty Sun House, Xã Ngọc Liệp - Đại Lộ Thăng Long&&Trước Nhà Máy Thép Mỹ Thuật Hải Vân - Đại Lộ Thăng Long&&Đường Vào Chùa Kim Long - Đại Lộ Thăng Long&&Thôn Liệp Mai, Xã Ngọc Liệp - Đại Lộ Thăng Long&&Thôn Đồng Kho, Xã Đồng Trúc - Đại Lộ Thăng Long&&Qua Khu Đồng Trúc Resort 10m (Cầu Chui Dân Sinh Số 19), Đại Lộ Thăng Long&&Thôn Đồi Bông, Xã Đồng Trúc - Đại Lộ Thăng Long&&Trạm 110kv Thạch Thất - Đại Lộ Thăng Long&&Đường Vào Kcn Cao Hòa Lạc - Đại Lộ Thăng Long&&Trường Ptth Hòa Lạc&&Tòa Nhà Viettel Hòa Lạc&&Trước 50m Đường Vào Trường Đh Fpt, Hòa Lạc&&Số 231 Thạch Hòa Thạch Thất&&Trung Tâm Dạy Nghề Và Đào Tạo Sát Hạch Lái Xe Hùng Vương&&Qua Cầu Hòa Lạc (Đi Xuân Mai) - Quốc Lộ 21a&&Gần Ngã Tư Lục Quân&&Đối Diện Tập Đoàn Y Dược Bảo Long - Quốc Lộ 21a&&Công Ty Tnhh Punta Vietnam&&Qua Ngã 3 Sơn Tây Đồng Mô&&Ngã Ba Sơn Tây - Võng Xuyên - Quốc Lộ 21a&&Tân Phú Sơn Đông&&Đối Diện Đường Vào Trường Sĩ Quan Phòng Hóa&&Đối Diện Đường Vào Học Viện Phòng Không Không Quân - Công Ty Thịnh Cường&&Qua Ngã Ba Xuân Khanh - Quốc Lộ 21a&&Gần Cây Xăng Quân Đội - Đối Diện Bệnh Viện 105&&118-120a Phố Thanh Vị&&Qua Đối Diện Trường Sỹ Quan Pháo Binh 100m&&Đối Diện Số 163 Phố Thanh Vị&&Đối Diện Số 391 Thanh Mỹ&&Số 58 Thanh Mỹ&&Trước Nhà Máy Z151 - 50m&&Đối Diện Số 101 Xuân Khanh&&Viện Kỹ Thuật Cơ Giới Quân Sự Khu B (Trung Tâm Thực Hành Thí Nghiệm)&&Giữa 270-272 Xuân Khanh&&Trường Đh Công Nghiệp Việt Hung&&Xuân Khanh', N'busimage/xe74_1.jpg', NULL, N'Lộ trình: Mỹ Đình -> Xuân Khanh<br>Thời Gian xe chạy: 04:40 -> 21:00<br>Giá vé: 9.000đ/Vé ')
INSERT [dbo].[Buses] ([BusNumber], [Cost], [BusStop], [Url1], [Url2], [ShortDescriptions]) VALUES (88, 9000.0000, N'Bx Mỹ Đình&&Gần Ngã 4 Phạm Hùng - Đình Thôn (Hướng Đi Khuất Duy Tiến)-Cột Sau&&Nhà Ct5 Kđt Sông Đà Mỹ Đình - Phạm Hùng&&Nhà Hàng Hàn Quốc, Nhà Ct4 Đn Kđt Mỹ Đình - Đường Mễ Trì&&Tường Rào Trạm Y Tế Mễ Trì - Đường Mễ Trì&&Tường Rào Sân Golf Mỹ Đình Pearl - Đại Lộ Thăng Long&&Xóm La, Đại Mỗ - Đại Lộ Thăng Long&&Qua Đối Diện Lối Vào Thpt Đại Mỗ - Đại Lộ Thăng Long&&Trụ Sở Bộ Tư Lệnh Cảnh Sát Biển - Đại Lộ Thăng Long&&Đối Diện Thiên Đường Bảo Sơn - Đại Lộ Thăng Long&&Qua Lối Rẽ Vào Ubnd Xã An Khánh - Đại Lộ Thăng Long&&Đông Y Dược Bảo Long - Đại Lộ Thăng Long&&Chùa Bà - Thôn Yên Lũng, An Khánh - Đại Lộ Thăng Long&&Trước 50m Lối Vào Ubnd Huyện Hoài Đức&&Cầu Vượt Song Phương - Đại Lộ Thăng Long&&Làng Văn Hóa Thôn Quyết Tiến (Trước 200m Cầu Sông Đáy)&&Chùa Sơn Trung, Xã Yên Sơn&&Ngã 3 Chùa Thầy, Gần Cầu Vượt Sài Sơn&&Cầu Vượt Hoàng Xá - Cột Mốc H7/17 Đại Lộ Thăng Long&&Kcn Thạch Thất - Đại Lộ Thăng Long&&Ngã 3 Tỉnh Lộ 419 - Đại Lộ Thăng Long - Kcn Thạch Thất&&Cầu Chui Dân Sinh Số 11 - Đại Lộ Thăng Long&&Cty Sun House, Xã Ngọc Liệp - Đại Lộ Thăng Long&&Trước Nhà Máy Thép Mỹ Thuật Hải Vân - Đại Lộ Thăng Long&&Đường Vào Chùa Kim Long - Đại Lộ Thăng Long&&Thôn Liệp Mai, Xã Ngọc Liệp - Đại Lộ Thăng Long&&Thôn Đồng Kho, Xã Đồng Trúc - Đại Lộ Thăng Long&&Qua Khu Đồng Trúc Resort 10m (Cầu Chui Dân Sinh Số 19), Đại Lộ Thăng Long&&Thôn Đồi Bông, Xã Đồng Trúc - Đại Lộ Thăng Long&&Trạm 110kv Thạch Thất - Đại Lộ Thăng Long&&Đường Vào Kcn Cao Hòa Lạc - Đại Lộ Thăng Long&&Trường Ptth Hòa Lạc&&Tòa Nhà Viettel Hòa Lạc&&Trước 50m Đường Vào Trường Đh Fpt, Hòa Lạc&&Công Ty Tnhh Xây Dựng Sungeun Plant - Thôn 7 Xã Thạch Hòa - Ql21&&Công Ty Cp Dịch Vụ Bảo Vệ Kcn Cao Hòa Lạc&&Ngã Ba Hòa Lạc - Quốc Lộ 21&&Trước Cửa Hàng Điện Máy Tâm Đức - Ql21&&Đối Diện CH Xăng Dầu Phú Cát - Quốc Lộ 21&&Thôn 7 Phú Cát Quốc Oai - Quốc Lộ 21&&Qua 70m Cổng Trung Đoàn Bộ Binh Cơ Giới 102 (Cột Mốc H7/414) - Quốc Lộ 21&&Xóm 2 Hòa Phú, Xã Hòa Thạch - Quốc Oai (Chiều Đi Xuân Mai)&&Trước Công Ty Cp Long Thạch - Ql21&&Trước Cửa Hàng Vật Liệu Xây Dựng Thành Cảnh - Ql21&&Đối Diện Nha Khoa Trường Huyền Xã Hòa Thạch&&Chợ Long Phú - Xã Hòa Thạch - Quốc Lộ 21&&Gần Cầu Cửa Đầm - Quốc Lộ 21&&Xóm 5 Thôn Long Phú Xã Hòa Thạch (Trước Đội Cơ Giới Máy Thi Công)&&Đối Diện Làng Văn Hóa Yên Thái, Xã Đông Sơn, Hòa Binh - Quốc Lộ 21&&Cửa Hàng Xăng Dầu Tv21 - Quốc Lộ 21&&Đường Vào Trường Đh Pccc Cơ Sở 2 Bộ Ca - Quốc Lộ 21&&Đại Học Lâm Nghiệp - Quốc Lộ 21&&35 Tổ 3, Thị Trấn Xuân Mai&&Trường Sỹ Quan Đặc Công (Qua Cửa Hàng Xăng Dầu Số 7 Xuân Mai)&&Cty Xuân Cương (Trước 100m Cầu Xuân Mai) - Đường Hồ Chí Minh&&Trường Trung Cấp Cảnh Sát Vũ Trang - Đường Hồ Chí Minh&&Qua 100m Trường Trung Cấp Nghề Tổng Hợp Hà Nội - Đường Hồ Chí Minh&&Trung Tâm Dịch Vụ Tổng Hợp, Thôn Xuân Trung - Đường Hồ Chí Minh&&Thôn Xuân Sen - Xuân Mai - Đường Hồ Chí Minh&&Ktx Trường Cđ Cộng Đồng Hà Tây - Đường Hồ Chí Minh&&Cổng Trường Cđ Cộng Đồng Hà Tây - Đường Hồ Chí Minh&&Xuân Mai (Trường Cđ Cộng Đồng Hà Tây)', N'busimage/xe88_1.jpg', NULL, N'Lộ trình: Mỹ Đình -> Xuân Mai<br>Thời Gian xe chạy: 05:00 -> 20:00<br>Giá vé: 9.000đ/Vé ')
INSERT [dbo].[Buses] ([BusNumber], [Cost], [BusStop], [Url1], [Url2], [ShortDescriptions]) VALUES (107, 9000.0000, N'211 Kim Mã &&116 A5 Tập thể Giảng Võ – Kim Mã &&31 Nguyễn Chí Thanh &&73 Nguyễn Chí Thanh – Đối diện Khách sạn Bảo Sơn &&89 Nguyễn Chí Thanh – KTX Đại học Luật&&KTX Đại học Giao thông Vận tải – 99 Nguyễn Chí Thanh &&Đại học Lao động & Xã hội – 43 Trần Duy Hưng &&113 Trần Duy Hưng – Bộ KHCN &&Đối diện 220 Trần Duy Hưng (đối diện Big C,&&Cách Ngã 3 Hoàng Minh Giám) &&Tòa nhà Thăng Long Number One – Đại lộ Thăng Long &&Công ty Viễn Thông Viettel (Tòa nhà N1) – Đại lộ Thăng Long &&Qua 100m ngã 3 Đại lộ Thăng Long – Lê Quang Đạo &&Trước ngã 3 Phố Sa Đôi – Đại lộ Thăng Long &&Lối vào THPT Đại Mỗ – Đại lộ Thăng Long &&Qua ngã 3 Làng Miêu Nha – Đại lộ Thăng Long &&Đường vào UBND Phường Tây Mỗ – Đại lộ Thăng Long &&Cổng Thiên Đường Bảo Sơn – Đại lộ Thăng Long &&Trước 50m hầm chui dân sinh số 3 Đại Lộ Thăng Long &&Cầu vượt An Khánh – Đại lộ Thăng Long &&KĐT Nam An Khánh – Đại lộ Thăng Long&&Đê Phương Viên, Song Phương – Đại lộ Thăng Long &&Song Phương, Hoài Đức – Đại lộ Thăng Long &&Xã Vân Côn, Hoài Đức – Đại lộ Thăng Long &&Thôn Quảng Yên, Yên Sơn, Quốc Oai – Đại lộ Thăng Long &&Ngã 3 Chùa Thầy – Quốc Oai – Đại lộ Thăng Long &&Khu đô thị Ngôi nhà mới- Đại lộ Thăng Long &&Thôn Ngô Sài – thị trấn Quốc Oai – Đại lộ Thăng Long &&Thôn Ngọc Than, xã Ngọc Mỹ – Đại lộ Thăng Long &&Thôn Đồng Bụt, xã Ngọc Liệp – Đại lộ Thăng Long &&Trường THCS Ngọc Liệp &&Thôn Liệp Mai, xã Ngọc Liệp – Đại lộ Thăng Long (hướng về trung tâm thành phố) &&Thôn Đồng Kho, xã Đồng Trúc – Đại lộ Thăng Long (hướng về trung tâm thành phố) &&Thôn Khoang Mái, xã Đồng Trúc – Đại lộ Thăng Long &&Cty Cám Trường Thọ – Đại lộ Thăng Long &&Khu CN cao Hòa Lạc – Đại lộ Thăng Long &&Đối diện trường PTTH Hòa Lạc &&Đối Diện Tòa Nhà Viettel Hòa Lạc &&Qua 50m đối diện đường vào trường ĐH FPT, Hòa Lạc &&Quầy thuốc số 15 – Thôn 7 xã Thạch Hòa – QL21 &&Qua 30m đối diện công ty CP dịch vụ bảo vệ KCN Cao Hòa Lạc – QL21 &&Đối diện cửa hàng điện nước Tuấn Bình – thôn 7 xã Thạch Hòa – QL21 &&Đại lý sữa Lan Anh – xã Thạch Hòa &&Công ty CP xây dựng Tiến An – Thôn 6 xã Thạch Hòa &&Trước 30m đường vào thôn Trại Mới xã Tiến Xuân &&Đại lý sữa Ất Thảo – Thôn Nhòn xã Tiến Xuân &&Qua 30m Cty CP An Thinh Group – Thôn Gò Mè xã Yên Bình &&Qua Ngã 4 Yên Bình 70m &&Trước 30 đối diện Xưởng thực hành Trường Cao đẳng công nghiệp kỹ thuật Trần Hưng Đạo &&Qua Cổng A Làng Văn Hóa Du Lịch Các Dân Tộc Việt Nam 30m &&Làng văn hóa các dân tộc Việt Nam – Tuyến 107', N'busimage/xe107_1.png', NULL, N'Lộ trình: Kim Mã -> Làng Văn hóa Du lịch các dân tộc Việt Nam<br>Thời Gian xe chạy: 05:00 -> 20:50<br>Giá vé: 9.000đ/Vé ')
INSERT [dbo].[Buses] ([BusNumber], [Cost], [BusStop], [Url1], [Url2], [ShortDescriptions]) VALUES (117, 9000.0000, N'Hòa Lạc&&Qua Vòng Xuyến Đường Vào Trường Đh Fpt 50m&&Thôn 8 Thạch Hòa Hòa Lạc&&Xưởng Bê Tông, Đối Diện 354 Thạch Hòa Thạch Thất&&Số 231 Thạch Hòa Thạch Thất&&Số 27 Thôn 9 Thạch Hòa&&Của Hàng Sửa Chữa Xe Máy Duẩn An&&Qua Chùa Thái Bình 10m&&Trước Đối Diện Cây Xăng Bình Yên 20m&&Cửa Hàng Sơn Tiến Đạt&&Đối Diện Ubnd Xã Bình Yên&&Nhà Hàng Hoa Võ - Bình Yên - Thạch Thất&&Cửa Hàng Vật Liệu Đá Granit&&Trước Lối Vào Tập Thể Bvđk Thạch Thất&&Ngã 3 Thị Trấn Liên Quan&&Trung Tâm Bồi Dưỡng Chính Trị Thạch Thất&&Qua Cổng Làng Thúy Lai&&Trước Cổng Làng Hương Ngải&&Khu Đồng Cháy Hưng Ngải&&Tây Ninh Xã Canh Nậu (Chiều Đi)&&Đối Diện Làng Nghề Đồ Gỗ Mỹ Nghệ Thạch Thất&&Qua Ngã Tư Hữu Bằng Di Nậu 30m&&Khu Công Nghệ Liên Hiệp Phúc Thọ&&Đối Diện Nghĩa Trang Liệt Sỹ Xã Liên Hiệp&&Cửa Hàng Tạp Hóa Bình Kinh&&Lối Vào Đình Hạ Hiệp&&Đối Diện Xóm Bùi - Hiệp Thuận - Phúc Thọ&&Qua Lối Vào Làng Quế Lâm 30m&&Đối Diện Xóm Hưng Khánh - Thôn Yên Dục&&Qua Đường Vào Thôn Ngoại Xã Tam Thuấn 70m - Quốc Lộ 32&&Đối Diện Viện Nghiên Cứu Ngô Quốc Gia - Đường Dẫn Cầu Phùng&&Đối Diện Trường Thcs Lương Thế Vinh, Thị Trấn Phùng&&Tổ Đình Thụy Ứng - (Thị Trấn Phùng) - Quốc Lộ 32&&37-39 Phan Đình Phùng (Thị Trấn Phùng) - Quốc Lộ 32&&Tòa Án Nhân Dân Huyện Đan Phượng - Quốc Lộ 32&&Đường Vào Chùa Diên Phúc (Cạnh Thạch Thảo Lisa) - Quốc Lộ 32&&Xn May Mỹ Anh (Xã Đức Thượng) - Quốc Lộ 32&&Đối Diện Xn Thuốc Thú Y Trung Ương (Đức Thượng Hoài Đức - Quốc Lộ 32&&Đối Diện Trường Thpt Bình Minh - Quốc Lộ 32&&Đối Diện Công Ty Đông Thành (Thị Trấn Trôi) - Quốc Lộ 32&&Đối Diện Bưu Điện Hoài Đức (Trị Trấn Trôi) - Quốc Lộ 32&&Đối Diện Lối Rẽ Học Viện Kh Quân Sự - Quốc Lộ 32&&CH Xây Dựng Tuấn Loan (Thị Trấn Lai Xá) - Quốc Lộ 32&&Đối Diện Nhà Hàng Thăng Long - Quốc Lộ 32&&Qua Đường Vào Tt Huấn Luyện Thể Thao Quốc Gia I - Quốc Lộ 32&&Hè Giữa Nhà Số 55-57 Phố Nhổn&&Nhổn', N'busimage/xe117_1.jpg', NULL, N'Lộ trình: Hoà Lạc -> Nhổn<br>Thời Gian xe chạy: 05:00 -> 20:00<br>Giá vé: 9.000đ/Vé ')
INSERT [dbo].[Buses] ([BusNumber], [Cost], [BusStop], [Url1], [Url2], [ShortDescriptions]) VALUES (119, 9000.0000, N'Bất Bạt&&Qua Xóm 4, Lò Năm Tư 19m, Đt86&&Qua Xóm 17 Làng Đan Thê 10m, Đt86&&Qua Đối Diện Đường Vào Xã Thuần Mỹ 30m, Ba Vì&&Qua Đối Diện Cửa Hàng Thuốc Thú Y Thanh Hiền 30m, Xóm 4, Thôn 3, Thuần Mỹ&&Trước Đối Diện Cổng Xóm Tân Trại, Thôn 2, Ba Trại, Ba Vì&&Trước Cổng Làng Văn Hóa Thôn 2, Ba Trại, Ba Vì&&Trước Ubnd Xã Ba Trại 40m, Thôn 5, Ba Trại, Ba Vì&&Trước Xóm Đồng Đầm, Thôn 6, Ba Trại, Ba Vì&&Đối Diện Cửa Hàng Sửa Chữa Ô Tô Xe Máy Hồng Sơn, Thôn 6, Tam Uy, Ba Trại, Ba Vì&&Qua Đối Diện Đường Vào Khu Du Lịch Đầm Long 100m (Đối Diện Nhà Hàng Hồng Thái Anh)&&Trước Cửa Hàng Sửa Chữa Xe Máy Quang Vượng, Hoàng Long - Tản Lĩnh&&Trước Ngã 3 Ao Vua 100m&&Trung Tâm Thương Mại Miền Núi Tản Lĩnh&&Qua Cầu Kìm 50m (Shop Thời Trang Hồng Thúy)&&Trước Cửa Hàng Ga Dũng Tính Thôn Hà Tân, Xã Cẩm Lĩnh&&Đối Diện Ubnd Xã Tản Lĩnh (Cửa Hàng Rèm Hương Dung)&&Đối Diện Đại Lý Gà Cấp 1 Trọng Hoa, Đức Thịnh, Tản Lĩnh&&Trước Ngã 3 Vườn Quốc Gia Ba Vì 50 (Chiều Đi Bx Sơn Tây)&&Trước Ngã 3 Cây Xăng Tản Lĩnh 100m&&Trước Đối Diện Trường Thcs Trung Tâm Nghiên Cứu Bò Và Đồng Cỏ Ba Vì 40m, Đt87&&Trước Cưa Hàng Nhựa Tiền Phong Minh Sáu, Thôn Xuân Hòa, Vân Hòa, Đt87&&Trước Đối Diện Đường Vào Khu Du Lịch Khoang Sanh, Suối Tiên 70m, Đt87&&Đối Diện Trường Tiểu Học Yên Bài Khu C, Đt87&&Qua Đối Diện Trường Bắn Ba Vành 40m, Đt87&&Trước Trường Mầm Non Yên Bài A 40m, Đt87&&Quầy Thuốc Yên Bài, Đt87&&Đối Diện Làng Văn Hóa Thôn Quảng Phúc, Đt87&&Trước Cổng Doanh Trại Quân Đội Nhân Dân Việt Nam 10m, Đt87&&Trước 30 Đối Diện Xưởng Thực Hành Trường Cao Đẳng Công Nghiệp Kỹ Thuật Trần Hưng Đạo&&Qua Ngã 4 Yên Bình 70m&&Trước Cổng Trung Tâm Đào Tạo Lái Xe Hùng Vương 50m, Xã Bình Yên, Thạch Thất&&Qua 30m Cty Cp An Thinh Group - Thôn Gò Mè Xã Yên Bình&&Đại Lý Sữa Ất Thảo - Thôn Nhòn Xã Tiến Xuân&&Trước 30m Đường Vào Thôn Trại Mới Xã Tiến Xuân&&Công Ty Cp Xây Dựng Tiến An - Thôn 6 Xã Thạch Hòa&&Đại Lý Sữa Lan Anh - Xã Thạch Hòa&&Đối Diện Cửa Hàng Điện Nước Tuấn Bình - Thôn 7 Xã Thạch Hòa - Ql21&&Qua 30m Đối Diện Công Ty Cp Dịch Vụ Bảo Vệ Kcn Cao Hòa Lạc - Ql21&&Quầy Thuốc Số 15 - Thôn 7 Xã Thạch Hòa - Ql21&&Trước Vòng Xuyến Đường Vào Trường Đh Fpt 70m&&Hòa Lạc', N'busimage/xe119_1.png', NULL, N'Lộ trình: Hòa Lạc -> Bất Bạt<br>Thời Gian xe chạy: 05:00 -> 20:30<br>Giá vé: 9.000đ/Vé ')
GO
SET IDENTITY_INSERT [dbo].[Clubs] ON 

INSERT [dbo].[Clubs] ([ClubID], [Avatar], [ClubName], [ClubPresident], [Facebook], [Email], [Description], [Type]) VALUES (1, N'avatarImages/jsclub.fptAvatar.jpg', N'JS Club - Japanese Software Engineers', N'Lê Thanh Bình', N'https://www.facebook.com/fu.jsclub', N'jsclub.fpt@gmail.com', N'JS Club là câu lạc bộ Kỹ sư phần mềm Nhật Bản, nơi hội tụ của những bạn đam mê tiếng Nhật và lập trình', 1)
INSERT [dbo].[Clubs] ([ClubID], [Avatar], [ClubName], [ClubPresident], [Facebook], [Email], [Description], [Type]) VALUES (3, N'avatarImages/fu.melody.clubAvatar.jpg', N'FPTU - Melody Club', N'Đào Nhật Nam', N'https://www.facebook.com/fptu.melody.club', N'fu.melody.club@gmail.com', N'CLB Âm Nhạc ĐH FPT Hà Nội', 4)
INSERT [dbo].[Clubs] ([ClubID], [Avatar], [ClubName], [ClubPresident], [Facebook], [Email], [Description], [Type]) VALUES (4, N'avatarImages/noshy.fptAvatar.jpg', N'No Shy Club ', N'Đỗ Kiều Đức An', N'https://www.facebook.com/noshyclub', N'noshy.fpt@gmail.com', N'No Shy Club - English Speaking & Soft Skill Club of  FPT University 
No Shy Club was founded to create an open environment in which members have many opportunities to improve themselves in language & other soft skills', 2)
INSERT [dbo].[Clubs] ([ClubID], [Avatar], [ClubName], [ClubPresident], [Facebook], [Email], [Description], [Type]) VALUES (5, NULL, N'FPTU Vovinam Club ', N'Trần Trung Hải', N'https://www.facebook.com/fvchn', N'fptvovinamclub@gmail.com', N'FPTU Vovinam Club (FVC) là câu lạc bộ võ thuật của trường Đại học FPT, được thành lập từ 6/6/2009. Là một trong những CLB lâu đời và có bảng thành tích nhiều nhất nhì xứ Hola, FVC luôn giữ trong mình tinh thần võ đạo và nhiệt huyết, gắn liền với slogan "Pain is temporary - Glory lasts forever".', 3)
INSERT [dbo].[Clubs] ([ClubID], [Avatar], [ClubName], [ClubPresident], [Facebook], [Email], [Description], [Type]) VALUES (8, N'avatarImages/fmuc.fptmuayclubAvatar.jpg', N'FMUC - FPTU Muay Club', N' Nguyễn Văn Phùng', N'https://www.facebook.com/fmuc.fptu', N'fmuc.fptmuayclub@gmail.com', N'CLB Thể Thao', 3)
INSERT [dbo].[Clubs] ([ClubID], [Avatar], [ClubName], [ClubPresident], [Facebook], [Email], [Description], [Type]) VALUES (9, N'avatarImages/clbnhaccutruyenthongfuAvatar.jpg', N'CLB Nhạc Cụ Truyền Thống - FTIC', N'Nguyễn Thị Vân', N'https://www.facebook.com/FTIC.FUHL', N'clbnhaccutruyenthongfu@gmail.com', N'Câu lạc bộ Nhạc Cụ Truyền Thống Đại học FPT - Nơi hội tụ những con người ', 4)
INSERT [dbo].[Clubs] ([ClubID], [Avatar], [ClubName], [ClubPresident], [Facebook], [Email], [Description], [Type]) VALUES (10, NULL, N'FPTU Business Club', N'Nghiêm Hải Đăng', N'https://www.facebook.com/FU.Business', N'fptubusinessclub1@gmail.com', N'FPTU Business Club là nơi để tất cả thành viên không chỉ được hết mình đóng góp ý tưởng với những dự án kinh doanh sáng tạo, độc đáo; được trau dồi thêm kiến thức về chuyên môn mà còn là nơi để mọi người có thể giúp đỡ lẫn nhau cả trong lĩnh vực học tập, cuộc sống. Nơi mà tất cả mọi người hoạt động như một gia đình, qua những buổi giao lưu sinh hoạt để các thành viên thấu hiểu về nhau hơn.', 1)
INSERT [dbo].[Clubs] ([ClubID], [Avatar], [ClubName], [ClubPresident], [Facebook], [Email], [Description], [Type]) VALUES (11, NULL, N'iGo club', N'Trần Hồng Ngọc', N'https://www.facebook.com/iGoClub', N'igoclubvicongdong@gmail.com', N'CLB Vì cộng đồng iGo', 2)
INSERT [dbo].[Clubs] ([ClubID], [Avatar], [ClubName], [ClubPresident], [Facebook], [Email], [Description], [Type]) VALUES (12, NULL, N'FPTU AI Club - Artificial Intelligence Researchers', N'Lê Hoàng Phúc', N'https://www.facebook.com/aiclub.fptu', N'fptuaiclub@gmail.com', N'AI Club là CLB trí tuệ nhân tạo đầu tiên của FPTU với mục đích tạo ra môi trường học thuật, thúc đẩy nghiên cứu và ứng dụng trí tuệ nhân tạo vào thực tế.', 1)
INSERT [dbo].[Clubs] ([ClubID], [Avatar], [ClubName], [ClubPresident], [Facebook], [Email], [Description], [Type]) VALUES (13, NULL, N'FNC - FPTU Nunchaku Club', N'Võ Thị Hồng Hạnh', N'https://www.facebook.com/nunchaku.fnc', N'fncnunchakuclub@gmail.com', N'FNC - FPTU Nunchaku Club (23/05/2019) là nơi hội tụ của những người có cùng chung sở thích về bộ môn Côn Nhị Khúc', 3)
INSERT [dbo].[Clubs] ([ClubID], [Avatar], [ClubName], [ClubPresident], [Facebook], [Email], [Description], [Type]) VALUES (14, NULL, N'FU-PHOTOGRAPHY (FUP)', N'Linh Diệu', N'https://www.facebook.com/FUphotography.club', N'fupphotographyy@gmail.com', N'"𝘔𝘦̂ 𝘤𝘶𝘯𝘨 𝘤𝘰̀𝘯 𝘤𝘰́ 𝘭𝘰̂́𝘪 𝘳𝘢
𝘔𝘦̂ 𝗙𝗨𝗣 𝘵𝘩𝘪̀ 𝘤𝘩𝘪̣𝘶, 𝘣𝘪𝘦̂́𝘵 𝘳𝘢 đ𝘶̛𝘰̛̀𝘯𝘨 𝘯𝘢̀𝘰?”
📷 Đã mê 𝗙𝗨𝗣 như vậy mà không đăng ký ngay vào kỳ tuyển quân này của chúng mình thì phải chăng là một thiếu sót? Còn chần chừ gì nữa mà không nhanh tay điền đơn ngay thôi… 
📷 Đến với 𝗙𝗨 - 𝗣𝗵𝗼𝘁𝗼𝗴𝗿𝗮𝗽𝗵𝘆, cậu sẽ có những trải nghiệm tuyệt vời cùng chúng mình. Không chỉ là nơi lưu giữ những kỉ niệm của mọi người, mà tại đây cũng chính là nơi mà lưu lại những khoảnh khắc tuyệt vời của bản thân. 
📸 Đừng lo lắng hay băn khoăn bởi ở đây có cậu, có chúng mình, có 𝗙𝗨 - 𝗣𝗵𝗼𝘁𝗼𝗴𝗿𝗮𝗽𝗵𝘆.
📎 Vậy đến với 𝗙𝗨 - 𝗣𝗵𝗼𝘁𝗼𝗴𝗿𝗮𝗽𝗵𝘆, cậu sẽ được gì ?
💥 Gặp gỡ những con người có chung một niềm đam mê, cùng “tần số”.
💥 Được tổ chức, tham gia các buổi training, thảo luận, tư vấn để nhiếp ảnh và các chủ đề liên quan. 
💥 Học hỏi, trau dồi kỹ năng nhiếp ảnh của bản thân.
💥 Có cơ hội trở thành các “nháy xịn” trong các sự kiện lớn mà 𝗖𝗟𝗕 phụ trách.
💥 Cháy hết mình trong các buổi họp mặt, team building đầy hấp dẫn. 
💥 Du nhập văn hóa nội bộ của 𝗙𝗨𝗣 mà chỉ khi vào 𝗙𝗨𝗣 mới được trải nghiệm. 
💥 Được vi vu trên mọi địa điểm độc đáo, thú vị qua các chuyến trải nghiệm cùng 𝗖𝗟𝗕. ', 4)
SET IDENTITY_INSERT [dbo].[Clubs] OFF
GO
SET IDENTITY_INSERT [dbo].[Country] ON 

INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (1, N'Việt Nam')
SET IDENTITY_INSERT [dbo].[Country] OFF
GO
SET IDENTITY_INSERT [dbo].[Department] ON 

INSERT [dbo].[Department] ([DepId], [DepName], [DepNameAbbreviations], [Email], [Phone], [OpenDay], [Url1], [Url2], [Descriptions], [ShortDescription], [Position]) VALUES (4, N'PHÒNG DỊCH VỤ SINH VIÊN', N'DVSV', N'dichvusinhvien@fe.edu.vn', N'02473081313', N'Thứ 2 đến thứ 6 hàng tuần', N'departmentimage/dvsv1.jpg', N'departmentimage/dvsv2.jpg', N'- Địa điểm: Phòng 102L – tòa nhà Alpha, Đại học FPT cơ sở Hà Nội
- Phòng Dịch vụ sinh viên là nơi:
+ Hỗ trợ các thủ tục hành chính: Làm thẻ sinh viên, thẻ BHYT, giấy xác nhận sinh viên,...
+ Hỗ trợ, tiếp nhận và xử lý các vấn đề liên quan đến quy định, chính sách, thủ tục học vụ, tài chính, ktx…
+ Hỗ trợ các dịch vụ phụ huynh như :
● Hướng dẫn sử dụng tài khoản truy cập cổng thông tin dành cho phụ huynh
● Giải đáp thắc mắc phụ huynh về tình hình học tập của sinh viên
● Gửi thông báo cho phụ huynh khi sinh viên bảo lưu, thôi học… ', N'Phòng Dịch vụ sinh viên là nơi giúp các bạn sinh viên trong việc :
- Tiếp nhận các yêu cầu sinh viên liên quan đến thủ tục hành chính (Thẻ sinh viên, giấy xác nhận sinh viên, BHYT…), thủ tục học vụ (Đăng ký bảo lưu, học cải thiện, đăng ký học lại…), thu ngân. 
- Giải đáp các thắc mắc của sinh viên về các quy định, quy chế, chính sách của nhà trường.', NULL)
INSERT [dbo].[Department] ([DepId], [DepName], [DepNameAbbreviations], [Email], [Phone], [OpenDay], [Url1], [Url2], [Descriptions], [ShortDescription], [Position]) VALUES (5, N'PHÒNG HỢP TÁC QUỐC TẾ VÀ PHÁT TRIỂN CÁ NHÂN', N'ICPDP', N'pdp.hn@fpt.edu.vn', N'024 6680 5910', N'Thứ 2 đến thứ 6 hàng tuần', N'departmentimage/icpdp1.jpg', N'departmentimage/icpdp2.jpg', N'- Địa điểm: Phòng 102 – tòa nhà Alpha, Đại học FPT cơ sở Hà Nội
- Fanpage chính thức: https://www.facebook.com/icpdp.globalstudy/ 
- Phòng Hợp tác Quốc tế và Phát triển Cá nhân (IC-PDP) Đại học FPT Hà Nội
+ Là nơi update thông tin, hình ảnh và câu chuyện về các hoạt động, chương trình, sự kiện và workshop dành cho sinh viên ĐH FPT Hà Nội!
+ Giúp các bạn sinh viên giải stress sau những giờ học căng thẳng đồng thời phát triển kỹ năng mềm thông qua các hoạt động trải nghiệm lên rừng, xuống biển. Việc tham gia tích cực các hoạt động ngoại khóa cũng là yếu tố để làm đẹp CV, điểm cộng sáng giá trong mỗi kỳ xét duyệt học bổng hay tham gia trao đổi sinh viên tại nước ngoài.', N'Phòng Phát triển cá nhân có chức năng giúp sinh viên giải stress sau những giờ học căng thẳng đồng thời phát triển kỹ năng mềm thông qua các hoạt động trải nghiệm lên rừng, xuống biển. Việc tham gia tích cực các hoạt động ngoại khóa cũng là yếu tố để làm đẹp CV, điểm cộng sáng giá trong mỗi kỳ xét duyệt học bổng hay tham gia trao đổi sinh viên tại nước ngoài.', NULL)
INSERT [dbo].[Department] ([DepId], [DepName], [DepNameAbbreviations], [Email], [Phone], [OpenDay], [Url1], [Url2], [Descriptions], [ShortDescription], [Position]) VALUES (6, N'PHÒNG CÔNG TÁC SINH VIÊN', N'CTVS', N'sro.hn@fpt.edu.vn', N'024 6680 5915', N'Thứ 2 đến thứ 6 hàng tuần', N'departmentimage/ctsv1.jpg', N'departmentimage/ctsv2.jpg', N'- Địa điểm: Phòng 101-tòa nhà Delta, Đại học FPT cơ sở Hà Nội
- Fanpage chính thức: https://www.facebook.com/CTSV.FU
Phòng Công tác sinh viên là nơi:
+ Tổ chức các sự kiện thường niên
● Lễ Khai giảng, Lễ Tốt nghiệp, Lễ Tôn vinh sinh viên
● The Dialogue: Các hội thảo về kỹ năng học tập, hội thảo về ngành nghề, xu hướng công nghệ,...
● Inspiration show: Chuỗi chương trình truyền cảm hứng.', N'Với chức năng quản lý sinh viên, cung cấp các dịch vụ cho sinh viên trong quá trình học tập tại Trường, đồng thời hỗ trợ cá hoạt động phong trào do Trường hoặc sinh viên tổ chức, Phòng CTSV hỗ trợ các dịch vụ như: Hành chính; Dịch vụ thông tin và hỗ trợ học tập; Thông tin phụ huynh sinh viên; Dịch vụ Y tế…', NULL)
INSERT [dbo].[Department] ([DepId], [DepName], [DepNameAbbreviations], [Email], [Phone], [OpenDay], [Url1], [Url2], [Descriptions], [ShortDescription], [Position]) VALUES (7, N'PHÒNG QUAN HỆ DOANH NGHIỆP VÀ CỰU SINH VIÊN', N'', N'alumni@fpt.edu.vn
job@fe.edu.vn', N'024 7300 5569', N'Thứ 2 đến thứ 6 hàng tuần', N'departmentimage/alumni.jpg', N'departmentimage/career.jpg', N'- Địa điểm: Phòng 101-tòa nhà Delta, Đại học FPT cơ sở Hà Nội
- Fanpage chính thức: https://www.facebook.com/ALUMNI.FPTU
                      https://www.facebook.com/FPTUcareercenter
                      
- Đây là nơi:
+ Quan hệ doanh nghiệp:
● Tổ chức các sự kiện, hoạt động: Company Tour, Jobs fair, Career Talk,...
● Hỗ trợ sinh viên tìm và kết nối các công ty thực tập và doanh nghiệp cần tuyển dụng

+ Quan hệ Cựu sinh viên:
● Cung cấp các thông tin tuyển dụng cho sinh viên, cựu sinh viên thường xuyên qua các kênh truyền thông online : email, website, Facebook, TOPCV...
● Tổ chức các cuộc gặp mặt cựu sinh viên, tổ chức các sự kiện văn hóa, thể thao hàng kỳ/hàng năm : Giải bóng đá cựu sinh viên mở rộng, Home Coming...', N'
- Quan hệ doanh nghiệp:
● Tổ chức các sự kiện, hoạt động; hỗ trợ sinh viên tìm và kết nối các công ty thực tập và doanh nghiệp cần tuyển dụng

+ Quan hệ Cựu sinh viên:
● Cung cấp các thông tin tuyển dụng cho sinh viên, cựu sinh viên ; tổ chức các cuộc gặp mặt cựu sinh viên, tổ chức các sự kiện văn hóa, thể thao hàng kỳ/hàng năm ', NULL)
INSERT [dbo].[Department] ([DepId], [DepName], [DepNameAbbreviations], [Email], [Phone], [OpenDay], [Url1], [Url2], [Descriptions], [ShortDescription], [Position]) VALUES (8, N'PHÒNG TƯ VẤN TÂM LÝ ĐH FPT HÀ NỘI - CÓC KỂ', N'', N'tuvansinhvien@fpt.edu.vn', N'091 681 62 97', N'Thứ 2 đến thứ 6 hàng tuần', N'departmentimage/cocke1.jpg', N'departmentimage/cocke2.jpg', N'"You share - We care" 
BẢO MẬT - CHẤT LƯỢNG - TÔN TRỌNG
Đặt lịch hỗ trợ, tư vấn trực tiếp 1 - 1 với chuyên viên tâm lý bằng cách: 
- Điền biểu mẫu đăng kí: 
> Nếu là sinh viên ĐH FPT, vui lòng điền theo link: https://goo.gl/moYEFR
> Nếu không phải là sinh viên ĐH FPT, vui lòng điền theo link: https://bit.ly/2X6qtn0
- Đặt lịch tư vấn qua Mail: tuvansinhvien@fpt.edu.vn
- Đến trực tiếp phòng Cóc Kể - 310R nhà Alpha
- Nhắn tin qua page: https://www.facebook.com/tuvantamlyFPT/
- Gọi điện đến Hotline: 0916816297 hoặc 0376383509
Cóc Kể - Nơi bạn luôn được chào đón, lắng nghe và chia sẻ mọi khó khăn của cuộc sống, đặc biệt các vấn đề liên quan đến cuộc sống học đường, Tâm lý, kỹ năng...', N'Cóc Kể - Nơi các bạn sinh viên luôn được chào đón, lắng nghe và chia sẻ mọi khó khăn của cuộc sống, đặc biệt các vấn đề liên quan đến cuộc sống học đường, Tâm lý, kỹ năng...', NULL)
INSERT [dbo].[Department] ([DepId], [DepName], [DepNameAbbreviations], [Email], [Phone], [OpenDay], [Url1], [Url2], [Descriptions], [ShortDescription], [Position]) VALUES (9, N'THƯ VIỆN TRƯỜNG ĐẠI HỌC FPT', N'', N'fptu.bookclub@gmail.com', N'024 6680 5912', N'Thứ 2 đến thứ 6 hàng tuần', N'departmentimage/thuvien1.jpg', N'departmentimage/thuvien2.jpg', N'- Địa điểm: Tầng 1 – tòa nhà Delta, Đại học FPT cơ sở Hà Nội
- Fanpage chính thức: https://www.facebook.com/fu.bukclub/
- Thư viện trường đại học FPT Hà Nội cung cấp các dịch vụ mượn/trao đổi sách, giáo trình học cho các bạn sinh viên đại học fpt, cũng là 1 đia điểm yên tĩnh để các bạn sinh viên có thể tập trung cùng nhau học tập', N'Thư viện trường đại học FPT Hà Nội cung cấp các dịch vụ mượn/trao đổi sách, giáo trình học cho các bạn sinh viên đại học fpt, cũng là 1 đia điểm yên tĩnh để các bạn sinh viên có thể tập trung cùng nhau học tập', NULL)
INSERT [dbo].[Department] ([DepId], [DepName], [DepNameAbbreviations], [Email], [Phone], [OpenDay], [Url1], [Url2], [Descriptions], [ShortDescription], [Position]) VALUES (12, N'Phòng IT', N'IT ', NULL, N'0902171086', N'Thứ 2 đến thứ 6 hàng tuần', N'departmentimage/it.jpg', N'departmentimage/it2.jpg', N'- Địa điểm: 300L alpha 💻 SỬA CHỮA MỌI VẤN ĐỀ VỀ LAPTOP: 
• Các loại bệnh laptop từ khó đến rất khó
• Có cửa hàng sửa chữa laptop có địa chỉ chính và uy tín lớn Hà Nội.
• Sửa uy tín, chất lượng. Bảo hành dài yên tâm sử dụng. Hỗ trơ 24/24
• Cung cấp linh kiện, chính hãng.'',N''Hỗ trợ xử lý các vấn đề về laptop:
• Vệ sinh bảo dưỡng
• Sửa chữa cài đặt laptop
• Nâng cấp ram ssd và tư vấn miễn phí.
• Sửa chữa bản lề , thay thế link kiện: sạc, phím, pin, ram. hỏng màn...''', N'💻 SỬA CHỮA MỌI VẤN ĐỀ VỀ LAPTOP', NULL)
SET IDENTITY_INSERT [dbo].[Department] OFF
GO
SET IDENTITY_INSERT [dbo].[District] ON 

INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (1, 4, N'Ngô Quyền')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (2, 19, N'Xí Mần')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (3, 21, N'Quận Ba Đình')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (4, 21, N'Quận Bắc Từ Liêm')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (5, 21, N'Quận Cầu Giấy')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (6, 21, N'Quận Đống Đa')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (7, 21, N'Quận Hà Đông')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (8, 21, N'Quận Hai Bà Trưng')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (9, 21, N'Quận Hoàn Kiếm')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (10, 21, N'Quận Hoàng Mai')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (11, 21, N'Quận Long Biên')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (12, 21, N'Quận Nam Từ Liêm')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (13, 21, N'Quận Tây Hồ')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (14, 21, N'Quận Thanh Xuân')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (15, 21, N'Thị xã Sơn Tây')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (16, 21, N'Huyện Ba Vì')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (17, 21, N'Huyện Chương Mỹ')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (18, 21, N'Huyện Đan Phượng')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (19, 21, N'Huyện Đông Anh')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (20, 21, N'Huyện Gia Lâm')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (21, 21, N'Huyện Hoài Đức')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (22, 21, N'Huyện Mê Linh')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (23, 21, N'Huyện Mỹ Đức')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (24, 21, N'Huyện Phú Xuyên')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (25, 21, N'Huyện Phúc Thọ')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (26, 21, N'Huyện Quốc Oai')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (27, 21, N'Huyện Sóc Sơn')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (28, 21, N'Huyện Thạch Thất')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (29, 21, N'Huyện Thanh Oai')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (30, 21, N'Huyện Thanh Trì')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (31, 21, N'Huyện Thường Tín')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (32, 21, N'Huyện Ứng Hoà')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (33, 1, N'Thành Phố Châu Đốc')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (34, 1, N'Thành Phố Long Xuyên')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (35, 1, N'Thị Xã Tân Châu')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (36, 1, N'Huyện An Phú')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (37, 1, N'Huyện Châu Phú')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (38, 1, N'Huyện Châu Thành')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (39, 1, N'Huyện Chợ Mới')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (40, 1, N'Huyện Phú Tân')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (41, 1, N'Huyện Thoại Sơn')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (42, 1, N'Huyện Tịnh Biên')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (43, 1, N'Huyện Tri Thôn')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (44, 2, N'Thành Phố Bạc Liêu')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (45, 2, N'Huyện Hồng Dân')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (46, 2, N'Huyện Phước Long')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (47, 2, N'Huyện Vĩnh Lợi')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (48, 2, N'Thị Xã Giá Rai')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (49, 2, N'Huyện Đông Hải')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (50, 2, N'Huuyện Hòa Bình')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (51, 3, N'Thành Phố Bắc Kạn')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (52, 3, N'Huyện Ba Bể')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (53, 3, N'Huyện Bạch Thông')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (54, 3, N'Huyện Chợ Đồn')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (55, 3, N'Huyện Chợ Mới')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (56, 3, N'Huyện Na Rì')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (57, 3, N'Huyện Ngân Sơn')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (58, 3, N'Huyện Pác Nặm')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (59, 4, N'Thành Phố Bắc Giang')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (60, 4, N'Huyện Hiệp Hòa')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (61, 4, N'Huyện Lạng Giang')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (62, 4, N'Huyện Lục Nam')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (63, 4, N'Huyện Lục Ngạn')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (64, 4, N'Huyện Sơn Động')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (65, 4, N'Huyện Tân Yên')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (66, 4, N'Huyện Việt Yên')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (67, 4, N'Huyện Yên Dũng')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (68, 4, N'Huyện Yên Thế')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (69, 5, N'Thành Phố Bắc Ninh')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (70, 5, N'Thị Xã Từ Sơn')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (71, 5, N'Huyện Gia Bình')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (72, 5, N'Huyện Lương Tài')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (73, 5, N'Huyện Quế Võ')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (74, 5, N'Huyện Thuận Thành')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (75, 5, N'Huyện Tiên Du')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (76, 5, N'Huyện Yên Phong')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (77, 6, N'Thành Phố Bến Tre')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (78, 6, N'Huyện Ba Tri')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (79, 6, N'Huyện Bình Đại')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (80, 6, N'Huyện Châu Thành')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (81, 6, N'Huyện Chợ Lách')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (82, 6, N'Huyện Giồng Trôm')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (83, 6, N'Huyện Mỏ Cày Bắc')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (84, 6, N'Huyện Mỏ Cày Nam')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (85, 6, N'Huyện Thạnh Phú')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (86, 7, N'Thành Phố Dĩ An')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (87, 7, N'Thành Phố Thủ Dầu Một')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (88, 7, N'Thành Phố Thuận An')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (89, 7, N'Thị Xã Bến Cát')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (90, 7, N'Thị Xã Tân Uyên')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (91, 7, N'Huyện Bắc Tân Uyên')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (92, 7, N'Huyện Bàu Bàng')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (93, 7, N'Huyện Dầu Tiếng')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (94, 7, N'Huyện Phú Giáo')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (95, 8, N'Thành Phố Quy Nhơn')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (96, 8, N'Thị Xã An Nhơn')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (97, 8, N'Thị Xã Hoài Nhơn')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (98, 8, N'Huyện An Lão')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (99, 8, N'Huyện Hoài Ân')
GO
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (100, 8, N'Huyện Phù Cát')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (101, 8, N'Huyện Phù Mỹ')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (102, 8, N'Huyện Tây Sơn')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (103, 8, N'Huyện Tuy Phước')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (104, 8, N'Huyện Vân Canh')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (105, 8, N'Huyện Vĩnh Thạnh')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (106, 9, N'Thành Phố Đồng Xoài')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (107, 9, N'Thị Xã Bình Long')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (108, 9, N'Thị Xã Phước Long')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (109, 9, N'Huyện Bù Đăng')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (110, 9, N'Huyện Bù Bốp')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (111, 9, N'Huyện Bù Gia Mập')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (112, 9, N'Huyện Chơn Thành')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (113, 9, N'Huyện Đồng Phú')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (114, 9, N'Huyện Hớn Quản')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (115, 9, N'Huyện Lộc Ninh')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (116, 9, N'Huyện Phú Riềng')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (117, 10, N'Thành Phố Phan Thiết')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (118, 10, N'Thị Xã La Gi')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (119, 10, N'Huyện Bắc Bình')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (120, 10, N'Huyện Đức Linh')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (121, 10, N'Huyện Hàm Tân')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (122, 10, N'Huyện Hàm Thuận Bắc')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (123, 10, N'Huyện Hàm Thuận Nam')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (124, 10, N'Huyện Phú Quý')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (125, 10, N'Huyện Tánh Linh')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (126, 10, N'Huyện Tuy Phong')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (127, 11, N'Thành Phố Cà Mau')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (128, 11, N'Huyện Cái Nước')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (129, 11, N'Huyện Đầm Dơi')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (130, 11, N'Huyện Năm Căn')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (131, 11, N'Huyện Ngọc Hiển')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (132, 11, N'Huyện Phú Tân')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (133, 11, N'Huyện Thới Bình')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (134, 11, N'Huyện Trần Văn Thới')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (135, 11, N'Huyện U Minh')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (136, 12, N'')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (137, 49, N'Thành Phố Thái Bình')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (138, 49, N' Huyện Đông Hưng')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (139, 49, N' Huyện Hưng Hà')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (140, 49, N' Huyện Kiến Xương')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (141, 49, N' Huyện Thái Thụy')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (142, 49, N' Huyện Tiền Hải')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (143, 49, N' Huyện Vũ Thư')
INSERT [dbo].[District] ([DistrictID], [ProvinceID], [DistrictName]) VALUES (144, 49, N' Huyện Quỳnh Phụ')
SET IDENTITY_INSERT [dbo].[District] OFF
GO
SET IDENTITY_INSERT [dbo].[EventOfClub] ON 

INSERT [dbo].[EventOfClub] ([EventID], [ClubID], [EventName], [Time], [Description], [Url1]) VALUES (2, 1, N'𝐇𝐀𝐍𝐀𝐌𝐈𝐙𝐀𝐊𝐄 - 𝐉𝐒 𝐁𝐎𝐘𝐒 𝐃𝐀𝐘️', N'19h ngày 13/06/2022', N'Một năm có 365 ngày và ngày mai hẳn là một ngày đặc biệt giành cho các chàng trai JS. <br/><br>Đối với CLB, các anh luôn cống hiến hết mình để xây dựng nên một tập thể JS với nhiều thành tích xuất sắc. Trong lòng các chị em JS, đó không chỉ là những “anh hùng coding” mà còn là những chàng trai rất vui tính, ấm áp và sống tình cảm. Chính vì điều đó, Boys’ Day là cơ hội để các chị em JS có thể gửi lời cảm ơn và bày tỏ tấm lòng yêu quý đối với các anh. <br/><br>🌤️ Năm 2022, Boys’ Day for JS-ers được tổ chức với tên gọi 𝐇𝐚𝐧𝐚𝐦𝐢𝐳𝐚𝐤𝐞. Ẩn ý đàng sau chiếc tên xinh đẹp này là gì? 𝐇𝐚𝐧𝐚𝐦𝐢 là ngắm hoa, 𝐬𝐚𝐤𝐞 là rượu. Có thể hiểu nôm na 𝐇𝐚𝐧𝐚𝐦𝐢𝐳𝐚𝐤𝐞 nghĩa là uống rượu dưới tán hoa anh đào trong ngày hội thưởng hoa truyền thống của người Nhật Bản. <br/><br>🌸 Hoa anh đào là quốc hoa của xứ sở mặt trời mọc, là một biểu tượng, là một phần quan trọng không thể thiếu của người Nhật. Những người đàn ông của đại gia đình JS cũng vậy, họ đóng một vai trò quyết định tạo nên thành công cho JS ở thời điểm hiện tại. <br/><br>🥂 Nam nhân thời xưa coi chén rượu là một thứ thi vị của cuộc sống. Rượu là một thứ “tín vật” gắn bó người với người, là chất keo gắn kết những người bằng hữu. <br/><br> “Tay tiên chuốc chén rượu đào <br/><br> Huynh đệ hữu khí tửu vào lời ra.” <br/><br>✨ Ngày Boys Day là ngày dành cho những người con trai, người đàn ông, đặc biệt là nam nhân JS, họ vừa có cách làm việc năng nổ như những giọt rượu cháy bỏng, vừa có phong cách sống nhẹ nhàng như những cánh hoa. 𝐇𝐚𝐧𝐚𝐦𝐢𝐳𝐚𝐤𝐞 sẽ đem đến cho các anh những phút giây thư giãn, vui vẻ, đầy ắp tiếng cười song cũng là một kỉ niệm khó phai trong suốt quá trình gắn bó với JS.<br>                                                
                                                ', N'img/event/hanamizake.jpg')
INSERT [dbo].[EventOfClub] ([EventID], [ClubID], [EventName], [Time], [Description], [Url1]) VALUES (4, 1, N'𝐂𝐋𝐔𝐁 𝐃𝐀𝐘 𝟐𝟎𝟐𝟐', N'𝟗𝐡 - 𝟏𝟔𝐡 thứ 6 ngày 𝟎𝟑/𝟔/𝟐𝟎𝟐𝟐', N'🎣 Xin chào! Chào mừng bạn đã đến với 𝐑𝐲𝐨𝐮𝐬𝐡𝐢, nơi chúng tôi đón những "người đánh cá" tiềm năng của thế giới thực. <br>🛶 Do bị cuốn vào dòng xoáy nước kỳ lạ xuất hiện lúc đang ra khơi, người đánh cá đã lạc sang một không gian khác, nơi có công nghệ tân tiến bậc nhất - thứ không thuộc phạm trù và điểm mạnh của anh. <br>🌊 Quy luật thoát ra khỏi thế giới này chính là phải giải mã và chinh phục hết các nhiệm vụ để nâng cao sức mạnh đến khi hoàn thành tất cả cấp độ, nhận được chìa khóa. Với bản chất ham học hỏi, khám phá cùng sự nhanh nhẹn của một người đi biển lâu năm, thật may mắn, anh đã dần tìm ra hướng đi cho bản thân mình.<br>🐟 Nhập vai người đánh cá kia chắc chắn sẽ là một trải nghiệm vô cùng thú vị! Hãy đến ngay gian hàng của JS vào ngày 𝟎𝟑/𝟔/𝟐𝟎𝟐𝟐, chọn cho mình nhiệm vụ đầu tiên để chinh phục hết các cấp độ game và tìm được chiếc chìa khóa vàng thôi nào<br>                                                <br>                                                
                                                ', N'eventImages/𝐂𝐋𝐔𝐁 𝐃𝐀𝐘 𝟐𝟎𝟐𝟐.jpg')
INSERT [dbo].[EventOfClub] ([EventID], [ClubID], [EventName], [Time], [Description], [Url1]) VALUES (7, 9, N'𝑳𝒖𝒚𝒆̂́𝒏', N'19:00 ngày 15/08/2022', N'“𝑳𝒖𝒚𝒆̂́𝒏” - Dư âm văng vẳng về những giai điệu của một thời đã xa<br><br>𝑩𝒊̀𝒏𝒉 𝒎𝒊𝒏𝒉 đánh thức ta bỏ quên,<br>Giật mình tỉnh lại 𝒉𝒐𝒂̀𝒏𝒈 𝒉𝒐̂𝒏 đến,<br>Bâng khuâng trong lòng một chữ “𝑳𝒖𝒚𝒆̂́𝒏”,<br>Bắt đầu hay kết thúc một 𝒃𝒊̀𝒏𝒉 𝒚𝒆̂𝒏 ?<br><br>🌞 Bình minh là sự bắt đầu cho một ngày mới, còn hoàng hôn như cánh cửa khép lại, và khi hoàng hôn buông xuống cũng là lúc ta phải nói lời chào tạm biệt mãi mãi với ngày hôm nay - hay với những kí ức sẽ không bao giờ có thể lặp lại một lần nào nữa. Tuy nhiên vẫn mặt trời ấy, vẫn những con người ấy, vẫn có sự tương đồng trong sự vật hiện diện nhưng lại cho ta những cảm giác vô cùng khác biệt, mới lạ, thậm chí là buồn vu vơ.<br><br>🌅 Khi nhìn ngắm bình minh, ta chợt hoài niệm về một hoàng hôn đã cũ, hoặc đôi khi ta nghĩ đến hoàng hôn vì nhớ lại một bình minh đã từng rực rỡ, huy hoàng. Hoàng hôn dần tàn, ánh nắng cũng theo đó mà yếu ớt dần đi. Mặt trời đi ngủ, mặt trời bỏ lại thế giới để bóng đêm vây kín, bỏ lại ta với nỗi nhớ đến xót xa - đó là “𝑳𝒖𝒚𝒆̂́𝒏”.<br><br>💕 “𝑳𝒖𝒚𝒆̂́𝒏” là luyến lưu cảnh vật hữu tình, người ta còn luyến lưu nhau bởi sự tiếc nuối trong quá khứ: Luyến tiếc vì chưa kịp nói lời yêu, luyến tiếc một thanh xuân rực rỡ, hay đơn giản chỉ vì nhớ nhung cảnh đẹp cuối hạ đã qua, hoặc một hoàng hôn đượm buồn, man mác. Những niềm vui, ký ức đó khiến chúng ta luyến lưu mãi, nhưng rồi nó vẫn phải trôi đi để nhường chỗ cho một ngày mai tốt đẹp hơn.<br><br>🎵 Và Show Âm nhạc - “𝑳𝒖𝒚𝒆̂́𝒏” cũng chính là hoàng hôn nơi ta ngồi lại, là cơ hội để chúng ta cùng nhau hoài niệm về những điều ta chưa thể buông, là nơi ta có thể ôn lại những ký ức của những ngày tháng tươi đẹp, là nơi cùng nhau chia sẻ những giai điệu hay âm hưởng tuyệt vời. Để rồi khi màn đêm buông xuống ta tự hỏi “Phải chăng, hoàng hôn là kết thúc hay bắt đầu?”<br><br>🍁 Đây là một show âm nhạc hoàn toàn mới lạ, được tổ chức bởi các thành viên và CTV của FTIC, hứa hẹn sẽ đem lại cho mọi người thật nhiều bất ngờ và những trải nghiệm vô cùng thú vị. Hãy chờ đón những điều bất ngờ cho sự kiện lần này nha và đừng quên theo dõi Fanpage CLB Nhạc Cụ Truyền Thống - FTIC để biết thêm thông tin chi tiết nhé!<br>                                                   <br>                                                
                                                ', N'eventImages/𝑳𝒖𝒚𝒆̂́𝒏.jpg')
INSERT [dbo].[EventOfClub] ([EventID], [ClubID], [EventName], [Time], [Description], [Url1]) VALUES (8, 9, N'𝗛𝗔̣ 𝗧𝗜́𝗖𝗛', N'Ngày 02 - 03/07/2022', N'“𝐶𝑎̂̀𝑢 𝑜̂𝑛𝑔 𝑚𝑢̛𝑎 𝑡ℎ𝑢𝑎̣̂𝑛 𝑔𝑖𝑜́ ℎ𝑜̀𝑎<br>𝐶ℎ𝑜 𝑐𝑎̂𝑦 𝑙𝑢́𝑎 𝑡𝑟𝑜̂̉, 𝑐ℎ𝑜 𝑐𝑎̀ đ𝑜̛𝑚 𝑏𝑜̂𝑛𝑔.”<br><br>😳 Chuyện kể rằng, từ xưa đến nay, ngôi làng 𝗛𝗮̣ 𝗧𝗶́𝗰𝗵 tọa lạc tại vùng đất 𝗛𝗼𝗹𝗮 đã tồn tại nền văn minh lúa nước từ lâu đời, nhiều năm mưa thuận gió hòa, hoa trái được mùa nên cuộc sống của người dân trong làng rất ấm no hạnh phúc.<br><br>☀️ Bỗng một thời gian không hiểu vì sao mà trời nắng gắt kéo dài, nhiều tháng không có lấy một hạt mưa nào, cây cối héo rũ, ruộng đồng cằn cỗi. Ngôi làng rơi vào tình trạng đói kém, mất mùa triền miên, cuộc sống của người dân dần trở nên khó khăn hơn bao giờ hết.<br><br>🌠 Bỗng một đêm nọ, trưởng làng nằm mơ thấy khung cảnh trời quang mây tạnh, chòm sao 𝗧𝗵𝘂𝗮̣̂𝗻 𝗧𝗵𝘂̉𝘆 chiếu sáng trên bầu trời khuya và rọi theo ánh sáng xuống 1 nơi trong rừng. Lúc tỉnh dậy, cho rằng đây là điềm báo nên trưởng làng đã chạy ra theo phía ánh sao rọi xuống và thấy được một chiếc gảy của cây đàn. Và thế là mọi người quyết định dùng chiếc gảy đó để hòa ca đàn hát, cùng nhau cầu cho mưa thuận gió hòa, mong sao có thể trở về cuộc sống yên bình khi xưa. 😉<br><br>🌟 Không phụ tấm lòng của dân làng ca hát cầu trời suốt 6 ngày 6 đêm, 𝗧𝗵𝗮́𝗻𝗵 𝘁𝗵𝗮̂̀𝗻 hiện lên và mỉm cười, Người ban mưa xuống cứu lấy ngôi làng và cả vùng đất khỏi cảnh hạn hán triền miên. Như một phép màu, sau nhiều ngày thì vụ mùa bội thu trở lại, cây cối đơm hoa kết trái. Để cảm tạ lòng biết ơn đối với Thánh thần, dân làng đã cùng nhau mở tiệc ăn mừng, khuấy đảo rừng rậm và sáng rực lên ngọn lửa của lòng nhiệt huyết và đoàn kết. 💪💪💪<br><br>😇 Hỡi toàn thể dân làng, hãy cùng ta - trưởng làng 𝗛𝗮̣ 𝗧𝗶́𝗰𝗵 tham gia trải nghiệm lễ hội của làng mình nhé! Ta rất hy vọng rằng có thể gặp mặt được đầy đủ tất cả mọi người sau thời gian xa cách. Sự có mặt của mọi người chính là động lực để ta cùng những người trong Hội đồng trưởng làng cố gắng xây dựng 𝗛𝗮̣ 𝗧𝗶́𝗰𝗵 ngày một phát triển hơn! 😍                                                    <br>                                                
                                                ', N'eventImages/𝗛𝗔̣ 𝗧𝗜́𝗖𝗛.jpg')
INSERT [dbo].[EventOfClub] ([EventID], [ClubID], [EventName], [Time], [Description], [Url1]) VALUES (9, 1, N'𝐂𝐎𝐃𝐄𝐅𝐄𝐒𝐓 𝟐𝟎𝟐𝟐', N'29/7/2022-22/8/2022', N' 🎮 Thông qua cuộc thi 𝐂𝐨𝐝𝐢𝐧𝐠 𝐏𝐫𝐨𝐣𝐞𝐜𝐭 𝟐𝟎𝟐𝟏, nhà điều hành game JS Club đã thiết kế lại toàn bộ server game trên bản đồ hệ thống. Trong nhóm game thực tế ảo, có một trò chơi sinh tồn vô cùng căng thẳng đã được tạo ra. <br><br>🧟 𝐂𝐨𝐝𝐞𝐟𝐞𝐬𝐭 𝟐𝟎𝟐𝟐 là một trò chơi thực tế ảo nơi chứa đầy những xác sống có khả năng ăn thịt người và lây nhiễm. Để trở thành người chiến thắng trong mỗi trận đấu, các bạn sẽ phải code con bot có thể đặt bom tiêu diệt đối thủ của mình, tiêu diệt zombie, giải cứu những người bệnh và phải sống sót đến cuối cùng. <br><br>💼  Để thử nghiệm sự thành công của game, nhà điều hành JS quyết định chọn học sinh của một trường cấp 3 ở Nhật - những người thông minh, lanh lẹ và đặc biệt có đam mê, hứng thú với thể loại trò chơi này nhất - làm đối tượng thử nghiệm. Liệu các Bravie quả cảm có thể hoàn thành được nhiệm vụ của mình? Ai sẽ là người viết được tên mình trên vùng đất đầy những nguy hiểm ấy? <br><br>💥 Một sân chơi trí tuệ với hình thức thi đấu mới lạ, mang đến cực kì nhiều trải nghiệm thú vị cho người tham gia đang chờ đợi bạn ở phía trước. Hãy nhớ theo dõi các thông tin chi tiết về 𝐂𝐨𝐝𝐞𝐟𝐞𝐬𝐭 𝟐𝟎𝟐𝟐 trên fanpage của JS Club nhé!                                               
                                                ', N'eventImages/𝐂𝐎𝐃𝐄𝐅𝐄𝐒𝐓 𝟐𝟎𝟐𝟐.jpg')
INSERT [dbo].[EventOfClub] ([EventID], [ClubID], [EventName], [Time], [Description], [Url1]) VALUES (11, 8, N'𝐑𝐈𝐒𝐄 𝐎𝐅 𝐏𝐀𝐑𝐓𝐘', N'19h ngày 22/7/2022', N'🆘 ÉT O ÉT‼ ÉT O ÉT!🆘<br>⚡Mọi người chú ý! Binh đoàn FMUC đã quay trở lại và chuẩn bị đổ bộ vào căn cứ cùng với đó là tham vọng đi tìm “viên đá thần kỳ”- mang sức mạnh thay đổi vận mệnh tăng, nội tại người sở hữu tại bữa tiệc 𝐑𝐈𝐒𝐄 𝐎𝐅 𝐏𝐀𝐑𝐓𝐘.<br>💢 Nung nấu âm mưu tìm được “viên đá thần kỳ”, Gru đã lãnh đạo đội quân “vàng chuối FMUC” tập hợp các chiến binh mạnh mẽ nhất và giao nhiệm vụ cho các đội trưởng để đi tìm ấn vật, chuẩn bị đổ bộ tại Trường Đại Học FPT. Hứa hẹn, đây sẽ là một bữa tiệc vô cùng nảy lửa, bùng nổ cảm xúc và để lại nhiều ấn tượng khó quên.<br>💥 Hỡi các chiến binh FMUC hãy bắt đầu lên "dây cót” tinh thần chiến đấu, bảo vệ “đá thần" để sẵn sàng cho trận chiến sống còn tại bữa tiệc này ngay thôi nào!.<br>🔥 FIREEEEEEEE 🔥                                                   <br>                                                ', N'eventImages/𝐑𝐈𝐒𝐄 𝐎𝐅 𝐏𝐀𝐑𝐓𝐘.jpg')
INSERT [dbo].[EventOfClub] ([EventID], [ClubID], [EventName], [Time], [Description], [Url1]) VALUES (12, 3, N'MÊ ISLAND - ĐẢO HẢI TẶC', N'12H trưa 6/8/2022', N'🔍 Tương truyền rằng vào 1000 năm trước, tại vùng Holaland xinh đẹp nổi danh một vị Thuyền trưởng huyền thoại cầm đầu đoàn cướp biển vô cùng lớn mạnh và có niềm đam mê mãnh liệt với âm nhạc. Trong một lần thực hiện khát khao chinh phục những vùng đất mới, Thuyền trưởng vô tình phát hiện ra một hòn đảo bí mật giàu tài nguyên nhưng chưa hề được khai phá, và Ngài đặt tên cho hòn đảo đó là MÊ ISLAND.<br>📜 Trong suốt cuộc đời vĩ đại của mình, Thuyền trưởng luôn mang theo một cuốn hải trình chứa đựng những kho báu đã được cất giấu và đó chính là chìa khóa duy nhất dẫn đến MÊ ISLAND. Cuối đời, Thuyền trưởng đã chia nhỏ cuốn hải trình của mình ra nhiều mảnh khác nhau, Ngài tin rằng chỉ những hải tặc xuất sắc nhất mới có thể giải mã được bản đồ dẫn đến kho báu vô giá trên hòn đảo Mê. <br>⏰ Qua hàng nghìn năm, những mảnh ghép của cuốn hải trình bị thất lạc đã dần được tìm thấy. Tuy nhiên, các mảnh ghép được sở hữu bởi nhiều băng đảng hải tặc khác nhau, và họ cần vượt qua những thử thách để giải mã những mảnh hải trình cho riêng mình. <br>⚔️ Liệu những khó khăn nào đang chờ các băng hải tặc nhỉ? Cuốn hải trình huyền thoại có thực sự dễ dàng dẫn đến hòn đảo bí ẩn MÊ ISLAND để chinh phục những kho báu vô giá hay không? <br>⛵ Cùng lên tàu và sẵn sàng khám phá “Kho Báu Chưa Ai Lần” cùng MÊ ISLAND nhéee ⚔️                                                    <br>                                                ', N'eventImages/MÊ ISLAND - ĐẢO HẢI TẶC.jpg')
INSERT [dbo].[EventOfClub] ([EventID], [ClubID], [EventName], [Time], [Description], [Url1]) VALUES (13, 4, N'𝐌𝐀𝐆𝐈𝐂 𝐈𝐍 𝐓𝐇𝐄 𝐄𝐘𝐄', N'18h00 ngày 19/08/2022', N'🎩 Bốn nhà ảo thuật gia với hoàn cảnh cũng như lý tưởng sống khác nhau đã “bén duyên” gặp gỡ và được tập hợp lại bởi những lá bài ẩn chứa các dấu hiệu đặc biệt được gửi từ một người bí ẩn, khiến họ không khỏi tò mò mà lần theo giải đáp. Thông tin về cuộc họp mặt đầu tiên tiết lộ những bí ẩn xoay quanh một hội các ảo thuật gia bí mật mang tên The Eyes.<br><br>‘‘𝐓𝐡𝐞 𝐜𝐥𝐨𝐬𝐞𝐫 𝐲𝐨𝐮 𝐥𝐨𝐨𝐤, 𝐭𝐡𝐞 𝐥𝐞𝐬𝐬 𝐲𝐨𝐮 𝐬𝐞𝐞.’’<br><br>Phi vụ thế kỷ tại Las Vegas của The Eyes đã khiến FBI như lạc vào một mê cung mà mọi lối đi đều dẫn về một bí mật bất ngờ sau mỗi tiết mục. Phải chăng còn có một kẻ chỉ điểm giấu mặt đứng đằng sau toàn bộ những màn “tội ác ma thuật’’⁉️<br><br>💬 Câu trả lời sẽ có trong đêm hội ngộ 𝐌𝐚𝐠𝐢𝐜 𝐢𝐧 𝐓𝐡𝐞 𝐄𝐲𝐞. Ngày mà các nhà ảo thuật đến từ khắp nơi trên thế giới về tụ họp, cùng khoác trên mình những bộ trang phục cổ điển và trình diễn dưới ánh đèn mờ ảo.<br><br>🃏 “Kỵ sĩ thứ năm là ai?’’ Bí ẩn về người đứng đầu, lên kế hoạch thành lập The Eyes và “đạo diễn” màn trình diễn ma thuật sẽ được tiết lộ.<br><br>Hãy cùng chờ đón sự quay trở lại bùng nổ của 𝐏𝐫𝐨𝐦 𝟐𝟎𝟐𝟐 - 𝐒𝐞𝐚𝐬𝐨𝐧 𝟏𝟐 nhé!!!                                                    <br>                                                ', N'eventImages/𝐌𝐀𝐆𝐈𝐂 𝐈𝐍 𝐓𝐇𝐄 𝐄𝐘𝐄.jpg')
SET IDENTITY_INSERT [dbo].[EventOfClub] OFF
GO
INSERT [dbo].[FoodImage] ([FoodID], [ImageUrl]) VALUES (10, N'foodImages/3_10.jpg')
INSERT [dbo].[FoodImage] ([FoodID], [ImageUrl]) VALUES (11, N'foodImages/13_11.jpg')
INSERT [dbo].[FoodImage] ([FoodID], [ImageUrl]) VALUES (18, N'foodImages/3_18.jpg')
INSERT [dbo].[FoodImage] ([FoodID], [ImageUrl]) VALUES (19, N'foodImages/13_19.jpg')
INSERT [dbo].[FoodImage] ([FoodID], [ImageUrl]) VALUES (20, N'foodImages/13_20.jpg')
GO
SET IDENTITY_INSERT [dbo].[Foods] ON 

INSERT [dbo].[Foods] ([FoodID], [RestaurantID], [FoodName], [Cost], [Descriptions]) VALUES (10, 3, N'Lẩu Gà', 250000.0000, N'Lẩu gà , miễn phí rau
                                        ')
INSERT [dbo].[Foods] ([FoodID], [RestaurantID], [FoodName], [Cost], [Descriptions]) VALUES (11, 13, N'Ngô Chiên', 25000.0000, N'                                            
                                        ')
INSERT [dbo].[Foods] ([FoodID], [RestaurantID], [FoodName], [Cost], [Descriptions]) VALUES (15, 7, NULL, NULL, NULL)
INSERT [dbo].[Foods] ([FoodID], [RestaurantID], [FoodName], [Cost], [Descriptions]) VALUES (16, 8, NULL, NULL, NULL)
INSERT [dbo].[Foods] ([FoodID], [RestaurantID], [FoodName], [Cost], [Descriptions]) VALUES (17, 10, NULL, NULL, NULL)
INSERT [dbo].[Foods] ([FoodID], [RestaurantID], [FoodName], [Cost], [Descriptions]) VALUES (18, 3, N'Lẩu Thập Cẩm', 400000.0000, N'Gà, Cá, Hải Sản
                                        
                                        ')
INSERT [dbo].[Foods] ([FoodID], [RestaurantID], [FoodName], [Cost], [Descriptions]) VALUES (19, 13, N'Buffet 99k', 99000.0000, N'Ăn thả ga 99k/1 người')
INSERT [dbo].[Foods] ([FoodID], [RestaurantID], [FoodName], [Cost], [Descriptions]) VALUES (20, 13, N'Bún Chả', 35000.0000, N'Chỉ bán sáng')
SET IDENTITY_INSERT [dbo].[Foods] OFF
GO
INSERT [dbo].[HostelImage] ([HostelID], [Url1], [Url2], [Url3], [Url4], [Url5], [Url6]) VALUES (1, N'HostelImages/Tuấn Cường 2url1.jpg', N'HostelImages/Tuấn Cường 2url2.jpg', N'HostelImages/Tuấn Cường 2url3.jpg', N'HostelImages/Tuấn Cường 2url4.jpg', N'HostelImages/Tuấn Cường 2url5.jpg', N'HostelImages/Tuấn Cường 2url6.jpg')
INSERT [dbo].[HostelImage] ([HostelID], [Url1], [Url2], [Url3], [Url4], [Url5], [Url6]) VALUES (2, N'HostelImages/Tuấn Ngaurl1.jpg', N'HostelImages/Tuấn Ngaurl2.jpg', N'HostelImages/Tuấn Ngaurl3.jpg', N'HostelImages/Tuấn Ngaurl4.jpg', N'HostelImages/Tuấn Ngaurl5.jpg', N'HostelImages/Tuấn Ngaurl6.jpg')
INSERT [dbo].[HostelImage] ([HostelID], [Url1], [Url2], [Url3], [Url4], [Url5], [Url6]) VALUES (3, N'HostelImages/Thành Nam 1url1.jpg', N'HostelImages/Thành Nam 1url2.jpg', N'HostelImages/Thành Nam 1url3.jpg', N'HostelImages/Thành Nam 1url4.jpg', NULL, NULL)
INSERT [dbo].[HostelImage] ([HostelID], [Url1], [Url2], [Url3], [Url4], [Url5], [Url6]) VALUES (4, N'HostelImages/Thành Nam 2url1.jpg', N'HostelImages/Thành Nam 2url2.jpg', N'HostelImages/Thành Nam 2url3.jpg', N'HostelImages/Thành Nam 2url4.jpg', NULL, NULL)
INSERT [dbo].[HostelImage] ([HostelID], [Url1], [Url2], [Url3], [Url4], [Url5], [Url6]) VALUES (5, N'HostelImages/Thái Dũngurl1.jpg', N'HostelImages/Thái Dũngurl2.jpg', N'HostelImages/Thái Dũngurl3.jpg', N'HostelImages/Thái Dũngurl4.jpg', N'HostelImages/Thái Dũngurl5.jpg', N'HostelImages/Thái Dũngurl6.jpg')
INSERT [dbo].[HostelImage] ([HostelID], [Url1], [Url2], [Url3], [Url4], [Url5], [Url6]) VALUES (6, N'HostelImages/KTX Ông Bàurl1.jpg', N'HostelImages/KTX Ông Bàurl2.jpg', N'HostelImages/KTX Ông Bàurl3.jpg', N'HostelImages/KTX Ông Bàurl4.jpg', N'HostelImages/KTX Ông Bàurl5.jpg', N'HostelImages/KTX Ông Bàurl6.jpg')
INSERT [dbo].[HostelImage] ([HostelID], [Url1], [Url2], [Url3], [Url4], [Url5], [Url6]) VALUES (7, N'HostelImages/Xanh Lá - Hường Anhurl1.jpg', N'HostelImages/Xanh Lá - Hường Anhurl2.jpg', N'HostelImages/Xanh Lá - Hường Anhurl3.jpg', N'HostelImages/Xanh Lá - Hường Anhurl4.jpg', N'HostelImages/Xanh Lá - Hường Anhurl5.jpg', N'HostelImages/Xanh Lá - Hường Anhurl6.jpg')
INSERT [dbo].[HostelImage] ([HostelID], [Url1], [Url2], [Url3], [Url4], [Url5], [Url6]) VALUES (9, N'HostelImages/Chung Cư Phenikaaurl1.jpg', N'HostelImages/Chung Cư Phenikaaurl2.jpg', N'HostelImages/Chung Cư Phenikaaurl3.jpg', N'HostelImages/Chung Cư Phenikaaurl4.jpg', N'HostelImages/Chung Cư Phenikaaurl5.jpg', N'HostelImages/Chung Cư Phenikaaurl6.jpg')
INSERT [dbo].[HostelImage] ([HostelID], [Url1], [Url2], [Url3], [Url4], [Url5], [Url6]) VALUES (10, N'HostelImages/Thanh Bìnhurl1.jpg', N'HostelImages/Thanh Bìnhurl2.jpg', N'HostelImages/Thanh Bìnhurl3.jpg', N'HostelImages/Thanh Bìnhurl4.jpg', N'HostelImages/Thanh Bìnhurl5.jpg', N'HostelImages/Thanh Bìnhurl6.jpg')
GO
SET IDENTITY_INSERT [dbo].[Hostels] ON 

INSERT [dbo].[Hostels] ([HostelID], [HostelName], [SellerID], [TotalRoom], [Status], [Floors], [CountryID], [ProvinceID], [DistrictID], [AddressDetail], [RentCost], [Distance], [Descriptions], [StarVoting]) VALUES (1, N'Tuấn Cường 2', 2, 80, 0, 6, 1, 21, 28, N'Thạch Hòa-Thạch Thất', 2500000.0000, 0.1, N'                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            ', 3.5)
INSERT [dbo].[Hostels] ([HostelID], [HostelName], [SellerID], [TotalRoom], [Status], [Floors], [CountryID], [ProvinceID], [DistrictID], [AddressDetail], [RentCost], [Distance], [Descriptions], [StarVoting]) VALUES (2, N'Tuấn Nga', 2, 50, 1, 4, 1, 21, 28, N'Thôn 7 xã Thạch Hòa', 2500000.0000, 0.8, N'Khu trọ Tuấn Nga mặt đường 21a đối diện lỗi vào cổng phụ đại học FPT(cách 300-400m ) còn 2 phòng cho sinh viên thuê.
Phòng 20m2 đầy đủ nóng lạnh điều hòa, giường tủ, bàn bếp.
Giá 1tr6/phòng mạng 50k, nước 50k. Có nơi phơi quần áo. Nhà chủ bán tạp hóa rất tiện lợi.Giờ giấc linh động. Nhà để xe có mái che, full camera chống trộm.
Xung quanh có nhiều quán ăn tiện lợi, cách chợ hòa lạc 1 km.
SDT: 0973032651 hoặc 0971139962 - Bác Tuấn Nga chủ trọ                                                                                                                                              
                                            
                                            
                                            
                                            
                                            ', 4.5)
INSERT [dbo].[Hostels] ([HostelID], [HostelName], [SellerID], [TotalRoom], [Status], [Floors], [CountryID], [ProvinceID], [DistrictID], [AddressDetail], [RentCost], [Distance], [Descriptions], [StarVoting]) VALUES (3, N'Thành Nam 1', 4, 50, 1, 5, 1, 21, 28, N'Thôn 7 xã Thạch Hòa', 1800000.0000, 1.5, N'                                                Hệ thống nhà trọ Thành Nam 1,2 Chào mừng các bạn sinh viên!!!
Hãy đến với chúng tôi để bạn đc phục vụ và được sống trong căn nhà thỏa mái nhất, hợp lý nhất.
                                            ', 3)
INSERT [dbo].[Hostels] ([HostelID], [HostelName], [SellerID], [TotalRoom], [Status], [Floors], [CountryID], [ProvinceID], [DistrictID], [AddressDetail], [RentCost], [Distance], [Descriptions], [StarVoting]) VALUES (4, N'Thành Nam 2', 4, 50, 1, 5, 1, 21, 28, N'Thôn 8 Xã Thạch Hòa', 1800000.0000, 2, N'                                                Hệ thống nhà trọ Thành Nam 1,2 Chào mừng các bạn sinh viên!!!
Hãy đến với chúng tôi để bạn đc phục vụ và được sống trong căn nhà thỏa mái nhất, hợp lý nhất.
                                            ', 0)
INSERT [dbo].[Hostels] ([HostelID], [HostelName], [SellerID], [TotalRoom], [Status], [Floors], [CountryID], [ProvinceID], [DistrictID], [AddressDetail], [RentCost], [Distance], [Descriptions], [StarVoting]) VALUES (5, N'Thái Dũng', 7, 14, 1, 3, 1, 21, 28, N'ngay sau Bưu điện Hòa Lạc cách Ngã Tư đèn đỏ 100m', 1400000.0000, 1.5, N'                                                📣 Nhà trọ sinh viên Thái Dũng tiêu chuẩn 5 ⭐ cách trường Đ.h FPT 1.5km có lối đi tắt đến trường 5 phút thôi nha .
🏘️ Vị trí khu nhà ngay sau Bưu điện Hòa Lạc cách Ngã Tư đèn đỏ 100m. Với các tiện ích vô cùng to lớn: Chỉ cần đi bộ là ra được bến xe bus 🚌 150m, ra chợ 150m, gần ngân hàng, bưu điện, đồn công an,  Nằm sát trung tâm khu ẩm thực ăn uống thị trấn Hòa Lạc. An ninh cực tốt
                                            ', 0)
INSERT [dbo].[Hostels] ([HostelID], [HostelName], [SellerID], [TotalRoom], [Status], [Floors], [CountryID], [ProvinceID], [DistrictID], [AddressDetail], [RentCost], [Distance], [Descriptions], [StarVoting]) VALUES (6, N'KTX Ông Bà', 11, 50, 1, 5, 1, 21, 28, N'Cụm 4, thôn 8, mặt đường lộ Cu Ba, xã Thạch Hoà', 2000000.0000, 1.5, N'                                                                                                                                                                                                                                                                                                                                                                                                🙌 Bạn đang tìm một không gian sống tiện lợi, an ninh đảm bảo, “hàng xóm" trẻ trung, văn minh thân thiện để gửi gắm “tuổi thanh xuân" của mình?
✌️ Bạn cần một chỗ ở ngay gần trường học để thuận lợi cho việc đi học, có thể chạy ngay đến trường kể cả khi "trót" ngủ nướng 1 tẹo?
👉👉Cách trường #Đại_học_FPT 1,5 km, chỉ mất #3_phút đi 🛵, Ký túc xá “Nhà Ông Bà" ra đời với đầy đủ những tiện ích phù hợp với lựa chọn của các bạn sinh viên thế hệ mới:
🏣 Chung cư mini cảnh quan rộng đẹp, #tiện_nghi, #quy_củ.
🛏 Nội thất đầy đủ chỉ cần xách vali đến ở ngay. 
🛌 Phòng riêng rộng rãi thoáng mát, 20m2-25m2. 
🛀 Có khu vực bếp và wc khép kín
👮 Trang bị hệ thống an ninh hiện đại, bảo vệ 24/24   
💒 Có thang máy, máy bán hàng tự động 
📡 Wifi tốc độ cao, lướt web từ phòng ở ra hành lang, từ sân chơi đến sân thượng. 
️🤾⛹️🏋️ Có phòng tiếp khách riêng biệt, phòng sinh hoạt chung, khu vực để xe, khu vực giặt đồ, sân phơi… 
🏊🛵 Chợ Thạch Hòa, hệ thống cửa hàng tiện ích, siêu thị, ngân hàng, trạm xăng, bến xe bus, sân chơi thể thao… nằm trong bán kính 1km 
🕵️ Điện nước công khai, theo giá nhà nước
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            ', 3)
INSERT [dbo].[Hostels] ([HostelID], [HostelName], [SellerID], [TotalRoom], [Status], [Floors], [CountryID], [ProvinceID], [DistrictID], [AddressDetail], [RentCost], [Distance], [Descriptions], [StarVoting]) VALUES (7, N'Xanh Lá - Hường Anh', 12, 24, 1, 3, 1, 21, 28, N'Hòa Lạc', 1500000.0000, 1.5, N'                                                1. Diện tích phòng: >= 20m2
Đầy đủ: Điều hòa, Nóng lạnh, Wifi 100mb/ tầng
2. Khoảng cách đến trường: 1,5km
3. Hệ thống an ninh:
Camera 24/24; Khoá vân tay.
4. Giá phòng: 1,5-1,7tr/ tháng
 Giá điện: 2,5k, wifi miễn phí
5. Số lượng phòng: 24
6. Không ở cùng nhà chủ
7. Màu sơn thân thiện, cá tính 
                                            ', 4.5)
INSERT [dbo].[Hostels] ([HostelID], [HostelName], [SellerID], [TotalRoom], [Status], [Floors], [CountryID], [ProvinceID], [DistrictID], [AddressDetail], [RentCost], [Distance], [Descriptions], [StarVoting]) VALUES (9, N'Chung Cư Phenikaa', 2, 125, 1, 25, 1, 21, 28, N'thôn 1', 5000000.0000, 3, N'🏠 Chung cư phenika 
Địa chỉ thạch hoà - thạch thất -hn
+ cách trường fpt 3km , cách chợ cóc dân sinh thạch hoà vài bước chân , dưới sảnh chung cư có xiêu thị tiện ích 
❤Diện tích 45m2
+ 1phòng ngủ ,vs , bếp riêng , phòng khách riêng 
 nội thất day du chỉ việc xách vali về ở :
giường ,tủ , bếp, bình nc nóng,điều hoà, bàn ăn,tủ lạnh, + bàn ghế sopha tiếp khách +......
+ giờ giấc tự do , cho thuê cả căn , các bạn sv có thể ở 2 den 3 người , tầng yên tĩnh sạch sẽ , an ninh cho cac bạn chuyên tâm học hành ,hướng đông nam mát mẻ. mien phi dich vu.
Giá : Phù hợp hộ gia đình, chuyên gia và sinh viên 
Nhà làm để ở nhưng chưa ở nên cho thuê
Liên hệ chính chủ căn hộ 1212  
☎️ chị Vịnh 0986889665                                                                                              
                                            
                                            
                                            
                                            ', 0)
INSERT [dbo].[Hostels] ([HostelID], [HostelName], [SellerID], [TotalRoom], [Status], [Floors], [CountryID], [ProvinceID], [DistrictID], [AddressDetail], [RentCost], [Distance], [Descriptions], [StarVoting]) VALUES (10, N'Thanh Bình', 2, 24, 1, 4, 1, 21, 28, N'Thôn 7 xã Thạch Hòa', 2000000.0000, 1, N' Dien tích phòng 24m2
Giáp quốc lộ 21, cách trường FPT 1km  phòng sạch sẽ thoáng mát 
                                            
                                            ', 2)
SET IDENTITY_INSERT [dbo].[Hostels] OFF
GO
SET IDENTITY_INSERT [dbo].[Province] ON 

INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (1, 1, N'An Giang')
INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (2, 1, N'Bạc Liêu')
INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (3, 1, N'Bắc Cạn')
INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (4, 1, N'Bắc Giang')
INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (5, 1, N'Bắc Ninh')
INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (6, 1, N'Bến Tre')
INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (7, 1, N'Bình Dương')
INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (8, 1, N'Bình Định')
INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (9, 1, N'Bình Phước')
INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (10, 1, N'Bình Thuận')
INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (11, 1, N'Cà Mau')
INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (12, 1, N'Cao Bằng')
INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (13, 1, N'Cần Thơ')
INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (14, 1, N'Đà Nẵng')
INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (15, 1, N'DakLak')
INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (16, 1, N'Đồng Nai')
INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (17, 1, N'Đồng Tháp')
INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (18, 1, N'Gia Lai')
INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (19, 1, N'Hà Giang')
INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (20, 1, N'Hà Nam')
INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (21, 1, N'Hà Nội')
INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (22, 1, N'Hà Tĩnh')
INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (23, 1, N'Hải Dương')
INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (24, 1, N'Hải Phòng')
INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (25, 1, N'Hòa Bình')
INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (26, 1, N'Hồ Chí Minh')
INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (27, 1, N'Hưng Yên')
INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (28, 1, N'Khánh Hòa')
INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (29, 1, N'Kiên Giang')
INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (30, 1, N'Kon Tum')
INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (31, 1, N'Lai Châu')
INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (32, 1, N'Lạng Sơn')
INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (33, 1, N'Lào Cai')
INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (34, 1, N'Lâm Đồng')
INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (35, 1, N'Long An')
INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (36, 1, N'Nam Định')
INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (37, 1, N'Nghệ An')
INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (38, 1, N'Ninh Bình')
INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (39, 1, N'Bình Thuận')
INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (40, 1, N'Phú Thọ')
INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (41, 1, N'Phú Yên')
INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (42, 1, N'Quảng Bình')
INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (43, 1, N'Quảng Nam')
INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (44, 1, N'Quảng Ngãi')
INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (45, 1, N'Quảng Ninh')
INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (46, 1, N'Sóc Trăng')
INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (47, 1, N'Sơn La')
INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (48, 1, N'Tây Ninh')
INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (49, 1, N'Thái Bình')
INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (50, 1, N'Thái Nguyên')
INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (51, 1, N'Thanh Hóa')
INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (52, 1, N'Thừa Thiên Huế')
INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (53, 1, N'Tiền Giang')
INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (54, 1, N'Trà Vinh')
INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (55, 1, N'Tuyên Quang')
INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (56, 1, N'Vĩnh Long')
INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (57, 1, N'Vĩnh Phúc')
INSERT [dbo].[Province] ([ProvinceID], [CountryID], [ProvinceName]) VALUES (58, 1, N'Yên Bái')
SET IDENTITY_INSERT [dbo].[Province] OFF
GO
SET IDENTITY_INSERT [dbo].[ReportHostel] ON 

INSERT [dbo].[ReportHostel] ([ReportID], [HostelID], [Spam], [Offensive], [Violent], [Truthless], [ReportTime], [StudentID]) VALUES (1, 10, 1, 1, 0, 0, CAST(N'2022-08-25T09:05:20.457' AS DateTime), 21)
INSERT [dbo].[ReportHostel] ([ReportID], [HostelID], [Spam], [Offensive], [Violent], [Truthless], [ReportTime], [StudentID]) VALUES (2, 1, 0, 0, 0, 1, CAST(N'2022-08-30T15:25:53.297' AS DateTime), 1022)
INSERT [dbo].[ReportHostel] ([ReportID], [HostelID], [Spam], [Offensive], [Violent], [Truthless], [ReportTime], [StudentID]) VALUES (3, 1, 0, 0, 1, 1, CAST(N'2022-08-30T19:55:16.940' AS DateTime), 1022)
SET IDENTITY_INSERT [dbo].[ReportHostel] OFF
GO
SET IDENTITY_INSERT [dbo].[ReportRestaurant] ON 

INSERT [dbo].[ReportRestaurant] ([ReportID], [RestaurantID], [Spam], [Offensive], [Violent], [Truthless], [ReportTime], [StudentID]) VALUES (2, 13, 1, 1, 1, 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ReportRestaurant] OFF
GO
SET IDENTITY_INSERT [dbo].[Restaurants] ON 

INSERT [dbo].[Restaurants] ([RestaurantID], [RestaurantName], [SellerID], [CountryID], [ProvinceID], [DistrictID], [AddressDetail], [Cost], [Distance], [Descriptions], [RestaurantImage], [StarVoting]) VALUES (2, N'Xiên Bẩn Food And Drink', 2, 1, 21, 28, N'Đối diện cổng trường đại học FPT', N'2,000 - 20,0000', 0.25, N' ❤Ship quanh Hola và cổng trường ( ĐƠN TRÊN 40K Ạ) !!! 😘😘ĐỒNG GIÁ 2K/ XIÊN 💥💥 
( Tôm viên, Cá viên, Viên thả lẩu, Viên rau củ, Mực xoắn Hồ lô, Tôm shusimi, Đậu hũ phô mai ,.....)                                                                                                                                                                                                                                                                              
                                            
                                            
                                            
                                            
                                            ', N'restaurantImages/Xiên Bẩn Food And Drinkimg.jpg', 4.2857142857142856)
INSERT [dbo].[Restaurants] ([RestaurantID], [RestaurantName], [SellerID], [CountryID], [ProvinceID], [DistrictID], [AddressDetail], [Cost], [Distance], [Descriptions], [RestaurantImage], [StarVoting]) VALUES (3, N'Nhà hàng 666', 2, 1, 21, 28, N'Thôn 7 xã Thạch Hòa', N'50,000 - 800,000', 0.800000011920929, N'       Không gian rộng rãi thoáng mát,có phòng điều hoà! 
-Khuyến mãi khai trương từ mùng 6-8/5 giảm 10% tổng bill!
-Menu cải tiến đa dạng các món ăn từ trên trời dưới nước!                                         
                                            ', N'restaurantImages/Nhà hàng 666img.jpg', 4)
INSERT [dbo].[Restaurants] ([RestaurantID], [RestaurantName], [SellerID], [CountryID], [ProvinceID], [DistrictID], [AddressDetail], [Cost], [Distance], [Descriptions], [RestaurantImage], [StarVoting]) VALUES (7, N'Com Phuong Nguyen', 2, 1, 21, 28, N'Cổng trường FPT', N'35.000-50.000', 0.15000000596046448, N'                                                                                                Cơm ngon
                                            
                                            ', N'restaurantImages/Com Phuong Nguyenimg.jpg', 0)
INSERT [dbo].[Restaurants] ([RestaurantID], [RestaurantName], [SellerID], [CountryID], [ProvinceID], [DistrictID], [AddressDetail], [Cost], [Distance], [Descriptions], [RestaurantImage], [StarVoting]) VALUES (8, N'Cơm Quỳnh Linh', 2, 1, 21, 28, N'Cổng trường FPT', N'35.000-50.000', 0.15000000596046448, N'                                                Cơm , Bún , Phở
                                            ', N'restaurantImages/Cơm Quỳnh Linhimg.jpg', 0)
INSERT [dbo].[Restaurants] ([RestaurantID], [RestaurantName], [SellerID], [CountryID], [ProvinceID], [DistrictID], [AddressDetail], [Cost], [Distance], [Descriptions], [RestaurantImage], [StarVoting]) VALUES (10, N'Cơm Nam Lê', 2, 1, 21, 28, N'Cổng trường FPT', N'35000', 0.15000000596046448, N'  Có ship dom và trọ
1. CƠM BA CHỈ CHÁY TỎI 35k
2. CƠM THỊT QUAY NGŨ VỊ 35k
3. CƠM BÒ SỐT TIÊU 35k
4. CƠM ỨC GÀ CHIÊN XÙ 35k
5. CƠM GÀ LẮC PHOMAI 35k 
6. CƠM GÀ CHIÊN MẮM TỎI 35k
7. CƠM BẮP GIÒ XÀO LĂN 35k                                               
                                            ', N'restaurantImages/Cơm Nam Lêimg.jpg', 0)
INSERT [dbo].[Restaurants] ([RestaurantID], [RestaurantName], [SellerID], [CountryID], [ProvinceID], [DistrictID], [AddressDetail], [Cost], [Distance], [Descriptions], [RestaurantImage], [StarVoting]) VALUES (13, N'Phố Nướng', 2, 1, 21, 28, N'Thôn 7 xã Thạch Hòa', N'30,000 - 250,000', 1.3999999761581421, N'                                                                                                Lẩu , Nướng, Bún Chả
                                            
                                            ', N'restaurantImages/Phố Nướngimg.jpg', 5)
SET IDENTITY_INSERT [dbo].[Restaurants] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (1, N'admin')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (2, N'student')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (3, N'seller')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (4, N'club')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Sellers] ON 

INSERT [dbo].[Sellers] ([SellerID], [Avatar], [FirstName], [LastName], [Age], [Phone], [Email], [CountryID], [ProvinceID], [DistrictID], [AddressDetail], [Gender], [LinkFacebook]) VALUES (2, N'avatarImages/minkook2909Avatar.jpg', N'Pham', N'Thu Hong', 22, N'0968204670', N'minkook2909@gmail.com', 1, 49, 137, N'9-Đường 28-Tổ 22- Phường Trần Lãm', 0, N'https://www.facebook.com/hongpham2909/')
INSERT [dbo].[Sellers] ([SellerID], [Avatar], [FirstName], [LastName], [Age], [Phone], [Email], [CountryID], [ProvinceID], [DistrictID], [AddressDetail], [Gender], [LinkFacebook]) VALUES (4, N'avatarImages/hung123Avatar.jpg', N'Dong Son', N'Hung', 0, N'0942818686', N'hung123@gmail.com', 1, 21, 28, N'Thôn 7 xã Thạch Hòa', 1, N'https://www.facebook.com/groups/2015326255462298/user/100004496050314')
INSERT [dbo].[Sellers] ([SellerID], [Avatar], [FirstName], [LastName], [Age], [Phone], [Email], [CountryID], [ProvinceID], [DistrictID], [AddressDetail], [Gender], [LinkFacebook]) VALUES (5, NULL, N'Liên ', N'Nga', 35, N'', N'liennga@gmail.com', 1, 21, 28, N'', 0, NULL)
INSERT [dbo].[Sellers] ([SellerID], [Avatar], [FirstName], [LastName], [Age], [Phone], [Email], [CountryID], [ProvinceID], [DistrictID], [AddressDetail], [Gender], [LinkFacebook]) VALUES (7, N'avatarImages/thaidungAvatar.jpg', N'Nhung', N'Lan', 28, N'0961226388', N'thaidung@gmail.com', 1, 21, 28, N'Gần chợ Hòa Lạc', 1, N'https://www.facebook.com/groups/2015326255462298/user/100014567503221')
INSERT [dbo].[Sellers] ([SellerID], [Avatar], [FirstName], [LastName], [Age], [Phone], [Email], [CountryID], [ProvinceID], [DistrictID], [AddressDetail], [Gender], [LinkFacebook]) VALUES (11, N'avatarImages/ktxongbaAvatar.jpg', N'Hang', N'Vuong', 36, N'0989639985', N'ktxongba@gmail.com', 1, 21, 28, N'Cụm 4, thôn 8, mặt đường lộ Cu Ba, xã Thạch Hoà', 0, N'https://www.facebook.com/groups/2015326255462298/user/100006786491755/')
INSERT [dbo].[Sellers] ([SellerID], [Avatar], [FirstName], [LastName], [Age], [Phone], [Email], [CountryID], [ProvinceID], [DistrictID], [AddressDetail], [Gender], [LinkFacebook]) VALUES (12, NULL, N'Nguyễn ', N'Việt Anh', NULL, N'0988970790', N'vietanhnguyen@gmail.com', 1, 21, 28, N'Hòa Lạc', 1, NULL)
INSERT [dbo].[Sellers] ([SellerID], [Avatar], [FirstName], [LastName], [Age], [Phone], [Email], [CountryID], [ProvinceID], [DistrictID], [AddressDetail], [Gender], [LinkFacebook]) VALUES (14, NULL, N'Nguyễn ', N'Minh', 35, N'0784375634', N'minh123@gmail.com', NULL, NULL, NULL, NULL, 1, N'')
INSERT [dbo].[Sellers] ([SellerID], [Avatar], [FirstName], [LastName], [Age], [Phone], [Email], [CountryID], [ProvinceID], [DistrictID], [AddressDetail], [Gender], [LinkFacebook]) VALUES (15, NULL, N'Nguyễn', N'Trung Kiên', 26, N'0968119115', N'trungkien@gmail.com', 1, NULL, NULL, N'KDT Tái định cư Đồng Lôi', 1, N'https://www.facebook.com/profile.php?id=100007172077044')
INSERT [dbo].[Sellers] ([SellerID], [Avatar], [FirstName], [LastName], [Age], [Phone], [Email], [CountryID], [ProvinceID], [DistrictID], [AddressDetail], [Gender], [LinkFacebook]) VALUES (16, NULL, N'Nguyễn', N'Đình Vỵ', 26, N'0363846364', N'nguyendinhvy@gmail.com', 1, NULL, NULL, NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[Sellers] OFF
GO
SET IDENTITY_INSERT [dbo].[StarVotingHostel] ON 

INSERT [dbo].[StarVotingHostel] ([ID], [StudentNo], [HostelID], [StarVoting], [Comment], [Date]) VALUES (1, 21, 10, 4, N'nhà trọ rộng,thoáng.tiện nghi đầy đủ', CAST(N'2022-08-25T09:06:11.070' AS DateTime))
INSERT [dbo].[StarVotingHostel] ([ID], [StudentNo], [HostelID], [StarVoting], [Comment], [Date]) VALUES (2, 1, 6, 3, N' Nhà trọ sạch, hiện đại nhưng giá điện nước nhập nhằng quá !!', CAST(N'2022-08-28T17:36:11.973' AS DateTime))
INSERT [dbo].[StarVotingHostel] ([ID], [StudentNo], [HostelID], [StarVoting], [Comment], [Date]) VALUES (3, 1, 7, 5, N'Gần trường tiện đi lại', CAST(N'2022-08-28T17:36:55.460' AS DateTime))
INSERT [dbo].[StarVotingHostel] ([ID], [StudentNo], [HostelID], [StarVoting], [Comment], [Date]) VALUES (4, 20, 1, 4, N' Trọ rộng rãi nhưng hơi bí, bất tiện phơi quần áo', CAST(N'2022-08-28T17:39:12.433' AS DateTime))
INSERT [dbo].[StarVotingHostel] ([ID], [StudentNo], [HostelID], [StarVoting], [Comment], [Date]) VALUES (5, 20, 6, 3, N' Qua chơi 1 lần thấy không gian không đẹp như trong hình, chỗ nấu ăn và nhà tắm hơi nhỏ. Chắc tùy phòng -))', CAST(N'2022-08-28T17:41:51.683' AS DateTime))
INSERT [dbo].[StarVotingHostel] ([ID], [StudentNo], [HostelID], [StarVoting], [Comment], [Date]) VALUES (6, 20, 7, 4, N' sạch sẽ, thoáng, dưới tầng có căng tin nhỏ tiện nghi. Đóng cửa trọ sớm :((', CAST(N'2022-08-28T17:42:50.960' AS DateTime))
INSERT [dbo].[StarVotingHostel] ([ID], [StudentNo], [HostelID], [StarVoting], [Comment], [Date]) VALUES (7, 20, 2, 4, N' Gần, phòng hơi nhỏ, cũ nhưng chủ trọ dễ tính <3', CAST(N'2022-08-28T17:44:03.837' AS DateTime))
INSERT [dbo].[StarVotingHostel] ([ID], [StudentNo], [HostelID], [StarVoting], [Comment], [Date]) VALUES (8, 20, 3, 3, N' Nhà trọ thì thoải mái nhưng nhiều phòng quá, không cách âm tốt, tối các bạn chơi game nói to không ngủ được ', CAST(N'2022-08-28T17:44:51.107' AS DateTime))
INSERT [dbo].[StarVotingHostel] ([ID], [StudentNo], [HostelID], [StarVoting], [Comment], [Date]) VALUES (9, 20, 10, 1, N' nhà trọ đúng như cái tên "Nhà Nghỉ Thanh Bình ", không tiện nghi lại còn đắt', CAST(N'2022-08-28T17:46:25.993' AS DateTime))
INSERT [dbo].[StarVotingHostel] ([ID], [StudentNo], [HostelID], [StarVoting], [Comment], [Date]) VALUES (11, 1, 1, 4, N'phòng rộng, bảo vệ thoải mái nhưng đóng cửa 11h', CAST(N'2022-08-30T22:52:15.080' AS DateTime))
INSERT [dbo].[StarVotingHostel] ([ID], [StudentNo], [HostelID], [StarVoting], [Comment], [Date]) VALUES (12, 1, 2, 5, N' trọ hơi cũ được cái thoải mái', CAST(N'2022-08-30T22:52:58.917' AS DateTime))
INSERT [dbo].[StarVotingHostel] ([ID], [StudentNo], [HostelID], [StarVoting], [Comment], [Date]) VALUES (13, 21, 1, 2, N'Khuyên anh em cân nhắc kĩ, lúc ở thì ko sao nhưng lúc rời đi thì hay kiếm cớ để mình mất cọc. Chán ', CAST(N'2022-08-30T22:56:05.453' AS DateTime))
INSERT [dbo].[StarVotingHostel] ([ID], [StudentNo], [HostelID], [StarVoting], [Comment], [Date]) VALUES (14, 17, 1, 3, N'trọ cũng tạm nhưng đc cái dịch vụ xung quanh nhiều, không chung chủ nên thoải mái, nếu về muộn sau 11h thì phải báo trc với bảo vệ hơi bất tiện. Tuy nhien vẫn có trg hợp báo rồi nhưng mà bảo vệ ko mở cho đâu (nếu chủ trọ biết thì bảo vệ bị phạt)', CAST(N'2022-08-30T23:00:04.420' AS DateTime))
INSERT [dbo].[StarVotingHostel] ([ID], [StudentNo], [HostelID], [StarVoting], [Comment], [Date]) VALUES (15, 18, 1, 4, N'trọ sạch sẽ, khóa vân tay tiện lợi. Mỗi tội chỗ nấu ăn thiết kế hơi tù, khói + dầu mỡ lúc nấu ăn bám hết lên chạn bát ngay phía trên. Khuyên mn sắm một cái chạn để bắt riêng trong phòng', CAST(N'2022-08-31T00:56:17.780' AS DateTime))
INSERT [dbo].[StarVotingHostel] ([ID], [StudentNo], [HostelID], [StarVoting], [Comment], [Date]) VALUES (16, 4, 10, 1, N' tìm nhà trọ tử tế chứ mà ở phòng kiểu này thì bất tiện đủ đường', CAST(N'2022-08-31T01:00:12.430' AS DateTime))
INSERT [dbo].[StarVotingHostel] ([ID], [StudentNo], [HostelID], [StarVoting], [Comment], [Date]) VALUES (17, 3, 1, 4, N' Khá rộng và đầy đủ tiện nghi, giá hợp lý.', CAST(N'2022-08-31T01:02:06.610' AS DateTime))
SET IDENTITY_INSERT [dbo].[StarVotingHostel] OFF
GO
SET IDENTITY_INSERT [dbo].[StarVotingRestaurant] ON 

INSERT [dbo].[StarVotingRestaurant] ([ID], [StudentNo], [RestaurantID], [StarVoting], [Comment], [Date]) VALUES (2, 20, 2, 4, N' nhà hàng sạch sẽ, đồ ăn ngon nhưng giá hơi đắt', CAST(N'2022-08-24T22:59:08.203' AS DateTime))
INSERT [dbo].[StarVotingRestaurant] ([ID], [StudentNo], [RestaurantID], [StarVoting], [Comment], [Date]) VALUES (3, 1, 2, 5, N'nhiều loại xiên, đã ngon còn rẻ', CAST(N'2022-08-30T22:50:35.340' AS DateTime))
INSERT [dbo].[StarVotingRestaurant] ([ID], [StudentNo], [RestaurantID], [StarVoting], [Comment], [Date]) VALUES (4, 21, 2, 5, N' rất thích ăn ở đây, vừa ngon vừa rẻ', CAST(N'2022-08-30T22:57:02.727' AS DateTime))
INSERT [dbo].[StarVotingRestaurant] ([ID], [StudentNo], [RestaurantID], [StarVoting], [Comment], [Date]) VALUES (5, 17, 3, 4, N' lẩu đa dạng, ăn cx được, rượu uống hơi ngọt', CAST(N'2022-08-30T23:00:45.860' AS DateTime))
INSERT [dbo].[StarVotingRestaurant] ([ID], [StudentNo], [RestaurantID], [StarVoting], [Comment], [Date]) VALUES (6, 17, 2, 5, N' xiên này mới giống xiên trong hn nè, 10 đỉm', CAST(N'2022-08-30T23:01:39.380' AS DateTime))
INSERT [dbo].[StarVotingRestaurant] ([ID], [StudentNo], [RestaurantID], [StarVoting], [Comment], [Date]) VALUES (7, 18, 2, 5, N' quán đông khách, ngon nên đợi hơi lâu ae ạ', CAST(N'2022-08-31T00:57:02.963' AS DateTime))
INSERT [dbo].[StarVotingRestaurant] ([ID], [StudentNo], [RestaurantID], [StarVoting], [Comment], [Date]) VALUES (8, 4, 2, 1, N'chả hiểu kinh doanh kiểu gì mà ngày bán ngày không, tuần đi 2 lần mà k thấy mở quán =))', CAST(N'2022-08-31T00:59:08.123' AS DateTime))
INSERT [dbo].[StarVotingRestaurant] ([ID], [StudentNo], [RestaurantID], [StarVoting], [Comment], [Date]) VALUES (9, 4, 13, 5, N' Ăn ngon. giá hợp lý, quán hơi nóng', CAST(N'2022-08-31T01:01:01.713' AS DateTime))
INSERT [dbo].[StarVotingRestaurant] ([ID], [StudentNo], [RestaurantID], [StarVoting], [Comment], [Date]) VALUES (10, 3, 2, 5, N' không hay ăn vặt nhưng quán này ăn ổn nhất mấy quán xiên xung quanh hòa lạc', CAST(N'2022-08-31T01:11:36.273' AS DateTime))
SET IDENTITY_INSERT [dbo].[StarVotingRestaurant] OFF
GO
SET IDENTITY_INSERT [dbo].[Students] ON 

INSERT [dbo].[Students] ([StudentNo], [StudentID], [Avatar], [FirstName], [LastName], [Age], [Phone], [Unit], [Email], [CountryID], [ProvinceID], [AddressDetail], [DistrictID], [Gender], [LinkFacebook]) VALUES (1, N'HE141389', N'avatarImages/nguyenmyhoa120920Avatar.jpg', N'Phạm', N'Thị Thu Hồng', 22, N'0968204670', N'K14', N'hoantmhe141105@fpt.edu.vn', 1, 49, N'39-Nguyễn Văn Cừ', 137, 0, N'https://www.facebook.com/hongpham2909/')
INSERT [dbo].[Students] ([StudentNo], [StudentID], [Avatar], [FirstName], [LastName], [Age], [Phone], [Unit], [Email], [CountryID], [ProvinceID], [AddressDetail], [DistrictID], [Gender], [LinkFacebook]) VALUES (2, N'HE150123', NULL, N'Nguyễn ', N'Hồng Minh', 21, N'0141487644', N'K15', N'minhtam@gmail.com', 1, 21, NULL, NULL, 1, N'https://www.facebook.com/profile.php?id=100008325763883')
INSERT [dbo].[Students] ([StudentNo], [StudentID], [Avatar], [FirstName], [LastName], [Age], [Phone], [Unit], [Email], [CountryID], [ProvinceID], [AddressDetail], [DistrictID], [Gender], [LinkFacebook]) VALUES (3, N'HE172673', NULL, N'Nguyễn', N'Hồng Việt', 19, N'0634626793', N'K17', N'vietnguyen@gmail.com', 1, 21, NULL, NULL, 1, N'https://www.facebook.com/profile.php?id=100052442886152')
INSERT [dbo].[Students] ([StudentNo], [StudentID], [Avatar], [FirstName], [LastName], [Age], [Phone], [Unit], [Email], [CountryID], [ProvinceID], [AddressDetail], [DistrictID], [Gender], [LinkFacebook]) VALUES (4, N'HE140930', NULL, N'Khổng ', N'Thùy Vân', 22, N'0274477643', N'K14', N'vanthuykhong@gmail.com', 1, 21, NULL, NULL, 0, N'https://www.facebook.com/profile.php?id=100008307451323')
INSERT [dbo].[Students] ([StudentNo], [StudentID], [Avatar], [FirstName], [LastName], [Age], [Phone], [Unit], [Email], [CountryID], [ProvinceID], [AddressDetail], [DistrictID], [Gender], [LinkFacebook]) VALUES (16, N'HE142362', NULL, N'Nguyễn ', N'Ly', 22, N'0826486634', N'K14', N'lykhanh@gmail.com', 1, 21, NULL, NULL, 0, N'https://www.facebook.com/ly.nguyenkhanh.161446')
INSERT [dbo].[Students] ([StudentNo], [StudentID], [Avatar], [FirstName], [LastName], [Age], [Phone], [Unit], [Email], [CountryID], [ProvinceID], [AddressDetail], [DistrictID], [Gender], [LinkFacebook]) VALUES (17, N'HE142264', NULL, N'Phạm ', N'Phương Linh', 22, NULL, N'K14', N'linhche@gmail.com', 1, 21, NULL, NULL, 0, NULL)
INSERT [dbo].[Students] ([StudentNo], [StudentID], [Avatar], [FirstName], [LastName], [Age], [Phone], [Unit], [Email], [CountryID], [ProvinceID], [AddressDetail], [DistrictID], [Gender], [LinkFacebook]) VALUES (18, N'HE132878', NULL, N'Bế ', N'Quang Nghĩa', 23, NULL, N'K13', N'nghiaquang@gmail.com', 1, 21, NULL, NULL, 1, NULL)
INSERT [dbo].[Students] ([StudentNo], [StudentID], [Avatar], [FirstName], [LastName], [Age], [Phone], [Unit], [Email], [CountryID], [ProvinceID], [AddressDetail], [DistrictID], [Gender], [LinkFacebook]) VALUES (20, N'HE141389', N'avatarImages/hongptthe141389Avatar.jpg', N'Phạm', N'Thu Hồng', 22, N'0968204670', N'K14', N'hongptthe141389@fpt.edu.vn', 1, 49, N'KDT TDC Đồng Lôi', 137, 0, N'https://www.facebook.com/hongpham2909/')
INSERT [dbo].[Students] ([StudentNo], [StudentID], [Avatar], [FirstName], [LastName], [Age], [Phone], [Unit], [Email], [CountryID], [ProvinceID], [AddressDetail], [DistrictID], [Gender], [LinkFacebook]) VALUES (21, N'HE140249', N'avatarImages/dungsouma1Avatar.jpg', N'Đặng ', N'Quang Dũng', 20, N'0886619859', N'K14', N'dungsouma1@gmail.com', 1, 4, N'KDT TDC Đồng Lôi', 1, 0, N'https://www.facebook.com/hongpham2909/')
SET IDENTITY_INSERT [dbo].[Students] OFF
GO
SET IDENTITY_INSERT [dbo].[TypeOfClub] ON 

INSERT [dbo].[TypeOfClub] ([TypeID], [TypeName]) VALUES (1, N'Học Thuật')
INSERT [dbo].[TypeOfClub] ([TypeID], [TypeName]) VALUES (2, N'Kỹ Năng Sống')
INSERT [dbo].[TypeOfClub] ([TypeID], [TypeName]) VALUES (3, N'Thể Thao')
INSERT [dbo].[TypeOfClub] ([TypeID], [TypeName]) VALUES (4, N'Nghệ Thuật')
SET IDENTITY_INSERT [dbo].[TypeOfClub] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [uniemail]    Script Date: 8/31/2022 1:14:41 AM ******/
ALTER TABLE [dbo].[Admins] ADD  CONSTRAINT [uniemail] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF,  IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [unique_email]    Script Date: 8/31/2022 1:14:41 AM ******/
ALTER TABLE [dbo].[Clubs] ADD  CONSTRAINT [unique_email] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF,  IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Departme__A9D10534296FAB5C]    Script Date: 8/31/2022 1:14:41 AM ******/
ALTER TABLE [dbo].[Department] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF,  IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Departme__A9D10534708571E5]    Script Date: 8/31/2022 1:14:41 AM ******/
ALTER TABLE [dbo].[Department] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF,  IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Hostels__652F85712063417A]    Script Date: 8/31/2022 1:14:41 AM ******/
ALTER TABLE [dbo].[Hostels] ADD UNIQUE NONCLUSTERED 
(
	[HostelName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF,  IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Hostels__652F85714C03BD08]    Script Date: 8/31/2022 1:14:41 AM ******/
ALTER TABLE [dbo].[Hostels] ADD UNIQUE NONCLUSTERED 
(
	[HostelName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF,  IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Restaura__D80B7F40761C36A7]    Script Date: 8/31/2022 1:14:41 AM ******/
ALTER TABLE [dbo].[Restaurants] ADD UNIQUE NONCLUSTERED 
(
	[RestaurantName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF,  IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Restaura__D80B7F40C247677D]    Script Date: 8/31/2022 1:14:41 AM ******/
ALTER TABLE [dbo].[Restaurants] ADD UNIQUE NONCLUSTERED 
(
	[RestaurantName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF,  IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [uniqueEmail]    Script Date: 8/31/2022 1:14:41 AM ******/
ALTER TABLE [dbo].[Sellers] ADD  CONSTRAINT [uniqueEmail] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF,  IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__StarVoti__A4B32E97412B6C12]    Script Date: 8/31/2022 1:14:41 AM ******/
ALTER TABLE [dbo].[StarVotingHostel] ADD UNIQUE NONCLUSTERED 
(
	[StudentNo] ASC,
	[HostelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF,  IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__StarVoti__7AB094E05337E0B0]    Script Date: 8/31/2022 1:14:41 AM ******/
ALTER TABLE [dbo].[StarVotingRestaurant] ADD UNIQUE NONCLUSTERED 
(
	[StudentNo] ASC,
	[RestaurantID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF,  IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [unique__email]    Script Date: 8/31/2022 1:14:41 AM ******/
ALTER TABLE [dbo].[Students] ADD  CONSTRAINT [unique__email] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF,  IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[Admins]  WITH CHECK ADD FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([CountryID])
GO
ALTER TABLE [dbo].[Admins]  WITH CHECK ADD FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([CountryID])
GO
ALTER TABLE [dbo].[Admins]  WITH CHECK ADD FOREIGN KEY([DistrictID])
REFERENCES [dbo].[District] ([DistrictID])
GO
ALTER TABLE [dbo].[Admins]  WITH CHECK ADD FOREIGN KEY([DistrictID])
REFERENCES [dbo].[District] ([DistrictID])
GO
ALTER TABLE [dbo].[Admins]  WITH CHECK ADD FOREIGN KEY([Email])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[Admins]  WITH CHECK ADD FOREIGN KEY([Email])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[Admins]  WITH CHECK ADD FOREIGN KEY([ProvinceID])
REFERENCES [dbo].[Province] ([ProvinceID])
GO
ALTER TABLE [dbo].[Admins]  WITH CHECK ADD FOREIGN KEY([ProvinceID])
REFERENCES [dbo].[Province] ([ProvinceID])
GO
ALTER TABLE [dbo].[Clubs]  WITH CHECK ADD FOREIGN KEY([Email])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[Clubs]  WITH CHECK ADD FOREIGN KEY([Email])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[Clubs]  WITH CHECK ADD FOREIGN KEY([Type])
REFERENCES [dbo].[TypeOfClub] ([TypeID])
GO
ALTER TABLE [dbo].[District]  WITH CHECK ADD FOREIGN KEY([ProvinceID])
REFERENCES [dbo].[Province] ([ProvinceID])
GO
ALTER TABLE [dbo].[District]  WITH CHECK ADD FOREIGN KEY([ProvinceID])
REFERENCES [dbo].[Province] ([ProvinceID])
GO
ALTER TABLE [dbo].[EventOfClub]  WITH CHECK ADD FOREIGN KEY([ClubID])
REFERENCES [dbo].[Clubs] ([ClubID])
GO
ALTER TABLE [dbo].[EventOfClub]  WITH CHECK ADD FOREIGN KEY([ClubID])
REFERENCES [dbo].[Clubs] ([ClubID])
GO
ALTER TABLE [dbo].[FoodImage]  WITH CHECK ADD FOREIGN KEY([FoodID])
REFERENCES [dbo].[Foods] ([FoodID])
GO
ALTER TABLE [dbo].[FoodImage]  WITH CHECK ADD FOREIGN KEY([FoodID])
REFERENCES [dbo].[Foods] ([FoodID])
GO
ALTER TABLE [dbo].[Foods]  WITH CHECK ADD FOREIGN KEY([RestaurantID])
REFERENCES [dbo].[Restaurants] ([RestaurantID])
GO
ALTER TABLE [dbo].[Foods]  WITH CHECK ADD FOREIGN KEY([RestaurantID])
REFERENCES [dbo].[Restaurants] ([RestaurantID])
GO
ALTER TABLE [dbo].[HostelImage]  WITH CHECK ADD FOREIGN KEY([HostelID])
REFERENCES [dbo].[Hostels] ([HostelID])
GO
ALTER TABLE [dbo].[HostelImage]  WITH CHECK ADD FOREIGN KEY([HostelID])
REFERENCES [dbo].[Hostels] ([HostelID])
GO
ALTER TABLE [dbo].[Hostels]  WITH CHECK ADD FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([CountryID])
GO
ALTER TABLE [dbo].[Hostels]  WITH CHECK ADD FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([CountryID])
GO
ALTER TABLE [dbo].[Hostels]  WITH CHECK ADD FOREIGN KEY([DistrictID])
REFERENCES [dbo].[District] ([DistrictID])
GO
ALTER TABLE [dbo].[Hostels]  WITH CHECK ADD FOREIGN KEY([DistrictID])
REFERENCES [dbo].[District] ([DistrictID])
GO
ALTER TABLE [dbo].[Hostels]  WITH CHECK ADD FOREIGN KEY([ProvinceID])
REFERENCES [dbo].[Province] ([ProvinceID])
GO
ALTER TABLE [dbo].[Hostels]  WITH CHECK ADD FOREIGN KEY([ProvinceID])
REFERENCES [dbo].[Province] ([ProvinceID])
GO
ALTER TABLE [dbo].[Hostels]  WITH CHECK ADD FOREIGN KEY([SellerID])
REFERENCES [dbo].[Sellers] ([SellerID])
GO
ALTER TABLE [dbo].[Hostels]  WITH CHECK ADD FOREIGN KEY([SellerID])
REFERENCES [dbo].[Sellers] ([SellerID])
GO
ALTER TABLE [dbo].[Province]  WITH CHECK ADD FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([CountryID])
GO
ALTER TABLE [dbo].[Province]  WITH CHECK ADD FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([CountryID])
GO
ALTER TABLE [dbo].[ReportHostel]  WITH CHECK ADD FOREIGN KEY([HostelID])
REFERENCES [dbo].[Hostels] ([HostelID])
GO
ALTER TABLE [dbo].[ReportHostel]  WITH CHECK ADD FOREIGN KEY([HostelID])
REFERENCES [dbo].[Hostels] ([HostelID])
GO
ALTER TABLE [dbo].[ReportRestaurant]  WITH CHECK ADD FOREIGN KEY([RestaurantID])
REFERENCES [dbo].[Restaurants] ([RestaurantID])
GO
ALTER TABLE [dbo].[ReportRestaurant]  WITH CHECK ADD FOREIGN KEY([RestaurantID])
REFERENCES [dbo].[Restaurants] ([RestaurantID])
GO
ALTER TABLE [dbo].[Restaurants]  WITH CHECK ADD FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([CountryID])
GO
ALTER TABLE [dbo].[Restaurants]  WITH CHECK ADD FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([CountryID])
GO
ALTER TABLE [dbo].[Restaurants]  WITH CHECK ADD FOREIGN KEY([DistrictID])
REFERENCES [dbo].[District] ([DistrictID])
GO
ALTER TABLE [dbo].[Restaurants]  WITH CHECK ADD FOREIGN KEY([DistrictID])
REFERENCES [dbo].[District] ([DistrictID])
GO
ALTER TABLE [dbo].[Restaurants]  WITH CHECK ADD FOREIGN KEY([ProvinceID])
REFERENCES [dbo].[Province] ([ProvinceID])
GO
ALTER TABLE [dbo].[Restaurants]  WITH CHECK ADD FOREIGN KEY([ProvinceID])
REFERENCES [dbo].[Province] ([ProvinceID])
GO
ALTER TABLE [dbo].[Restaurants]  WITH CHECK ADD FOREIGN KEY([SellerID])
REFERENCES [dbo].[Sellers] ([SellerID])
GO
ALTER TABLE [dbo].[Restaurants]  WITH CHECK ADD FOREIGN KEY([SellerID])
REFERENCES [dbo].[Sellers] ([SellerID])
GO
ALTER TABLE [dbo].[Sellers]  WITH CHECK ADD FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([CountryID])
GO
ALTER TABLE [dbo].[Sellers]  WITH CHECK ADD FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([CountryID])
GO
ALTER TABLE [dbo].[Sellers]  WITH CHECK ADD FOREIGN KEY([DistrictID])
REFERENCES [dbo].[District] ([DistrictID])
GO
ALTER TABLE [dbo].[Sellers]  WITH CHECK ADD FOREIGN KEY([DistrictID])
REFERENCES [dbo].[District] ([DistrictID])
GO
ALTER TABLE [dbo].[Sellers]  WITH CHECK ADD FOREIGN KEY([Email])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[Sellers]  WITH CHECK ADD FOREIGN KEY([Email])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[Sellers]  WITH CHECK ADD FOREIGN KEY([ProvinceID])
REFERENCES [dbo].[Province] ([ProvinceID])
GO
ALTER TABLE [dbo].[Sellers]  WITH CHECK ADD FOREIGN KEY([ProvinceID])
REFERENCES [dbo].[Province] ([ProvinceID])
GO
ALTER TABLE [dbo].[StarVotingHostel]  WITH CHECK ADD FOREIGN KEY([HostelID])
REFERENCES [dbo].[Hostels] ([HostelID])
GO
ALTER TABLE [dbo].[StarVotingHostel]  WITH CHECK ADD FOREIGN KEY([StudentNo])
REFERENCES [dbo].[Students] ([StudentNo])
GO
ALTER TABLE [dbo].[StarVotingRestaurant]  WITH CHECK ADD FOREIGN KEY([RestaurantID])
REFERENCES [dbo].[Restaurants] ([RestaurantID])
GO
ALTER TABLE [dbo].[StarVotingRestaurant]  WITH CHECK ADD FOREIGN KEY([StudentNo])
REFERENCES [dbo].[Students] ([StudentNo])
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([CountryID])
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([CountryID])
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD FOREIGN KEY([DistrictID])
REFERENCES [dbo].[District] ([DistrictID])
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD FOREIGN KEY([DistrictID])
REFERENCES [dbo].[District] ([DistrictID])
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD FOREIGN KEY([Email])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD FOREIGN KEY([Email])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD FOREIGN KEY([ProvinceID])
REFERENCES [dbo].[Province] ([ProvinceID])
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD FOREIGN KEY([ProvinceID])
REFERENCES [dbo].[Province] ([ProvinceID])
GO
USE [master]
GO
ALTER DATABASE [FCS] SET  READ_WRITE 
GO
