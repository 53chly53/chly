USE [master]
GO
/****** Object:  Database [Dbo TicariOtamasyon]    Script Date: 4.04.2022 12:03:59 ******/
CREATE DATABASE [celalproje]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'celalprojen', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\celalprojen.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'celalprojen_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\celalproje_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [celalproje] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [celalproje].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [celalproje] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [celalproje] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [celalproje] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [celalproje] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [celalproje] SET ARITHABORT OFF 
GO
ALTER DATABASE [celalproje] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [celalproje] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [celalproje] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [celalproje] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [celalproje] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [celalproje] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [celalproje] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [celalproje] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [celalproje] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [celalproje] SET  DISABLE_BROKER 
GO
ALTER DATABASE [celalproje] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [celalproje] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [celalproje] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [celalproje] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [celalproje] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [celalproje] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [celalproje] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [celalproje] SET RECOVERY FULL 
GO
ALTER DATABASE [celalproje] SET  MULTI_USER 
GO
ALTER DATABASE [celalproje] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [celalproje] SET DB_CHAINING OFF 
GO
ALTER DATABASE [celalproje] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [celalproje] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [celalproje] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [celalproje] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'celalproje', N'ON'
GO
ALTER DATABASE [celalproje] SET QUERY_STORE = OFF
GO
USE [celalproje]
GO
/****** Object:  Table [dbo].[TBL_MUSTERILER]    Script Date: 4.04.2022 12:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_ADMIN](
	[Kullaniciad] [varchar] (10)NULL,
	[Sifre] [varchar] (10) NULL,
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_MUSTERILER]    Script Date: 4.04.2022 12:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_BANKALAR](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[BANKAADI] [varchar](30) NULL,
	[IL] [varchar](13) NULL,
	[ILCE] [varchar](20) NULL,
	[SUBE] [varchar](30) NULL,
	[IBAN] [varchar](30) NULL,
	[HESAPNO] [varchar](20) NULL,
	[YETKILI] [varchar](30) NULL,
	[TELEFON] [varchar](15) NULL,
	[TARIH] [smalldatetime] NULL,
	[HESAPTURU] [varchar](20) NULL,
	[FIRMAID] [smallint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_MUSTERILER]    Script Date: 4.04.2022 12:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_FATURABILGI](
	[FATURABILGIAD] [int] IDENTITY(1,1) NOT NULL,
	[SERI] [char](1) NULL,
	[SIRANO] [varchar](10) NULL,
	[TARIH] [varchar](10) NULL,
	[SAAT] [varchar](5) NULL,
	[VERGIDAIRE] [varchar](40) NULL,
	[ALICI] [varchar](30) NULL,
	[TESLIMEDEN] [varchar](30) NULL,
	[TESLIMALAN] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_MUSTERILER]    Script Date: 4.04.2022 12:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_FATURADETAY](
	[FATURABILGIAD] [int] IDENTITY(1,1) NOT NULL,
	[URUNAD] [varchar](20) NULL,
	[MIKTAR] [smallint] NULL,
	[FIYAT] [decimal](18,2) NULL,
	[TUTAR] [decimal](18,2) NULL,
	[FATURAID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_MUSTERILER]    Script Date: 4.04.2022 12:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_FIRMAHAREKET](
	[HAREKETID] [int] IDENTITY(1,1) NOT NULL,
	[URUNID] [int] NULL,
	[ADET] [tinyint] NULL,
	[PERSONEL] [tinyint] NULL,
	[FIRMA] [smallint] NULL,
	[FIYAT] [decimal](18, 2) NULL,
	[TOPLAM] [decimal](18, 2) NULL,
	[FATURAID] [int] NULL,
	[TARIH] [varchar] (10) NULL,
	[NOTLAR] [varchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_MUSTERILER]    Script Date: 4.04.2022 12:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_FIRMALAR](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[AD] [varchar](30) NULL,
	[YETKILISTATU] [varchar](30) NULL,
	[YETKILIADSOYAD] [varchar](30) NULL,
	[YETKILITC] [char](11) NULL,
	[SEKTOR] [varchar](15) NULL,
	[TELEFON1] [varchar](15) NULL,
	[TELEFON2] [varchar](15) NULL,
	[TELEFON3] [varchar](15) NULL,
	[MAIL] [varchar](40) NULL,
	[FAX] [varchar](15) NULL,
	[IL] [varchar](13) NULL,
	[ILCE] [varchar](20) NULL,
	[VERGIDAIRE] [varchar](30) NULL,
	[ADRES] [varchar](100) NULL,
	[OZELKOD1] [varchar](10) NULL,
	[OZELKOD2] [varchar](10) NULL,
	[OZELKOD3] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_MUSTERILER]    Script Date: 4.04.2022 12:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_GIDERLER](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ELEKTRIK] [decimal](18,2) NULL,
	[SU] [decimal](18,2) NULL,
	[DOGALGAZ] [decimal](18,2) NULL,
	[INTERNET] [decimal](18,2) NULL,
	[MAASLAR] [decimal](18,2) NULL,
	[EKSTRA] [decimal](18,2) NULL,
	[NOTLAR] [varchar](500) NULL,
	[AY] [varchar](7) NULL,
	[YIL] [char](4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_MUSTERILER]    Script Date: 4.04.2022 12:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_KODLAR](
	[FIRMAKOD1] [varchar] (300)NULL,
	[FIRMAKOD2] [varchar] (300)NULL,
	[FIRMAKOD3] [varchar] (300)NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_PERSONELLER]    Script Date: 4.04.2022 12:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_MUSTERIHAREKETLER](
	[HAREKETID] [int] IDENTITY(1,1) NOT NULL,
	[URUNID] [int] NULL,
	[ADET] [tinyint] NULL,
	[PERSONEL] [tinyint] NULL,
	[MUSTERI] [smallint] NULL,
	[FIYAT] [decimal](18,2) NULL,
	[TOPLAM] [decimal](18,2) NULL,
	[FATURAID] [int] NULL,
	[TARIH] [varchar](10) NULL,
	[NOTLAR] [varchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_PERSONELLER]    Script Date: 4.04.2022 12:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_MUSTERILER](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[AD] [varchar] (20) NULL,
	[SOYAD] [varchar] (30) NULL,
	[TELEFON] [varchar] (15) NULL,
	[TELEFON2] [varchar] (15) NULL,
	[TC] [char](11) NULL,
	[MAIL] [varchar] (40) NULL,
	[IL] [varchar] (13) NULL,
	[ILCE] [varchar] (20) NULL,
	[ADRES] [varchar] (100) NULL,
	[VERGIDAIRE] [varchar] (30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_PERSONELLER]    Script Date: 4.04.2022 12:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_NOTLAR](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TARIH] [varchar](10) NULL,
	[SAAT] [varchar](50) NULL,
	[BASLIK] [varchar](50) NULL,
	[DETAY] [varchar](250) NULL,
	[OLUSTURAN] [varchar](20) NULL,
	[HITAP] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_PERSONELLER]    Script Date: 4.04.2022 12:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_PERSONELLER](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[AD] [varchar](20) NULL,
	[SOYAD] [varchar](30) NULL,
	[TELEFON] [varchar](15) NULL,
	[TC] [char](11) NULL,
	[MAIL] [varchar](40) NULL,
	[IL] [varchar](13) NULL,
	[ILCE] [varchar](20) NULL,
	[ADRES] [varchar](100) NULL,
	[GOREV] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_STOKLAR]    Script Date: 4.04.2022 12:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_STOKLAR](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[STOKTUR] [varchar](20) NULL,
	[STOKADET] [smallint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_URUNLER]    Script Date: 4.04.2022 12:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_URUNLER](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[URUNADI] [varchar](20) NULL,
	[MARKA] [varchar](20) NULL,
	[MODEL] [varchar](20) NULL,
	[YIL] [char](4) NULL,
	[ADET] [smallint] NULL,
	[ALISFIYAT] [decimal](18, 2) NULL,
	[SATISFIYAT] [decimal](18, 2) NULL,
	[DETAY] [varchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TDL_FIRMALAR]    Script Date: 4.04.2022 12:03:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
