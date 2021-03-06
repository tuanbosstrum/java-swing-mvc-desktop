USE [master]
GO
/****** Object:  Database [QL_khachsan]    Script Date: 02/09/2019 4:28:40 CH ******/
CREATE DATABASE [QL_khachsan]
 
GO
ALTER DATABASE [QL_khachsan] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QL_khachsan].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QL_khachsan] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QL_khachsan] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QL_khachsan] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QL_khachsan] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QL_khachsan] SET ARITHABORT OFF 
GO
ALTER DATABASE [QL_khachsan] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QL_khachsan] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [QL_khachsan] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QL_khachsan] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QL_khachsan] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QL_khachsan] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QL_khachsan] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QL_khachsan] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QL_khachsan] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QL_khachsan] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QL_khachsan] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QL_khachsan] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QL_khachsan] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QL_khachsan] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QL_khachsan] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QL_khachsan] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QL_khachsan] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QL_khachsan] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QL_khachsan] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QL_khachsan] SET  MULTI_USER 
GO
ALTER DATABASE [QL_khachsan] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QL_khachsan] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QL_khachsan] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QL_khachsan] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [QL_khachsan]
GO
/****** Object:  Table [dbo].[KH]    Script Date: 02/09/2019 4:28:41 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KH](
	[maKH] [int] IDENTITY(1,1) NOT NULL,
	[maloaiKH] [int] NOT NULL,
	[tenKH] [nvarchar](50) NOT NULL,
	[tuoi] [int] NULL,
	[gioitinh] [nvarchar](50) NULL,
	[sdt] [char](10) NULL,
	[soCMND] [char](12) NULL,
	[ghichu] [nvarchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[loaiKH]    Script Date: 02/09/2019 4:28:41 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loaiKH](
	[maloaiKH] [int] IDENTITY(1,1) NOT NULL,
	[tenloaiKH] [nvarchar](50) NOT NULL,
	[mota] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[loaiphong]    Script Date: 02/09/2019 4:28:41 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loaiphong](
	[maloaiphong] [int] NOT NULL,
	[tenloaiphong] [nvarchar](50) NOT NULL,
	[mota] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[nhanvien]    Script Date: 02/09/2019 4:28:41 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[nhanvien](
	[manhanvien] [int] IDENTITY(1,1) NOT NULL,
	[tennhanvien] [nvarchar](50) NOT NULL,
	[gioitinh] [nvarchar](50) NULL,
	[ngaysinh] [date] NULL,
	[sdt] [char](10) NULL,
	[ngaylam] [date] NOT NULL,
	[luong] [money] NOT NULL,
	[diachi] [nvarchar](50) NULL,
	[ghichu] [nvarchar](50) NULL,
 CONSTRAINT [PK_nhanvien] PRIMARY KEY CLUSTERED 
(
	[manhanvien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[phieuthue]    Script Date: 02/09/2019 4:28:41 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[phieuthue](
	[maphieuThue] [int] IDENTITY(1,1) NOT NULL,
	[maphong] [int] NULL,
	[tenphong] [nvarchar](50) NULL,
	[tennhanvien] [nvarchar](50) NULL,
	[maNV] [int] NULL,
	[giaPhong] [money] NULL,
	[tenKH] [nvarchar](50) NULL,
	[tuoi] [int] NULL,
	[sdt] [char](10) NULL,
	[soCMND] [char](12) NULL,
	[ngaythue] [date] NULL,
	[soNgaythue] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[phong]    Script Date: 02/09/2019 4:28:41 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phong](
	[maphong] [int] IDENTITY(1,1) NOT NULL,
	[tenphong] [nvarchar](50) NULL,
	[dientich] [int] NULL,
	[gia] [money] NULL,
	[trangthai] [nvarchar](50) NULL,
	[ghichu] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[user]    Script Date: 02/09/2019 4:28:41 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[mauser] [int] IDENTITY(1,1) NOT NULL,
	[tenuser] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[ngaylap] [date] NULL CONSTRAINT [DF_user_ngaylap]  DEFAULT (getdate()),
	[ghichu] [nvarchar](50) NULL,
	[role] [nvarchar](50) NULL CONSTRAINT [DF_user_role]  DEFAULT (N'none'),
	[hovaten] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[KH] ON 

INSERT [dbo].[KH] ([maKH], [maloaiKH], [tenKH], [tuoi], [gioitinh], [sdt], [soCMND], [ghichu]) VALUES (1, 1, N'Trần QUang Trường', 18, N'Nam', N'0123456789', N'024456876123', NULL)
INSERT [dbo].[KH] ([maKH], [maloaiKH], [tenKH], [tuoi], [gioitinh], [sdt], [soCMND], [ghichu]) VALUES (2, 2, N'trần quang ', 18, N'Nam', N'0123456789', N'012345678901', N'')
INSERT [dbo].[KH] ([maKH], [maloaiKH], [tenKH], [tuoi], [gioitinh], [sdt], [soCMND], [ghichu]) VALUES (25, 4, N'trường 13', 6, N'Nam', N'0112234123', N'321234321233', N'')
INSERT [dbo].[KH] ([maKH], [maloaiKH], [tenKH], [tuoi], [gioitinh], [sdt], [soCMND], [ghichu]) VALUES (27, 2, N'trường đẹp trai', 11, N'nữ', N'1231231231', N'123123123123', N'fsadfsđầ')
INSERT [dbo].[KH] ([maKH], [maloaiKH], [tenKH], [tuoi], [gioitinh], [sdt], [soCMND], [ghichu]) VALUES (30, 1, N'trường321123', 8, N'Khác', N'1234123412', N'123123123567', N'')
INSERT [dbo].[KH] ([maKH], [maloaiKH], [tenKH], [tuoi], [gioitinh], [sdt], [soCMND], [ghichu]) VALUES (31, 1, N'kakaka12', 1, N'Nam', N'1234567890', N'234567809765', N'')
INSERT [dbo].[KH] ([maKH], [maloaiKH], [tenKH], [tuoi], [gioitinh], [sdt], [soCMND], [ghichu]) VALUES (32, 1, N'sdàhsadlk;gsfdsg', 1, N'Nam', N'1234567890', N'234567809765', NULL)
INSERT [dbo].[KH] ([maKH], [maloaiKH], [tenKH], [tuoi], [gioitinh], [sdt], [soCMND], [ghichu]) VALUES (33, 4, N'trường 134', 6, N'Nam', N'0112234123', N'321234321233', NULL)
SET IDENTITY_INSERT [dbo].[KH] OFF
SET IDENTITY_INSERT [dbo].[loaiKH] ON 

INSERT [dbo].[loaiKH] ([maloaiKH], [tenloaiKH], [mota]) VALUES (1, N'khách hàng trung thành', N'Đây là nhóm khách hàng mang lại lợi ích lớn nhất')
INSERT [dbo].[loaiKH] ([maloaiKH], [tenloaiKH], [mota]) VALUES (2, N'khách hàng có tiềm năng', N'fsdfsấd')
INSERT [dbo].[loaiKH] ([maloaiKH], [tenloaiKH], [mota]) VALUES (4, N'khách hàng mang lại giá trị nhỏ', N'họ chỉ quan tâm giá rẻ')
INSERT [dbo].[loaiKH] ([maloaiKH], [tenloaiKH], [mota]) VALUES (5, N'khách hàng tiêu cực', N'không còn gì để lói')
SET IDENTITY_INSERT [dbo].[loaiKH] OFF
SET IDENTITY_INSERT [dbo].[nhanvien] ON 

INSERT [dbo].[nhanvien] ([manhanvien], [tennhanvien], [gioitinh], [ngaysinh], [sdt], [ngaylam], [luong], [diachi], [ghichu]) VALUES (3, N'trường quang', N'Khác', CAST(N'2000-12-02' AS Date), N'0123456789', CAST(N'2000-12-02' AS Date), 100000.0000, N'buôn ma thuột', N'sadfadfádf')
INSERT [dbo].[nhanvien] ([manhanvien], [tennhanvien], [gioitinh], [ngaysinh], [sdt], [ngaylam], [luong], [diachi], [ghichu]) VALUES (14, N'trường đẹp trai', N'Nam', CAST(N'2000-12-02' AS Date), N'1231231231', CAST(N'2019-12-02' AS Date), 1234.0000, N'dfádf', N'sấdf')
INSERT [dbo].[nhanvien] ([manhanvien], [tennhanvien], [gioitinh], [ngaysinh], [sdt], [ngaylam], [luong], [diachi], [ghichu]) VALUES (15, N'trường đẹp trai', N'Nam', CAST(N'2000-12-02' AS Date), N'1231231231', CAST(N'2019-12-02' AS Date), 12545345.0000, N'dfádf', N'sấdf')
INSERT [dbo].[nhanvien] ([manhanvien], [tennhanvien], [gioitinh], [ngaysinh], [sdt], [ngaylam], [luong], [diachi], [ghichu]) VALUES (16, N'trường đẹp trai', N'Nữ', CAST(N'2000-12-02' AS Date), N'1231231231', CAST(N'2019-12-02' AS Date), 12545345.0000, N'dfádf', N'sấdf')
INSERT [dbo].[nhanvien] ([manhanvien], [tennhanvien], [gioitinh], [ngaysinh], [sdt], [ngaylam], [luong], [diachi], [ghichu]) VALUES (17, N'truognừ ', N'Nam', CAST(N'2000-02-20' AS Date), N'0123123123', CAST(N'2019-02-02' AS Date), 2000000.0000, N'ádfádf', N'')
INSERT [dbo].[nhanvien] ([manhanvien], [tennhanvien], [gioitinh], [ngaysinh], [sdt], [ngaylam], [luong], [diachi], [ghichu]) VALUES (18, N'sdfadf', N'Nam', CAST(N'3000-02-02' AS Date), N'1231231231', CAST(N'3019-02-02' AS Date), 123123.0000, N'', N'')
SET IDENTITY_INSERT [dbo].[nhanvien] OFF
SET IDENTITY_INSERT [dbo].[phieuthue] ON 

INSERT [dbo].[phieuthue] ([maphieuThue], [maphong], [tenphong], [tennhanvien], [maNV], [giaPhong], [tenKH], [tuoi], [sdt], [soCMND], [ngaythue], [soNgaythue]) VALUES (1, 1, N'P01', N'Trần QUang Trường', 1, 500000.0000, N'quang tèo', 18, N'1231231231', N'123123123123', CAST(N'2019-09-02' AS Date), 2)
INSERT [dbo].[phieuthue] ([maphieuThue], [maphong], [tenphong], [tennhanvien], [maNV], [giaPhong], [tenKH], [tuoi], [sdt], [soCMND], [ngaythue], [soNgaythue]) VALUES (2, 1, N'P01', N'Trần QUang Trường', 1, 500000.0000, N'quang tèo', 18, N'1231231231', N'123123123123', CAST(N'2019-09-02' AS Date), 2)
INSERT [dbo].[phieuthue] ([maphieuThue], [maphong], [tenphong], [tennhanvien], [maNV], [giaPhong], [tenKH], [tuoi], [sdt], [soCMND], [ngaythue], [soNgaythue]) VALUES (3, 2, N'P02', N'Trần QUang Trường', 1, 500000.0000, N'quang tèo', 18, N'1231231231', N'123123123123', CAST(N'2019-09-02' AS Date), NULL)
INSERT [dbo].[phieuthue] ([maphieuThue], [maphong], [tenphong], [tennhanvien], [maNV], [giaPhong], [tenKH], [tuoi], [sdt], [soCMND], [ngaythue], [soNgaythue]) VALUES (5, 1, N'P01', N'Trần Quang Trường', NULL, 500000.0000, N'kakaka', 19, N'1234123412', N'123412341234', CAST(N'2019-02-09' AS Date), NULL)
SET IDENTITY_INSERT [dbo].[phieuthue] OFF
SET IDENTITY_INSERT [dbo].[phong] ON 

INSERT [dbo].[phong] ([maphong], [tenphong], [dientich], [gia], [trangthai], [ghichu]) VALUES (1, N'P01', 25, 500000.0000, N'khong', NULL)
INSERT [dbo].[phong] ([maphong], [tenphong], [dientich], [gia], [trangthai], [ghichu]) VALUES (2, N'P02', 25, 500000.0000, N'dangthue', NULL)
INSERT [dbo].[phong] ([maphong], [tenphong], [dientich], [gia], [trangthai], [ghichu]) VALUES (3, N'P03', 25, 500000.0000, N'khong', NULL)
INSERT [dbo].[phong] ([maphong], [tenphong], [dientich], [gia], [trangthai], [ghichu]) VALUES (4, N'P04', 25, 500000.0000, N'khong', NULL)
INSERT [dbo].[phong] ([maphong], [tenphong], [dientich], [gia], [trangthai], [ghichu]) VALUES (5, N'P05', 25, 500000.0000, N'khong', NULL)
INSERT [dbo].[phong] ([maphong], [tenphong], [dientich], [gia], [trangthai], [ghichu]) VALUES (6, N'P06', 25, 500000.0000, N'dangthue', NULL)
SET IDENTITY_INSERT [dbo].[phong] OFF
SET IDENTITY_INSERT [dbo].[user] ON 

INSERT [dbo].[user] ([mauser], [tenuser], [password], [ngaylap], [ghichu], [role], [hovaten], [email]) VALUES (1, N'admin', N'admin', CAST(N'2019-08-21' AS Date), NULL, N'quanly', N'Trần Quang Trường', N'truong@gmail.com')
INSERT [dbo].[user] ([mauser], [tenuser], [password], [ngaylap], [ghichu], [role], [hovaten], [email]) VALUES (2, N'admin2', N'admin', CAST(N'2019-08-21' AS Date), NULL, N'nhanvien', N'TRần QUaNG Trường', N'truong2@gmail.com')
INSERT [dbo].[user] ([mauser], [tenuser], [password], [ngaylap], [ghichu], [role], [hovaten], [email]) VALUES (3, N'admin3', N'admin', CAST(N'2019-08-21' AS Date), NULL, N'none', N'trường đẹp trai', N'truong3@gmail.com')
INSERT [dbo].[user] ([mauser], [tenuser], [password], [ngaylap], [ghichu], [role], [hovaten], [email]) VALUES (4, N'admi', N'123456', CAST(N'2019-08-21' AS Date), NULL, N'none', N'trường quang', N'truong4@gmail.com')
SET IDENTITY_INSERT [dbo].[user] OFF
USE [master]
GO
ALTER DATABASE [QL_khachsan] SET  READ_WRITE 
GO
