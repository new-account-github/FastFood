USE [master]
GO
/****** Object:  Database [J5Food]    Script Date: 6/8/2023 4:55:09 PM ******/
CREATE DATABASE [J5Food]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'J5Food', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\J5Food.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'J5Food_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\J5Food_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [J5Food] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [J5Food].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [J5Food] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [J5Food] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [J5Food] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [J5Food] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [J5Food] SET ARITHABORT OFF 
GO
ALTER DATABASE [J5Food] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [J5Food] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [J5Food] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [J5Food] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [J5Food] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [J5Food] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [J5Food] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [J5Food] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [J5Food] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [J5Food] SET  DISABLE_BROKER 
GO
ALTER DATABASE [J5Food] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [J5Food] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [J5Food] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [J5Food] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [J5Food] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [J5Food] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [J5Food] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [J5Food] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [J5Food] SET  MULTI_USER 
GO
ALTER DATABASE [J5Food] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [J5Food] SET DB_CHAINING OFF 
GO
ALTER DATABASE [J5Food] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [J5Food] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [J5Food] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [J5Food] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [J5Food] SET QUERY_STORE = OFF
GO
USE [J5Food]
GO
/****** Object:  Table [dbo].[account]    Script Date: 6/8/2023 4:55:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[password] [nvarchar](15) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[fullname] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[admin] [bit] NOT NULL,
	[active] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category]    Script Date: 6/8/2023 4:55:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[id] [char](4) NOT NULL,
	[name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order]    Script Date: 6/8/2023 4:55:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[userid] [bigint] NOT NULL,
	[create_date] [date] NOT NULL,
	[address] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orderdetail]    Script Date: 6/8/2023 4:55:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orderdetail](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[orderid] [bigint] NOT NULL,
	[productid] [int] NOT NULL,
	[price] [float] NOT NULL,
	[quantity] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 6/8/2023 4:55:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[image] [nvarchar](50) NOT NULL,
	[price] [float] NOT NULL,
	[createdate] [date] NOT NULL,
	[categoryid] [char](4) NOT NULL,
	[active] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[account] ON 

INSERT [dbo].[account] ([id], [password], [username], [fullname], [email], [admin], [active]) VALUES (1, N'123', N'cuong', N'Kim Văn Cường', N'cuongkvps25207@fpt.edu.vn', 1, 1)
INSERT [dbo].[account] ([id], [password], [username], [fullname], [email], [admin], [active]) VALUES (2, N'123', N'Hung', N'Bui Hai Hung', N'abc@gmail.com', 0, 0)
INSERT [dbo].[account] ([id], [password], [username], [fullname], [email], [admin], [active]) VALUES (3, N'456', N'toan', N'Vũ Văn Toàn', N'toan@gmail.co', 1, 1)
SET IDENTITY_INSERT [dbo].[account] OFF
GO
INSERT [dbo].[category] ([id], [name]) VALUES (N'    ', N'')
INSERT [dbo].[category] ([id], [name]) VALUES (N'LH01', N'Đồ ăn ')
INSERT [dbo].[category] ([id], [name]) VALUES (N'LH02', N'Thức uống ')
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id], [name], [image], [price], [createdate], [categoryid], [active]) VALUES (1, N'Burger', N'3.jpg', 40000, CAST(N'2023-05-12' AS Date), N'LH01', 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [createdate], [categoryid], [active]) VALUES (2, N'Socola', N'4.jpg', 15000, CAST(N'2023-05-12' AS Date), N'LH01', 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [createdate], [categoryid], [active]) VALUES (3, N'CocaCola', N'5.jpg', 10000, CAST(N'2023-04-19' AS Date), N'LH02', 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [createdate], [categoryid], [active]) VALUES (4, N'Pepsi', N'6.jpg', 10000, CAST(N'2023-04-19' AS Date), N'LH02', 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [createdate], [categoryid], [active]) VALUES (5, N'Starbuck', N'7.jpg', 15000, CAST(N'2023-04-12' AS Date), N'LH02', 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [createdate], [categoryid], [active]) VALUES (6, N'Rice', N'rice.jpg', 25000, CAST(N'2023-05-05' AS Date), N'LH01', 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [createdate], [categoryid], [active]) VALUES (7, N'Milk Tea', N'tea.jpg', 30000, CAST(N'2023-04-12' AS Date), N'LH02', 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [createdate], [categoryid], [active]) VALUES (8, N'Pizza', N'pizza.jpg', 40000, CAST(N'2023-05-12' AS Date), N'LH01', 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [createdate], [categoryid], [active]) VALUES (9, N'Chiken', N'8.jpg', 50000, CAST(N'2023-05-23' AS Date), N'LH01', 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [createdate], [categoryid], [active]) VALUES (10, N'Cake', N'9.jpg', 20000, CAST(N'2023-05-21' AS Date), N'LH01', 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [createdate], [categoryid], [active]) VALUES (11, N'Water', N'10.jpg', 5000, CAST(N'2023-05-12' AS Date), N'LH02', 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [createdate], [categoryid], [active]) VALUES (12, N'Soda', N'11.jpg', 10000, CAST(N'2023-04-04' AS Date), N'LH02', 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [createdate], [categoryid], [active]) VALUES (13, N'Beer', N'12.jpg', 13000, CAST(N'2023-05-12' AS Date), N'LH02', 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [createdate], [categoryid], [active]) VALUES (14, N'Burrito', N'13.jpg', 34000, CAST(N'2023-05-15' AS Date), N'LH01', 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [createdate], [categoryid], [active]) VALUES (15, N'Bánh mỳ', N'14.jpg', 25000, CAST(N'2023-04-12' AS Date), N'LH01', 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [createdate], [categoryid], [active]) VALUES (16, N'Phở', N'15.jpg', 30000, CAST(N'2023-05-19' AS Date), N'LH01', 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [createdate], [categoryid], [active]) VALUES (17, N'Bún Bò', N'16.jpg', 32000, CAST(N'2023-04-09' AS Date), N'LH01', 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [createdate], [categoryid], [active]) VALUES (18, N'Bún chả', N'17.jpg', 27000, CAST(N'2023-01-02' AS Date), N'LH01', 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [createdate], [categoryid], [active]) VALUES (19, N'Bún đậu mắm tôm', N'18.jpg', 36000, CAST(N'2023-03-04' AS Date), N'LH01', 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [createdate], [categoryid], [active]) VALUES (20, N'Bún mắm', N'19.jpg', 27000, CAST(N'2023-04-04' AS Date), N'LH01', 1)
SET IDENTITY_INSERT [dbo].[product] OFF
GO
ALTER TABLE [dbo].[order]  WITH CHECK ADD FOREIGN KEY([userid])
REFERENCES [dbo].[account] ([id])
GO
ALTER TABLE [dbo].[orderdetail]  WITH CHECK ADD FOREIGN KEY([orderid])
REFERENCES [dbo].[order] ([id])
GO
ALTER TABLE [dbo].[orderdetail]  WITH CHECK ADD FOREIGN KEY([productid])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD FOREIGN KEY([categoryid])
REFERENCES [dbo].[category] ([id])
GO
USE [master]
GO
ALTER DATABASE [J5Food] SET  READ_WRITE 
GO
