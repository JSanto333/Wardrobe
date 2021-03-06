USE [master]
GO
/****** Object:  Database [Wardrobe]    Script Date: 8/6/2017 5:21:38 PM ******/
CREATE DATABASE [Wardrobe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Wardrobe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Wardrobe.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Wardrobe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Wardrobe_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Wardrobe] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Wardrobe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Wardrobe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Wardrobe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Wardrobe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Wardrobe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Wardrobe] SET ARITHABORT OFF 
GO
ALTER DATABASE [Wardrobe] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Wardrobe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Wardrobe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Wardrobe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Wardrobe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Wardrobe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Wardrobe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Wardrobe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Wardrobe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Wardrobe] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Wardrobe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Wardrobe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Wardrobe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Wardrobe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Wardrobe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Wardrobe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Wardrobe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Wardrobe] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Wardrobe] SET  MULTI_USER 
GO
ALTER DATABASE [Wardrobe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Wardrobe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Wardrobe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Wardrobe] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Wardrobe] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Wardrobe]
GO
/****** Object:  Table [dbo].[Accessories]    Script Date: 8/6/2017 5:21:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accessories](
	[AccessoriesID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](500) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Season] [nvarchar](50) NOT NULL,
	[Occasion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Accessories] PRIMARY KEY CLUSTERED 
(
	[AccessoriesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bottoms]    Script Date: 8/6/2017 5:21:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bottoms](
	[BottomsID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](500) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Season] [nvarchar](50) NOT NULL,
	[Occasion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Bottoms] PRIMARY KEY CLUSTERED 
(
	[BottomsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shoes]    Script Date: 8/6/2017 5:21:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shoes](
	[ShoesID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](500) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Season] [nvarchar](50) NOT NULL,
	[Occasion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Shoes] PRIMARY KEY CLUSTERED 
(
	[ShoesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tops]    Script Date: 8/6/2017 5:21:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tops](
	[TopsID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](500) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Season] [nvarchar](50) NOT NULL,
	[Occasion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Tops] PRIMARY KEY CLUSTERED 
(
	[TopsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Accessories] ON 

INSERT [dbo].[Accessories] ([AccessoriesID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (1, N'Accessories', N'http://www.francisandgaye.co.uk/images/hugo-boss-watches-ladies-silver-tone-designer-watch-p2275-921_medium.jpg', N'Watch', N'Silver', N'Summer', N'Dinner')
INSERT [dbo].[Accessories] ([AccessoriesID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (2, N'Accessories', N'https://images-na.ssl-images-amazon.com/images/I/41WR7IrgXTL._SL500_.jpg', N'Hat', N'Red', N'Summer', N'Baseball Game')
INSERT [dbo].[Accessories] ([AccessoriesID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (3, N'Accessories', N'https://images-na.ssl-images-amazon.com/images/I/61yuSoLmpWL._UX569_.jpg', N'Belt', N'Black', N'Winter', N'Work')
INSERT [dbo].[Accessories] ([AccessoriesID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (4, N'Accessories', N'https://xmnuz23762.i.lithium.com/t5/image/serverpage/image-id/27550i0E7B662B72AE71E0?v=1.0', N'Fit Bit', N'Red', N'Summer', N'Party')
SET IDENTITY_INSERT [dbo].[Accessories] OFF
SET IDENTITY_INSERT [dbo].[Bottoms] ON 

INSERT [dbo].[Bottoms] ([BottomsID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (1, N'Pants', N'https://images.thenorthface.com/is/image/TheNorthFace/CA82_JK3_hero?$638x745$', N'Sweatpants', N'Black', N'Fall', N'Lounging')
INSERT [dbo].[Bottoms] ([BottomsID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (2, N'Pants', N'http://www.orvis.co.uk/orvis_assets/prodimg/32CPPB9.jpg', N'Jeans', N'Blue', N'Fall', N'Walking Through The Park')
INSERT [dbo].[Bottoms] ([BottomsID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (3, N'Pants', N'https://assets.mountainkhakis.com/spree/images/901/small/M-Poplin-Pant-Khaki.jpg?1453212680', N'Khakis', N'Brown', N'Winter', N'Work Events')
SET IDENTITY_INSERT [dbo].[Bottoms] OFF
SET IDENTITY_INSERT [dbo].[Shoes] ON 

INSERT [dbo].[Shoes] ([ShoesID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (1, N'Shoes', N'https://cdn.runrepeat.com/i/nike/929/nike-mens-free-5-0-running-shoes-black-mens-black-dark-grey-cool-grey-white-ffed-600.jpg', N'Running Shoes', N'Black', N'Summer', N'Running')
INSERT [dbo].[Shoes] ([ShoesID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (2, N'Shoes', N'https://guideimg.alibaba.com/images/shop/71/08/14/5/mens-psl-725-brown-leather-walking-smart-sandals-uk-11_2736625.jpg', N'Sandals', N'Brown', N'Summer', N'Beach')
INSERT [dbo].[Shoes] ([ShoesID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (3, N'Shoes', N'https://media.kohlsimg.com/is/image/kohls/1801204_Brown?wid=240&hei=240&op_sharpen=1', N'Dress Shoes', N'Brown', N'Fall', N'Work Party')
SET IDENTITY_INSERT [dbo].[Shoes] OFF
SET IDENTITY_INSERT [dbo].[Tops] ON 

INSERT [dbo].[Tops] ([TopsID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (1, N'Shirt', N'https://s-media-cache-ak0.pinimg.com/736x/5b/39/18/5b3918761a60a90efb30811d9cdf6609--red-polo-shirt-mens-polo-shirts.jpg', N'Polo', N'Red', N'Summer', N'Party')
INSERT [dbo].[Tops] ([TopsID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (2, N'Shirt', N'https://blueinc_co_uk.secure-cdn.visualsoft.co.uk/images/mens-deep-blue-core-jersey-v-neck-t-shirt-p19038-15617_image.jpg', N'V-Neck', N'Blue', N'Spring', N'Casual Party')
INSERT [dbo].[Tops] ([TopsID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (3, N'Shirt', N'http://i.telegraph.co.uk/multimedia/archive/03490/11_03-mensnotebook_3490925k.jpg', N'Sweater', N'Green', N'Winter', N'Holiday Fun')
SET IDENTITY_INSERT [dbo].[Tops] OFF
USE [master]
GO
ALTER DATABASE [Wardrobe] SET  READ_WRITE 
GO
