USE [BanOto]
GO
/****** Object:  Table [dbo].[ChiTietAnhSanPham]    Script Date: 4/2/2023 6:06:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietAnhSanPham](
	[MaAnhChitiet] [int] IDENTITY(1,1) NOT NULL,
	[MaSanPham] [int] NULL,
	[Anh] [varchar](500) NULL,
 CONSTRAINT [PK_ChiTietAnhSanPham] PRIMARY KEY CLUSTERED 
(
	[MaAnhChitiet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 4/2/2023 6:06:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[MaChiTietDonHang] [int] IDENTITY(1,1) NOT NULL,
	[MaDonHang] [int] NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[GiaMua] [float] NOT NULL,
 CONSTRAINT [PK_ChiTietDonHang] PRIMARY KEY CLUSTERED 
(
	[MaChiTietDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHoaDonNhap]    Script Date: 4/2/2023 6:06:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDonNhap](
	[MaChiTiet] [int] NOT NULL,
	[MaSanPham] [int] NULL,
	[MaHoaDonNhap] [int] NULL,
	[SoLuong] [int] NULL,
	[DonGiaNhap] [float] NULL,
 CONSTRAINT [PK_ChiTietHoaDonNhap] PRIMARY KEY CLUSTERED 
(
	[MaChiTiet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHoaDonXuat]    Script Date: 4/2/2023 6:06:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDonXuat](
	[MaChiTietHoaDonXuat] [int] NOT NULL,
	[MaHoaDonXuat] [int] NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[GiaBan] [float] NOT NULL,
	[ChietKhau] [float] NULL,
	[TraLai] [int] NULL,
 CONSTRAINT [PK_ChiTietHoaDonXuat] PRIMARY KEY CLUSTERED 
(
	[MaChiTietHoaDonXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietKho]    Script Date: 4/2/2023 6:06:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietKho](
	[MaChiTietKho] [int] IDENTITY(1,1) NOT NULL,
	[MaKho] [int] NULL,
	[MaSanPham] [int] NULL,
	[SoLuong] [int] NULL,
	[KhayKhe] [nvarchar](1500) NULL,
 CONSTRAINT [PK_ChiTietKho] PRIMARY KEY CLUSTERED 
(
	[MaChiTietKho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietKhuyenMai]    Script Date: 4/2/2023 6:06:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietKhuyenMai](
	[MaChiTietKhuyenMai] [int] NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[NgayBatDau] [datetime] NOT NULL,
	[NgayKetThuc] [datetime] NOT NULL,
	[MaKhuyenMai] [int] NOT NULL,
	[TrangThai] [bit] NOT NULL,
 CONSTRAINT [PK_ChiTietKhuyenMai] PRIMARY KEY CLUSTERED 
(
	[MaChiTietKhuyenMai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietKiemKho]    Script Date: 4/2/2023 6:06:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietKiemKho](
	[MaChiTietKiemKho] [int] IDENTITY(1,1) NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[MaKiemKho] [int] NOT NULL,
	[SoLuongDemDuoc] [int] NULL,
	[SoLuongTinhToan] [int] NULL,
	[SoLuongThayDoi] [int] NULL,
 CONSTRAINT [PK_ChiTietKiemKho] PRIMARY KEY CLUSTERED 
(
	[MaChiTietKiemKho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietNhom]    Script Date: 4/2/2023 6:06:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietNhom](
	[MaChiTietNhom] [int] IDENTITY(1,1) NOT NULL,
	[MaNhomSanPham] [int] NOT NULL,
	[MaSanPham] [int] NOT NULL,
 CONSTRAINT [PK_ChiTietNhom] PRIMARY KEY CLUSTERED 
(
	[MaChiTietNhom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 4/2/2023 6:06:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[MaDanhMuc] [int] IDENTITY(1,1) NOT NULL,
	[MaDanhMucCha] [int] NULL,
	[TenDanhMuc] [nvarchar](250) NOT NULL,
	[STT] [int] NULL,
	[TrangThai] [bit] NOT NULL,
 CONSTRAINT [PK_DanhMuc] PRIMARY KEY CLUSTERED 
(
	[MaDanhMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 4/2/2023 6:06:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDonHang] [int] IDENTITY(1,1) NOT NULL,
	[MaKhachHang] [int] NULL,
	[NgayDat] [datetime] NULL,
	[TrangThaiDonHang] [int] NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonViTinh]    Script Date: 4/2/2023 6:06:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonViTinh](
	[MaDonViTinh] [int] IDENTITY(1,1) NOT NULL,
	[TenDonViTinh] [nvarchar](100) NULL,
 CONSTRAINT [PK_DonViTinh] PRIMARY KEY CLUSTERED 
(
	[MaDonViTinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiamGia]    Script Date: 4/2/2023 6:06:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiamGia](
	[MaGiamGia] [int] NOT NULL,
	[MaSanPham] [int] NULL,
	[PhanTram] [float] NULL,
	[ThoiGianBatDau] [datetime] NULL,
	[ThoiGianKetThuc] [datetime] NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_GiamGia] PRIMARY KEY CLUSTERED 
(
	[MaGiamGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiaSanPham]    Script Date: 4/2/2023 6:06:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaSanPham](
	[MaGiaSanPham] [int] IDENTITY(1,1) NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[NgayBatDau] [datetime] NOT NULL,
	[NgayKetThuc] [datetime] NULL,
	[Gia] [float] NULL,
 CONSTRAINT [PK_GiaSanPham_1] PRIMARY KEY CLUSTERED 
(
	[MaGiaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonNhap]    Script Date: 4/2/2023 6:06:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonNhap](
	[MaHoaDonNhap] [int] NOT NULL,
	[SoHoaDon] [nchar](50) NOT NULL,
	[NgayNhap] [datetime] NOT NULL,
	[MaNguoiDung] [int] NOT NULL,
	[MaNhaCungCap] [int] NOT NULL,
 CONSTRAINT [PK_HoaDonNhap] PRIMARY KEY CLUSTERED 
(
	[MaHoaDonNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonXuat]    Script Date: 4/2/2023 6:06:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonXuat](
	[MaHoaDonXuat] [int] NOT NULL,
	[SoHoaDon] [nchar](50) NULL,
	[NgayXuat] [datetime] NULL,
	[MaKhachHang] [int] NULL,
	[MaNguoiDung] [int] NULL,
 CONSTRAINT [PK_HoaDonXuat] PRIMARY KEY CLUSTERED 
(
	[MaHoaDonXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 4/2/2023 6:06:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKhachHang] [int] IDENTITY(1,1) NOT NULL,
	[TenKhachHang] [nvarchar](250) NOT NULL,
	[DiaChi] [nvarchar](1500) NULL,
	[SoDienThoai] [varchar](20) NOT NULL,
	[Email] [varchar](50) NULL,
	[MatKhau] [varchar](50) NOT NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kho]    Script Date: 4/2/2023 6:06:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kho](
	[MaKho] [int] IDENTITY(1,1) NOT NULL,
	[TenKho] [nvarchar](250) NOT NULL,
	[DiaChi] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_Kho] PRIMARY KEY CLUSTERED 
(
	[MaKho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhuyenMai]    Script Date: 4/2/2023 6:06:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuyenMai](
	[MaKhuyenMai] [int] NOT NULL,
	[TenKhuyenMai] [nvarchar](250) NULL,
	[MoTa] [ntext] NULL,
 CONSTRAINT [PK_KhuyenMai] PRIMARY KEY CLUSTERED 
(
	[MaKhuyenMai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KiemKho]    Script Date: 4/2/2023 6:06:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KiemKho](
	[MaKiemKho] [int] IDENTITY(1,1) NOT NULL,
	[MaNguoiDung] [int] NULL,
	[ThoiGianBatDau] [datetime] NULL,
	[ThoiGianKetThuc] [datetime] NULL,
	[TrangThaiKho] [int] NULL,
	[MaKho] [int] NULL,
	[MoTa] [ntext] NULL,
 CONSTRAINT [PK_KiemKho] PRIMARY KEY CLUSTERED 
(
	[MaKiemKho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichSuGiaBan]    Script Date: 4/2/2023 6:06:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichSuGiaBan](
	[MaGiaBan] [int] IDENTITY(1,1) NOT NULL,
	[MaSanPham] [int] NULL,
	[NgayBatDau] [datetime] NULL,
	[NgayKetThuc] [datetime] NULL,
	[Gia] [float] NULL,
 CONSTRAINT [PK_LichSuGiaBan] PRIMARY KEY CLUSTERED 
(
	[MaGiaBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 4/2/2023 6:06:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[MaMenu] [int] NOT NULL,
	[TenMenu] [nvarchar](250) NOT NULL,
	[TrangThai] [bit] NOT NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[MaMenu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 4/2/2023 6:06:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[MaNguoiDung] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](250) NULL,
	[NgaySinh] [datetime] NULL,
	[GioiTinh] [nvarchar](20) NULL,
	[AnhDaiDien] [varchar](500) NULL,
	[DiaChi] [nvarchar](1500) NULL,
	[Email] [nvarchar](100) NULL,
	[DienThoai] [char](20) NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[MaNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 4/2/2023 6:06:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNhaCungCap] [int] IDENTITY(1,1) NOT NULL,
	[TenNhaCungCap] [nvarchar](250) NULL,
	[DiaChi] [nvarchar](500) NULL,
	[SoDienThoai] [char](20) NULL,
	[Email] [char](50) NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNhaCungCap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 4/2/2023 6:06:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNhaSanXuat] [int] IDENTITY(1,1) NOT NULL,
	[TenNhaSanXuat] [nvarchar](250) NOT NULL,
	[MoTa] [ntext] NULL,
 CONSTRAINT [PK_NhaSanXuat] PRIMARY KEY CLUSTERED 
(
	[MaNhaSanXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhomSanPham]    Script Date: 4/2/2023 6:06:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhomSanPham](
	[MaNhomSanPham] [int] IDENTITY(1,1) NOT NULL,
	[TenNhom] [nvarchar](250) NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_NhomSanPham] PRIMARY KEY CLUSTERED 
(
	[MaNhomSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 4/2/2023 6:06:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [int] IDENTITY(1,1) NOT NULL,
	[MaDanhMuc] [int] NOT NULL,
	[TenSanPham] [nvarchar](250) NOT NULL,
	[MoTaSanPham] [ntext] NOT NULL,
	[AnhDaiDien] [varchar](500) NOT NULL,
	[MaNhaSanXuat] [int] NOT NULL,
	[MaDonViTinh] [int] NOT NULL,
	[NgayTao] [datetime] NOT NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Silde]    Script Date: 4/2/2023 6:06:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Silde](
	[MaSilde] [int] IDENTITY(1,1) NOT NULL,
	[Anh] [varchar](250) NULL,
	[Link] [varchar](250) NULL,
 CONSTRAINT [PK_Silde] PRIMARY KEY CLUSTERED 
(
	[MaSilde] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 4/2/2023 6:06:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[MaTaiKhoan] [int] IDENTITY(1,1) NOT NULL,
	[MaNguoiDung] [int] NULL,
	[TaiKhoan] [varchar](100) NULL,
	[MatKhau] [varchar](100) NULL,
	[NgayBatDau] [datetime] NULL,
	[NgayKetThuc] [datetime] NULL,
	[TrangThai] [bit] NULL,
	[LoaiQuyet] [varchar](10) NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[MaTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongSoKyThuat]    Script Date: 4/2/2023 6:06:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongSoKyThuat](
	[MaThongSo] [int] NOT NULL,
	[MaSanPham] [int] NULL,
	[TenThongSo] [nvarchar](150) NULL,
	[MoTa] [nvarchar](500) NULL,
 CONSTRAINT [PK_ThongSoKyThuat] PRIMARY KEY CLUSTERED 
(
	[MaThongSo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChiTietAnhSanPham] ON 

INSERT [dbo].[ChiTietAnhSanPham] ([MaAnhChitiet], [MaSanPham], [Anh]) VALUES (1, 4, N'assets\img\LAPTOP\Acer_Swift_3_SF313-53-518Y.png')
INSERT [dbo].[ChiTietAnhSanPham] ([MaAnhChitiet], [MaSanPham], [Anh]) VALUES (2, 4, N'assets\img\LAPTOP\Asus_D409DA-EK152T.jpeg')
INSERT [dbo].[ChiTietAnhSanPham] ([MaAnhChitiet], [MaSanPham], [Anh]) VALUES (3, 4, N'assets\img\LAPTOP\Laptop_ASUS_ZenBook_UX325EA_EG079T.jpg')
SET IDENTITY_INSERT [dbo].[ChiTietAnhSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[ChiTietDonHang] ON 

INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaMua]) VALUES (17, 5, 67, 1, 2628)
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaMua]) VALUES (18, 5, 68, 1, 9995)
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaMua]) VALUES (19, 6, 13, 2, 8756456)
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaMua]) VALUES (20, 7, 14, 5, 13563737)
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaMua]) VALUES (21, 8, 23, 7, 2353466697)
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaMua]) VALUES (22, 9, 54, 14, 1200000000)
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaMua]) VALUES (23, 17, 50, 1, 285100000)
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaMua]) VALUES (24, 17, 63, 1, 444000000)
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaMua]) VALUES (25, 17, 11, 1, 273300000)
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaMua]) VALUES (26, 18, 50, 1, 285100000)
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaMua]) VALUES (27, 18, 63, 1, 444000000)
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaMua]) VALUES (28, 18, 11, 1, 273300000)
SET IDENTITY_INSERT [dbo].[ChiTietDonHang] OFF
GO
INSERT [dbo].[ChiTietHoaDonXuat] ([MaChiTietHoaDonXuat], [MaHoaDonXuat], [MaSanPham], [SoLuong], [GiaBan], [ChietKhau], [TraLai]) VALUES (1, 1, 4, 1, 5000000, 0, 0)
INSERT [dbo].[ChiTietHoaDonXuat] ([MaChiTietHoaDonXuat], [MaHoaDonXuat], [MaSanPham], [SoLuong], [GiaBan], [ChietKhau], [TraLai]) VALUES (2, 2, 10, 2, 10000000, 0, 0)
INSERT [dbo].[ChiTietHoaDonXuat] ([MaChiTietHoaDonXuat], [MaHoaDonXuat], [MaSanPham], [SoLuong], [GiaBan], [ChietKhau], [TraLai]) VALUES (3, 3, 11, 6, 90000000, 0, 0)
INSERT [dbo].[ChiTietHoaDonXuat] ([MaChiTietHoaDonXuat], [MaHoaDonXuat], [MaSanPham], [SoLuong], [GiaBan], [ChietKhau], [TraLai]) VALUES (4, 4, 12, 2, 40000000, 0, 0)
INSERT [dbo].[ChiTietHoaDonXuat] ([MaChiTietHoaDonXuat], [MaHoaDonXuat], [MaSanPham], [SoLuong], [GiaBan], [ChietKhau], [TraLai]) VALUES (5, 5, 15, 1, 700000, 0, 0)
INSERT [dbo].[ChiTietHoaDonXuat] ([MaChiTietHoaDonXuat], [MaHoaDonXuat], [MaSanPham], [SoLuong], [GiaBan], [ChietKhau], [TraLai]) VALUES (6, 6, 13, 2, 4000000, 0, 0)
GO
SET IDENTITY_INSERT [dbo].[ChiTietKho] ON 

INSERT [dbo].[ChiTietKho] ([MaChiTietKho], [MaKho], [MaSanPham], [SoLuong], [KhayKhe]) VALUES (1, 1, 4, 1000, NULL)
INSERT [dbo].[ChiTietKho] ([MaChiTietKho], [MaKho], [MaSanPham], [SoLuong], [KhayKhe]) VALUES (3, 1, 7, 890, NULL)
INSERT [dbo].[ChiTietKho] ([MaChiTietKho], [MaKho], [MaSanPham], [SoLuong], [KhayKhe]) VALUES (4, 1, 8, 500, NULL)
INSERT [dbo].[ChiTietKho] ([MaChiTietKho], [MaKho], [MaSanPham], [SoLuong], [KhayKhe]) VALUES (5, 2, 10, 350, NULL)
INSERT [dbo].[ChiTietKho] ([MaChiTietKho], [MaKho], [MaSanPham], [SoLuong], [KhayKhe]) VALUES (6, 2, 11, 350, NULL)
INSERT [dbo].[ChiTietKho] ([MaChiTietKho], [MaKho], [MaSanPham], [SoLuong], [KhayKhe]) VALUES (7, 2, 12, 350, NULL)
INSERT [dbo].[ChiTietKho] ([MaChiTietKho], [MaKho], [MaSanPham], [SoLuong], [KhayKhe]) VALUES (8, 2, 13, 350, NULL)
INSERT [dbo].[ChiTietKho] ([MaChiTietKho], [MaKho], [MaSanPham], [SoLuong], [KhayKhe]) VALUES (9, 3, 20, 100, NULL)
INSERT [dbo].[ChiTietKho] ([MaChiTietKho], [MaKho], [MaSanPham], [SoLuong], [KhayKhe]) VALUES (10, 3, 21, 100, NULL)
INSERT [dbo].[ChiTietKho] ([MaChiTietKho], [MaKho], [MaSanPham], [SoLuong], [KhayKhe]) VALUES (11, 3, 22, 100, NULL)
INSERT [dbo].[ChiTietKho] ([MaChiTietKho], [MaKho], [MaSanPham], [SoLuong], [KhayKhe]) VALUES (12, 3, 23, 100, NULL)
INSERT [dbo].[ChiTietKho] ([MaChiTietKho], [MaKho], [MaSanPham], [SoLuong], [KhayKhe]) VALUES (13, 4, 30, 50, NULL)
INSERT [dbo].[ChiTietKho] ([MaChiTietKho], [MaKho], [MaSanPham], [SoLuong], [KhayKhe]) VALUES (14, 4, 31, 50, NULL)
INSERT [dbo].[ChiTietKho] ([MaChiTietKho], [MaKho], [MaSanPham], [SoLuong], [KhayKhe]) VALUES (15, 4, 32, 50, NULL)
INSERT [dbo].[ChiTietKho] ([MaChiTietKho], [MaKho], [MaSanPham], [SoLuong], [KhayKhe]) VALUES (16, 4, 33, 50, NULL)
INSERT [dbo].[ChiTietKho] ([MaChiTietKho], [MaKho], [MaSanPham], [SoLuong], [KhayKhe]) VALUES (17, 4, 34, 50, NULL)
INSERT [dbo].[ChiTietKho] ([MaChiTietKho], [MaKho], [MaSanPham], [SoLuong], [KhayKhe]) VALUES (18, 7, 45, 30, N'')
INSERT [dbo].[ChiTietKho] ([MaChiTietKho], [MaKho], [MaSanPham], [SoLuong], [KhayKhe]) VALUES (19, 2, 68, 10, NULL)
INSERT [dbo].[ChiTietKho] ([MaChiTietKho], [MaKho], [MaSanPham], [SoLuong], [KhayKhe]) VALUES (22, 3, 67, 10, NULL)
INSERT [dbo].[ChiTietKho] ([MaChiTietKho], [MaKho], [MaSanPham], [SoLuong], [KhayKhe]) VALUES (23, 4, 66, 10, NULL)
INSERT [dbo].[ChiTietKho] ([MaChiTietKho], [MaKho], [MaSanPham], [SoLuong], [KhayKhe]) VALUES (24, 5, 65, 10, NULL)
SET IDENTITY_INSERT [dbo].[ChiTietKho] OFF
GO
SET IDENTITY_INSERT [dbo].[ChiTietNhom] ON 

INSERT [dbo].[ChiTietNhom] ([MaChiTietNhom], [MaNhomSanPham], [MaSanPham]) VALUES (2, 1, 4)
INSERT [dbo].[ChiTietNhom] ([MaChiTietNhom], [MaNhomSanPham], [MaSanPham]) VALUES (3, 1, 5)
INSERT [dbo].[ChiTietNhom] ([MaChiTietNhom], [MaNhomSanPham], [MaSanPham]) VALUES (5, 1, 7)
INSERT [dbo].[ChiTietNhom] ([MaChiTietNhom], [MaNhomSanPham], [MaSanPham]) VALUES (6, 2, 13)
INSERT [dbo].[ChiTietNhom] ([MaChiTietNhom], [MaNhomSanPham], [MaSanPham]) VALUES (8, 2, 14)
INSERT [dbo].[ChiTietNhom] ([MaChiTietNhom], [MaNhomSanPham], [MaSanPham]) VALUES (9, 2, 8)
INSERT [dbo].[ChiTietNhom] ([MaChiTietNhom], [MaNhomSanPham], [MaSanPham]) VALUES (10, 2, 10)
INSERT [dbo].[ChiTietNhom] ([MaChiTietNhom], [MaNhomSanPham], [MaSanPham]) VALUES (11, 1, 11)
INSERT [dbo].[ChiTietNhom] ([MaChiTietNhom], [MaNhomSanPham], [MaSanPham]) VALUES (12, 1, 12)
INSERT [dbo].[ChiTietNhom] ([MaChiTietNhom], [MaNhomSanPham], [MaSanPham]) VALUES (13, 2, 15)
INSERT [dbo].[ChiTietNhom] ([MaChiTietNhom], [MaNhomSanPham], [MaSanPham]) VALUES (14, 2, 16)
INSERT [dbo].[ChiTietNhom] ([MaChiTietNhom], [MaNhomSanPham], [MaSanPham]) VALUES (15, 2, 17)
INSERT [dbo].[ChiTietNhom] ([MaChiTietNhom], [MaNhomSanPham], [MaSanPham]) VALUES (16, 2, 18)
INSERT [dbo].[ChiTietNhom] ([MaChiTietNhom], [MaNhomSanPham], [MaSanPham]) VALUES (17, 2, 19)
INSERT [dbo].[ChiTietNhom] ([MaChiTietNhom], [MaNhomSanPham], [MaSanPham]) VALUES (18, 2, 20)
INSERT [dbo].[ChiTietNhom] ([MaChiTietNhom], [MaNhomSanPham], [MaSanPham]) VALUES (19, 2, 21)
SET IDENTITY_INSERT [dbo].[ChiTietNhom] OFF
GO
SET IDENTITY_INSERT [dbo].[DanhMuc] ON 

INSERT [dbo].[DanhMuc] ([MaDanhMuc], [MaDanhMucCha], [TenDanhMuc], [STT], [TrangThai]) VALUES (1, NULL, N'Mercedes', 1, 1)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [MaDanhMucCha], [TenDanhMuc], [STT], [TrangThai]) VALUES (2, NULL, N'BMW', 2, 1)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [MaDanhMucCha], [TenDanhMuc], [STT], [TrangThai]) VALUES (3, NULL, N'MG', 3, 1)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [MaDanhMucCha], [TenDanhMuc], [STT], [TrangThai]) VALUES (4, NULL, N'Toyota', 4, 1)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [MaDanhMucCha], [TenDanhMuc], [STT], [TrangThai]) VALUES (5, NULL, N'Hyundai', 5, 1)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [MaDanhMucCha], [TenDanhMuc], [STT], [TrangThai]) VALUES (6, NULL, N'Mazda', 6, 1)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [MaDanhMucCha], [TenDanhMuc], [STT], [TrangThai]) VALUES (7, NULL, N'Kia', 7, 1)
SET IDENTITY_INSERT [dbo].[DanhMuc] OFF
GO
SET IDENTITY_INSERT [dbo].[DonHang] ON 

INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayDat], [TrangThaiDonHang]) VALUES (5, 11, CAST(N'2022-11-24T08:56:34.017' AS DateTime), 1)
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayDat], [TrangThaiDonHang]) VALUES (6, 15, CAST(N'2023-01-13T09:40:53.543' AS DateTime), 1)
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayDat], [TrangThaiDonHang]) VALUES (7, 18, CAST(N'2023-01-13T09:50:25.127' AS DateTime), 1)
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayDat], [TrangThaiDonHang]) VALUES (8, 19, CAST(N'2023-01-13T09:59:07.013' AS DateTime), 1)
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayDat], [TrangThaiDonHang]) VALUES (9, 20, CAST(N'2023-01-13T10:02:32.457' AS DateTime), 1)
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayDat], [TrangThaiDonHang]) VALUES (10, 21, CAST(N'2023-01-13T10:06:36.530' AS DateTime), 1)
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayDat], [TrangThaiDonHang]) VALUES (11, 22, CAST(N'2023-01-13T10:11:10.400' AS DateTime), 1)
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayDat], [TrangThaiDonHang]) VALUES (12, 23, CAST(N'2023-01-13T13:23:46.610' AS DateTime), 1)
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayDat], [TrangThaiDonHang]) VALUES (13, 24, CAST(N'2023-01-13T13:30:24.463' AS DateTime), 1)
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayDat], [TrangThaiDonHang]) VALUES (14, 26, CAST(N'2023-01-13T13:48:28.483' AS DateTime), 1)
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayDat], [TrangThaiDonHang]) VALUES (15, 27, CAST(N'2023-01-13T14:49:47.870' AS DateTime), 1)
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayDat], [TrangThaiDonHang]) VALUES (16, 27, CAST(N'2023-01-13T14:52:51.893' AS DateTime), 1)
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayDat], [TrangThaiDonHang]) VALUES (17, 30, CAST(N'2023-04-01T00:38:50.290' AS DateTime), 1)
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayDat], [TrangThaiDonHang]) VALUES (18, 31, CAST(N'2023-04-01T00:44:34.217' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[DonHang] OFF
GO
SET IDENTITY_INSERT [dbo].[DonViTinh] ON 

INSERT [dbo].[DonViTinh] ([MaDonViTinh], [TenDonViTinh]) VALUES (1, N'Cái')
INSERT [dbo].[DonViTinh] ([MaDonViTinh], [TenDonViTinh]) VALUES (2, N'Chiếc')
INSERT [dbo].[DonViTinh] ([MaDonViTinh], [TenDonViTinh]) VALUES (3, N'Lô')
SET IDENTITY_INSERT [dbo].[DonViTinh] OFF
GO
SET IDENTITY_INSERT [dbo].[GiaSanPham] ON 

INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (64, 4, CAST(N'2022-08-10T04:49:58.000' AS DateTime), CAST(N'2023-08-10T04:49:58.000' AS DateTime), 565000000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (65, 5, CAST(N'2022-08-10T04:49:58.000' AS DateTime), CAST(N'2023-08-10T04:49:58.000' AS DateTime), 348000000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (66, 7, CAST(N'2022-08-10T04:49:58.003' AS DateTime), CAST(N'2023-08-10T04:49:58.003' AS DateTime), 345000000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (67, 8, CAST(N'2022-08-10T04:49:58.003' AS DateTime), CAST(N'2023-08-10T04:49:58.003' AS DateTime), 334400000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (68, 10, CAST(N'2022-08-10T04:49:58.003' AS DateTime), CAST(N'2023-08-10T04:49:58.003' AS DateTime), 391100000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (69, 11, CAST(N'2022-08-10T04:49:58.007' AS DateTime), CAST(N'2023-08-10T04:49:58.007' AS DateTime), 273300000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (70, 12, CAST(N'2022-08-10T04:49:58.007' AS DateTime), CAST(N'2023-08-10T04:49:58.007' AS DateTime), 371400000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (71, 13, CAST(N'2022-08-10T04:49:58.007' AS DateTime), CAST(N'2023-08-10T04:49:58.007' AS DateTime), 477400000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (72, 14, CAST(N'2022-08-10T04:49:58.007' AS DateTime), CAST(N'2023-08-10T04:49:58.007' AS DateTime), 844100000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (73, 15, CAST(N'2022-08-10T04:49:58.010' AS DateTime), CAST(N'2023-08-10T04:49:58.010' AS DateTime), 448400000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (74, 16, CAST(N'2022-08-10T04:49:58.010' AS DateTime), CAST(N'2023-08-10T04:49:58.010' AS DateTime), 749300000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (75, 17, CAST(N'2022-08-10T04:49:58.010' AS DateTime), CAST(N'2023-08-10T04:49:58.010' AS DateTime), 585600000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (76, 18, CAST(N'2022-08-10T04:49:58.013' AS DateTime), CAST(N'2023-08-10T04:49:58.013' AS DateTime), 288800000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (77, 19, CAST(N'2022-08-10T04:49:58.013' AS DateTime), CAST(N'2023-08-10T04:49:58.013' AS DateTime), 174400000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (78, 20, CAST(N'2022-08-10T04:49:58.013' AS DateTime), CAST(N'2023-08-10T04:49:58.013' AS DateTime), 187500000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (79, 21, CAST(N'2022-08-10T04:49:58.017' AS DateTime), CAST(N'2023-08-10T04:49:58.017' AS DateTime), 821800000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (80, 22, CAST(N'2022-08-10T04:49:58.017' AS DateTime), CAST(N'2023-08-10T04:49:58.017' AS DateTime), 255100000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (81, 23, CAST(N'2022-08-10T04:49:58.017' AS DateTime), CAST(N'2023-08-10T04:49:58.017' AS DateTime), 892400000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (82, 24, CAST(N'2022-08-10T04:49:58.017' AS DateTime), CAST(N'2023-08-10T04:49:58.017' AS DateTime), 633500000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (83, 25, CAST(N'2022-08-10T04:49:58.020' AS DateTime), CAST(N'2023-08-10T04:49:58.020' AS DateTime), 982000000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (84, 26, CAST(N'2022-08-10T04:49:58.020' AS DateTime), CAST(N'2023-08-10T04:49:58.020' AS DateTime), 919200000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (85, 27, CAST(N'2022-08-10T04:49:58.020' AS DateTime), CAST(N'2023-08-10T04:49:58.020' AS DateTime), 373500000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (86, 28, CAST(N'2022-08-10T04:49:58.023' AS DateTime), CAST(N'2023-08-10T04:49:58.023' AS DateTime), 131600000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (87, 29, CAST(N'2022-08-10T04:49:58.023' AS DateTime), CAST(N'2023-08-10T04:49:58.023' AS DateTime), 364700000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (88, 30, CAST(N'2022-08-10T04:49:58.023' AS DateTime), CAST(N'2023-08-10T04:49:58.023' AS DateTime), 310100000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (89, 31, CAST(N'2022-08-10T04:49:58.027' AS DateTime), CAST(N'2023-08-10T04:49:58.027' AS DateTime), 323700000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (90, 32, CAST(N'2022-08-10T04:49:58.027' AS DateTime), CAST(N'2023-08-10T04:49:58.027' AS DateTime), 684400000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (91, 33, CAST(N'2022-08-10T04:49:58.027' AS DateTime), CAST(N'2023-08-10T04:49:58.027' AS DateTime), 943300000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (92, 34, CAST(N'2022-08-10T04:49:58.027' AS DateTime), CAST(N'2023-08-10T04:49:58.027' AS DateTime), 172800000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (93, 35, CAST(N'2022-08-10T04:49:58.030' AS DateTime), CAST(N'2023-08-10T04:49:58.030' AS DateTime), 726900000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (94, 36, CAST(N'2022-08-10T04:49:58.030' AS DateTime), CAST(N'2023-08-10T04:49:58.030' AS DateTime), 225900000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (95, 37, CAST(N'2022-08-10T04:49:58.030' AS DateTime), CAST(N'2023-08-10T04:49:58.030' AS DateTime), 553000000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (96, 38, CAST(N'2022-08-10T04:49:58.033' AS DateTime), CAST(N'2023-08-10T04:49:58.033' AS DateTime), 309900000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (97, 39, CAST(N'2022-08-10T04:49:58.033' AS DateTime), CAST(N'2023-08-10T04:49:58.033' AS DateTime), 817000000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (98, 40, CAST(N'2022-08-10T04:49:58.033' AS DateTime), CAST(N'2023-08-10T04:49:58.033' AS DateTime), 983400000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (99, 41, CAST(N'2022-08-10T04:49:58.037' AS DateTime), CAST(N'2023-08-10T04:49:58.037' AS DateTime), 563700000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (100, 42, CAST(N'2022-08-10T04:49:58.037' AS DateTime), CAST(N'2023-08-10T04:49:58.037' AS DateTime), 895000000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (101, 43, CAST(N'2022-08-10T04:49:58.037' AS DateTime), CAST(N'2023-08-10T04:49:58.037' AS DateTime), 609100000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (102, 44, CAST(N'2022-08-10T04:49:58.037' AS DateTime), CAST(N'2023-08-10T04:49:58.037' AS DateTime), 253800000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (103, 45, CAST(N'2022-08-10T04:49:58.040' AS DateTime), CAST(N'2023-08-10T04:49:58.040' AS DateTime), 791000000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (104, 46, CAST(N'2022-08-10T04:49:58.040' AS DateTime), CAST(N'2023-08-10T04:49:58.040' AS DateTime), 974300000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (105, 47, CAST(N'2022-08-10T04:49:58.040' AS DateTime), CAST(N'2023-08-10T04:49:58.040' AS DateTime), 475800000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (106, 48, CAST(N'2022-08-10T04:49:58.043' AS DateTime), CAST(N'2023-08-10T04:49:58.043' AS DateTime), 120300000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (107, 49, CAST(N'2022-08-10T04:49:58.043' AS DateTime), CAST(N'2023-08-10T04:49:58.043' AS DateTime), 112400000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (108, 50, CAST(N'2022-08-10T04:49:58.043' AS DateTime), CAST(N'2023-08-10T04:49:58.043' AS DateTime), 285100000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (109, 51, CAST(N'2022-08-10T04:49:58.047' AS DateTime), CAST(N'2023-08-10T04:49:58.047' AS DateTime), 335000000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (110, 52, CAST(N'2022-08-10T04:49:58.047' AS DateTime), CAST(N'2023-08-10T04:49:58.047' AS DateTime), 722800000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (111, 53, CAST(N'2022-08-10T04:49:58.047' AS DateTime), CAST(N'2023-08-10T04:49:58.047' AS DateTime), 707500000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (112, 54, CAST(N'2022-08-10T04:49:58.047' AS DateTime), CAST(N'2023-08-10T04:49:58.047' AS DateTime), 485600000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (113, 55, CAST(N'2022-08-10T04:49:58.050' AS DateTime), CAST(N'2023-08-10T04:49:58.050' AS DateTime), 641500000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (114, 56, CAST(N'2022-08-10T04:49:58.050' AS DateTime), CAST(N'2023-08-10T04:49:58.050' AS DateTime), 172600000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (115, 57, CAST(N'2022-08-10T04:49:58.050' AS DateTime), CAST(N'2023-08-10T04:49:58.050' AS DateTime), 816100000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (116, 58, CAST(N'2022-08-10T04:49:58.053' AS DateTime), CAST(N'2023-08-10T04:49:58.053' AS DateTime), 663400000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (117, 59, CAST(N'2022-08-10T04:49:58.053' AS DateTime), CAST(N'2023-08-10T04:49:58.053' AS DateTime), 114800000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (118, 60, CAST(N'2022-08-10T04:49:58.053' AS DateTime), CAST(N'2023-08-10T04:49:58.053' AS DateTime), 996000000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (119, 61, CAST(N'2022-08-10T04:49:58.057' AS DateTime), CAST(N'2023-08-10T04:49:58.057' AS DateTime), 385900000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (120, 62, CAST(N'2022-08-10T04:49:58.057' AS DateTime), CAST(N'2023-08-10T04:49:58.057' AS DateTime), 375000000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (121, 63, CAST(N'2022-08-10T04:49:58.057' AS DateTime), CAST(N'2023-08-10T04:49:58.057' AS DateTime), 444000000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (122, 64, CAST(N'2022-08-10T04:49:58.057' AS DateTime), CAST(N'2023-08-10T04:49:58.057' AS DateTime), 954300000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (123, 65, CAST(N'2022-08-10T04:49:58.060' AS DateTime), CAST(N'2023-08-10T04:49:58.060' AS DateTime), 894900000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (124, 66, CAST(N'2022-08-10T04:49:58.060' AS DateTime), CAST(N'2023-08-10T04:49:58.060' AS DateTime), 292300000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (125, 67, CAST(N'2022-08-10T04:49:58.060' AS DateTime), CAST(N'2023-08-10T04:49:58.060' AS DateTime), 262800000)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (126, 68, CAST(N'2022-08-10T04:49:58.063' AS DateTime), CAST(N'2023-08-10T04:49:58.063' AS DateTime), 999500000)
SET IDENTITY_INSERT [dbo].[GiaSanPham] OFF
GO
INSERT [dbo].[HoaDonXuat] ([MaHoaDonXuat], [SoHoaDon], [NgayXuat], [MaKhachHang], [MaNguoiDung]) VALUES (0, NULL, CAST(N'2023-04-01T01:58:36.387' AS DateTime), 33, 11)
INSERT [dbo].[HoaDonXuat] ([MaHoaDonXuat], [SoHoaDon], [NgayXuat], [MaKhachHang], [MaNguoiDung]) VALUES (1, N'1                                                 ', CAST(N'2023-11-01T00:00:00.000' AS DateTime), 12, 11)
INSERT [dbo].[HoaDonXuat] ([MaHoaDonXuat], [SoHoaDon], [NgayXuat], [MaKhachHang], [MaNguoiDung]) VALUES (2, N'2                                                 ', CAST(N'2023-11-01T00:00:00.000' AS DateTime), 12, 11)
INSERT [dbo].[HoaDonXuat] ([MaHoaDonXuat], [SoHoaDon], [NgayXuat], [MaKhachHang], [MaNguoiDung]) VALUES (3, N'3                                                 ', CAST(N'2023-11-01T00:00:00.000' AS DateTime), 11, 1)
INSERT [dbo].[HoaDonXuat] ([MaHoaDonXuat], [SoHoaDon], [NgayXuat], [MaKhachHang], [MaNguoiDung]) VALUES (4, N'4                                                 ', CAST(N'2023-11-01T00:00:00.000' AS DateTime), 11, 1)
INSERT [dbo].[HoaDonXuat] ([MaHoaDonXuat], [SoHoaDon], [NgayXuat], [MaKhachHang], [MaNguoiDung]) VALUES (5, N'5                                                 ', CAST(N'2023-11-01T00:00:00.000' AS DateTime), 12, 11)
INSERT [dbo].[HoaDonXuat] ([MaHoaDonXuat], [SoHoaDon], [NgayXuat], [MaKhachHang], [MaNguoiDung]) VALUES (6, N'6                                                 ', CAST(N'2023-11-01T00:00:00.000' AS DateTime), 11, 1)
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [DiaChi], [SoDienThoai], [Email], [MatKhau]) VALUES (11, N'đông', N'Hưng yên', N'0965543245', N'', N'0965543245')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [DiaChi], [SoDienThoai], [Email], [MatKhau]) VALUES (12, N'Viet', N'HY', N'0978688544', N'hv@gmail.com', N'0978688544')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [DiaChi], [SoDienThoai], [Email], [MatKhau]) VALUES (13, N'viet1', N'hy', N'0978577422', N'hv@gmail.com', N'0978577422')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [DiaChi], [SoDienThoai], [Email], [MatKhau]) VALUES (14, N'viet4', N'HY', N'0987677533', N'hv@gmail.com', N'0987677533')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [DiaChi], [SoDienThoai], [Email], [MatKhau]) VALUES (15, N'viet87', N'hfhfhd', N'0978566433', N'jndjsn@gmail..com', N'0978566433')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [DiaChi], [SoDienThoai], [Email], [MatKhau]) VALUES (17, N'Hoang Viet', N'hy', N'0946375643', N'hv@gmail.com', N'0946375643')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [DiaChi], [SoDienThoai], [Email], [MatKhau]) VALUES (18, N'hv', N'hy', N'0978688544', N'123', N'0978688544')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [DiaChi], [SoDienThoai], [Email], [MatKhau]) VALUES (20, N'dv', N'123', N'0978466322', N'string', N'0978466322')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [DiaChi], [SoDienThoai], [Email], [MatKhau]) VALUES (21, N'hv', N'string', N'0987677533', N'string', N'0987677533')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [DiaChi], [SoDienThoai], [Email], [MatKhau]) VALUES (23, N'tuandat123', N'hy', N'0968574653', N'hah@gmail.com', N'0968574653')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [DiaChi], [SoDienThoai], [Email], [MatKhau]) VALUES (24, N'tuandat1', N'hah', N'0695847574', N'test', N'0695847574')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [DiaChi], [SoDienThoai], [Email], [MatKhau]) VALUES (25, N'test', N'123', N'0956475843', N'123', N'0956475843')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [DiaChi], [SoDienThoai], [Email], [MatKhau]) VALUES (26, N'test2', N'123', N'1234567889', N'123', N'1234567889')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [DiaChi], [SoDienThoai], [Email], [MatKhau]) VALUES (27, N'dat01', N'123sfef', N'04564785434', N'3243@', N'04564785434')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [DiaChi], [SoDienThoai], [Email], [MatKhau]) VALUES (28, N'tuandat123', N'123', N'0123456789', N'0123456789', N'0123456789')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [DiaChi], [SoDienThoai], [Email], [MatKhau]) VALUES (30, N'phan văn tò', N'06 nguyen tuan ba dinh hn', N'0685746345', N'ngtanto1102@gmail.com', N'0685746345')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [DiaChi], [SoDienThoai], [Email], [MatKhau]) VALUES (31, N'haha test', N'ngtanto1102', N'0644545455', N'ngtanto1102@gmail.com', N'0644545455')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [DiaChi], [SoDienThoai], [Email], [MatKhau]) VALUES (33, N'Viet', NULL, N'0978577644', NULL, N'0978577644')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [DiaChi], [SoDienThoai], [Email], [MatKhau]) VALUES (34, N'Viet', NULL, N'0978577644', NULL, N'0978577644')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [DiaChi], [SoDienThoai], [Email], [MatKhau]) VALUES (35, N'VIT', NULL, N'0876545654', NULL, N'0876545654')
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[Kho] ON 

INSERT [dbo].[Kho] ([MaKho], [TenKho], [DiaChi]) VALUES (1, N'Kho 1', N'Hưng Yên')
INSERT [dbo].[Kho] ([MaKho], [TenKho], [DiaChi]) VALUES (2, N'Kho 2', N'Hà Nội')
INSERT [dbo].[Kho] ([MaKho], [TenKho], [DiaChi]) VALUES (3, N'Kho 3', N'Nam Định')
INSERT [dbo].[Kho] ([MaKho], [TenKho], [DiaChi]) VALUES (4, N'Kho 4', N'Đà Nẵng')
INSERT [dbo].[Kho] ([MaKho], [TenKho], [DiaChi]) VALUES (5, N'Kho 5', N'TP HCM')
INSERT [dbo].[Kho] ([MaKho], [TenKho], [DiaChi]) VALUES (7, N'Kho Yên Bái', N'Yên Bái')
SET IDENTITY_INSERT [dbo].[Kho] OFF
GO
SET IDENTITY_INSERT [dbo].[NguoiDung] ON 

INSERT [dbo].[NguoiDung] ([MaNguoiDung], [HoTen], [NgaySinh], [GioiTinh], [AnhDaiDien], [DiaChi], [Email], [DienThoai], [TrangThai]) VALUES (1, N'Nguyễn Văn A', CAST(N'1970-01-01T00:00:00.000' AS DateTime), NULL, N'assets/upload/2.jpg', N'Hưng Yên', N'dongnh@gmail.com', N'0999999999          ', 1)
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [HoTen], [NgaySinh], [GioiTinh], [AnhDaiDien], [DiaChi], [Email], [DienThoai], [TrangThai]) VALUES (2, N'Nguyễn Văn B', NULL, NULL, N'assets/upload/1.jpg', N'Hưng Yên', N'khoi@gmail.com', N'09888888888888      ', 1)
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [HoTen], [NgaySinh], [GioiTinh], [AnhDaiDien], [DiaChi], [Email], [DienThoai], [TrangThai]) VALUES (11, N'Duong Vu Hoang Viet', CAST(N'2001-08-10T00:00:00.000' AS DateTime), N'nam', N'hhee', N'HY', N'viet@123', N'0978577433          ', 1)
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [HoTen], [NgaySinh], [GioiTinh], [AnhDaiDien], [DiaChi], [Email], [DienThoai], [TrangThai]) VALUES (12, N'viet', NULL, NULL, N'assets/upload/user/avatar.jpg', NULL, N'hv@gmail.com', N'0978577422          ', NULL)
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [HoTen], [NgaySinh], [GioiTinh], [AnhDaiDien], [DiaChi], [Email], [DienThoai], [TrangThai]) VALUES (13, N'viet', NULL, NULL, N'assets/upload/user/avatar.jpg', NULL, N'hv@gmail.com', N'0987677533          ', NULL)
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [HoTen], [NgaySinh], [GioiTinh], [AnhDaiDien], [DiaChi], [Email], [DienThoai], [TrangThai]) VALUES (14, N'Tuấn Dát', CAST(N'2023-01-13T03:48:42.423' AS DateTime), N'BD', N'assets/upload/user/avatar.jpg', N'hy', N'123', N'012345678           ', 1)
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [HoTen], [NgaySinh], [GioiTinh], [AnhDaiDien], [DiaChi], [Email], [DienThoai], [TrangThai]) VALUES (16, N'test1', CAST(N'2023-04-01T00:00:00.000' AS DateTime), N'Nam', N'assets/upload/user/avatar.jpg', N'123', N'ngtanto1102@gmail.com', N'0854765654          ', 1)
SET IDENTITY_INSERT [dbo].[NguoiDung] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaCungCap] ON 

INSERT [dbo].[NhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChi], [SoDienThoai], [Email]) VALUES (1, N'Mercedes', N'Hà Nội', N'0321910762          ', N'Mercedes@gmail.com                                ')
SET IDENTITY_INSERT [dbo].[NhaCungCap] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaSanXuat] ON 

INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [MoTa]) VALUES (1, N'Toyota', NULL)
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [MoTa]) VALUES (2, N'Hyundai', NULL)
SET IDENTITY_INSERT [dbo].[NhaSanXuat] OFF
GO
SET IDENTITY_INSERT [dbo].[NhomSanPham] ON 

INSERT [dbo].[NhomSanPham] ([MaNhomSanPham], [TenNhom], [TrangThai]) VALUES (1, N'Ô tô con', 1)
INSERT [dbo].[NhomSanPham] ([MaNhomSanPham], [TenNhom], [TrangThai]) VALUES (2, N'Ô tô bán tải', 1)
SET IDENTITY_INSERT [dbo].[NhomSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (4, 2, N'Ô tô1', N'Mô tả', N'assets/img/_mg_5650_1_(copy)_1679122798.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.000' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (5, 1, N'Ô tô 2', N'Mô tả 2', N'assets/img/_mg_6137_1_(copy)_1679556223.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.000' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (7, 1, N'Ô tô bán tải 1', N'Ô tô bán tải 1', N'assets/img/_mg_6229_1_(copy)_1679884641.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.000' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (8, 1, N'Ô tô bán tải 2', N'MMM', N'assets/img/_mg_6266_1_(copy)_1679887390.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.000' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (10, 6, N'Ô tô 6', N'Mô tả', N'assets/img/_mg_5650_1_(copy)_1679122798.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.000' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (11, 3, N'Ô tô 7', N'Mô tả 2', N'assets/img/_mg_6336_1_(copy)_1680053548.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.000' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (12, 3, N'Ô tô 8', N'Ô tô bán tải 1', N'assets/img/_mg_6137_1_(copy)_1679556223.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.000' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (13, 3, N'Ô tô 9', N'MMM', N'assets/img/_mg_6137_1_(copy)_1679556223.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.000' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (14, 3, N'Ô tô 10', N'Mô tả', N'assets/img/_mg_6229_1_(copy)_1679884641.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.000' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (15, 7, N'Ô tô 11', N'Mô tả', N'assets/img/_mg_6266_1_(copy)_1679887390.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.003' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (16, 2, N'Ô tô 12', N'Mô tả', N'assets/img/_mg_6137_1_(copy)_1679556223.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.003' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (17, 7, N'Ô tô 13', N'Mô tả', N'assets/img/_mg_6336_1_(copy)_1680053548.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.003' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (18, 3, N'Ô tô 14', N'Mô tả', N'assets/img/_mg_5650_1_(copy)_1679122798.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.007' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (19, 2, N'Ô tô 15', N'Mô tả', N'assets/img/_mg_6229_1_(copy)_1679884641.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.007' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (20, 1, N'Ô tô 16', N'Mô tả', N'assets/img/_mg_6266_1_(copy)_1679887390.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.007' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (21, 1, N'Ô tô 17', N'Mô tả', N'assets/img/_mg_6137_1_(copy)_1679556223.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.007' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (22, 1, N'Ô tô 18', N'Mô tả', N'assets/img/_mg_6336_1_(copy)_1680053548.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.010' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (23, 3, N'Ô tô 19', N'Mô tả', N'assets/img/_mg_5650_1_(copy)_1679122798.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.010' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (24, 2, N'Ô tô 20', N'Mô tả', N'assets/img/_mg_6229_1_(copy)_1679884641.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.010' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (25, 4, N'Ô tô 21', N'Mô tả', N'assets/img/_mg_6266_1_(copy)_1679887390.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.013' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (26, 5, N'Ô tô 22', N'Mô tả', N'assets/img/_mg_6137_1_(copy)_1679556223.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.013' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (27, 3, N'Ô tô 23', N'Mô tả', N'assets/img/_mg_6336_1_(copy)_1680053548.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.013' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (28, 4, N'Ô tô 24', N'Mô tả', N'assets/img/_mg_6229_1_(copy)_1679884641.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.017' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (29, 5, N'Ô tô 25', N'Mô tả', N'assets/img/_mg_5650_1_(copy)_1679122798.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.017' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (30, 1, N'Ô tô 26', N'Mô tả', N'assets/img/_mg_6229_1_(copy)_1679884641.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.017' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (31, 3, N'Ô tô 27', N'Mô tả', N'assets/img/_mg_6137_1_(copy)_1679556223.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.017' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (32, 2, N'Ô tô 28', N'Mô tả', N'assets/img/_mg_6266_1_(copy)_1679887390.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.020' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (33, 5, N'Ô tô 29', N'Mô tả', N'assets/img/_mg_6336_1_(copy)_1680053548.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.020' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (34, 3, N'Ô tô 30', N'Mô tả', N'assets/img/_mg_6137_1_(copy)_1679556223.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.020' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (35, 2, N'Ô tô 31', N'Mô tả', N'assets/img/_mg_6266_1_(copy)_1679887390.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.023' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (36, 5, N'Ô tô 32', N'Mô tả', N'assets/img/_mg_5650_1_(copy)_1679122798.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.023' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (37, 4, N'Ô tô 33', N'Mô tả', N'assets/img/_mg_6336_1_(copy)_1680053548.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.023' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (38, 1, N'Ô tô 34', N'Mô tả', N'assets/img/_mg_6137_1_(copy)_1679556223.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.027' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (39, 5, N'Ô tô 35', N'Mô tả', N'assets/img/_mg_6266_1_(copy)_1679887390.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.027' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (40, 7, N'Ô tô 36', N'Mô tả', N'assets/img/_mg_6336_1_(copy)_1680053548.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.027' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (41, 4, N'Ô tô 37', N'Mô tả', N'assets/img/_mg_6266_1_(copy)_1679887390.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.027' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (42, 7, N'Ô tô 38', N'Mô tả', N'assets/img/_mg_5650_1_(copy)_1679122798.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.030' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (43, 5, N'Ô tô 39', N'Mô tả', N'assets/img/_mg_6229_1_(copy)_1679884641.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.030' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (44, 4, N'Ô tô 40', N'Mô tả', N'assets/img/_mg_6266_1_(copy)_1679887390.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.030' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (45, 2, N'Ô tô 41', N'Mô tả', N'assets/img/_mg_6137_1_(copy)_1679556223.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.033' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (46, 7, N'Ô tô 42', N'Mô tả', N'assets/img/_mg_6336_1_(copy)_1680053548.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.033' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (47, 4, N'Ô tô 43', N'Mô tả', N'assets/img/_mg_6266_1_(copy)_1679887390.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.033' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (48, 5, N'Ô tô 44', N'Mô tả', N'assets/img/_mg_5650_1_(copy)_1679122798.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.037' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (49, 2, N'Ô tô 45', N'Mô tả', N'assets/img/_mg_6229_1_(copy)_1679884641.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.037' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (50, 4, N'Ô tô 46', N'Mô tả', N'assets/img/_mg_6336_1_(copy)_1680053548.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.037' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (51, 2, N'Ô tô 47', N'Mô tả', N'assets/img/_mg_6137_1_(copy)_1679556223.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.037' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (52, 7, N'Ô tô 48', N'Mô tả', N'assets/img/_mg_6336_1_(copy)_1680053548.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.040' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (53, 4, N'Ô tô 49', N'Mô tả', N'assets/img/_mg_5650_1_(copy)_1679122798.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.040' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (54, 2, N'Ô tô 50', N'Mô tả', N'assets/img/_mg_6137_1_(copy)_1679556223.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.040' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (55, 4, N'Ô tô 51', N'Mô tả', N'assets/img/_mg_6229_1_(copy)_1679884641.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.043' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (56, 2, N'Ô tô 52', N'Mô tả', N'assets/img/_mg_6336_1_(copy)_1680053548.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.043' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (57, 2, N'Ô tô 53', N'Mô tả', N'assets/img/_mg_6229_1_(copy)_1679884641.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.043' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (58, 5, N'Ô tô 54', N'Mô tả', N'assets/img/_mg_5650_1_(copy)_1679122798.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.047' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (59, 2, N'Ô tô 55', N'Mô tả', N'assets/img/_mg_6336_1_(copy)_1680053548.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.047' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (60, 6, N'Ô tô 56', N'Mô tả', N'assets/img/_mg_6229_1_(copy)_1679884641.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.047' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (61, 5, N'Ô tô 57', N'Mô tả', N'assets/img/_mg_6266_1_(copy)_1679887390.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.047' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (62, 6, N'Ô tô 58', N'Mô tả', N'assets/img/_mg_6137_1_(copy)_1679556223.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.050' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (63, 2, N'Ô tô 59', N'Mô tả', N'assets/img/_mg_6229_1_(copy)_1679884641.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.050' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (64, 5, N'Ô tô 60', N'Mô tả', N'assets/img/_mg_6336_1_(copy)_1680053548.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.050' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (65, 6, N'Ô tô 61', N'Mô tả', N'assets/img/_mg_5650_1_(copy)_1679122798.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.053' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (66, 6, N'Ô tô 62', N'Mô tả', N'assets/img/_mg_6229_1_(copy)_1679884641.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.053' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (67, 6, N'Ô tô 63', N'Mô tả', N'assets/img/_mg_6137_1_(copy)_1679556223.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.053' AS DateTime))
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao]) VALUES (68, 7, N'Ô tô 64', N'Mô tả', N'assets/img/_mg_6266_1_(copy)_1679887390.jpg', 1, 1, CAST(N'2022-08-10T04:49:58.057' AS DateTime))
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 

INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [MaNguoiDung], [TaiKhoan], [MatKhau], [NgayBatDau], [NgayKetThuc], [TrangThai], [LoaiQuyet]) VALUES (1, 1, N'admin', N'admin', CAST(N'2021-08-18T00:44:56.683' AS DateTime), CAST(N'2021-08-18T00:44:56.683' AS DateTime), 1, N'Admin')
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [MaNguoiDung], [TaiKhoan], [MatKhau], [NgayBatDau], [NgayKetThuc], [TrangThai], [LoaiQuyet]) VALUES (2, 2, N'huy', N'123', CAST(N'2021-08-18T00:44:56.683' AS DateTime), CAST(N'2021-08-18T00:44:56.683' AS DateTime), 1, N'Admin')
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [MaNguoiDung], [TaiKhoan], [MatKhau], [NgayBatDau], [NgayKetThuc], [TrangThai], [LoaiQuyet]) VALUES (11, 11, N'hoangviet', N'123', CAST(N'2022-12-08T00:00:00.000' AS DateTime), NULL, 1, N'Admin')
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [MaNguoiDung], [TaiKhoan], [MatKhau], [NgayBatDau], [NgayKetThuc], [TrangThai], [LoaiQuyet]) VALUES (12, 14, N'tuandat', N'123', CAST(N'2023-01-13T03:48:42.423' AS DateTime), CAST(N'2023-01-13T03:48:42.423' AS DateTime), 1, N'User')
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [MaNguoiDung], [TaiKhoan], [MatKhau], [NgayBatDau], [NgayKetThuc], [TrangThai], [LoaiQuyet]) VALUES (13, 14, N'tungoc', N'123', CAST(N'2023-01-13T03:48:42.423' AS DateTime), CAST(N'2023-01-13T03:48:42.423' AS DateTime), 1, N'User')
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [MaNguoiDung], [TaiKhoan], [MatKhau], [NgayBatDau], [NgayKetThuc], [TrangThai], [LoaiQuyet]) VALUES (15, 16, N'testtest', N'123456@', NULL, NULL, 1, N'User')
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
GO
INSERT [dbo].[ThongSoKyThuat] ([MaThongSo], [MaSanPham], [TenThongSo], [MoTa]) VALUES (1, 4, N'123', N'123')
GO
ALTER TABLE [dbo].[ChiTietAnhSanPham]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietAnhSanPham_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietAnhSanPham] CHECK CONSTRAINT [FK_ChiTietAnhSanPham_SanPham]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_DonHang] FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[DonHang] ([MaDonHang])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_DonHang]
GO
ALTER TABLE [dbo].[ChiTietHoaDonNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDonNhap_HoaDonNhap] FOREIGN KEY([MaHoaDonNhap])
REFERENCES [dbo].[HoaDonNhap] ([MaHoaDonNhap])
GO
ALTER TABLE [dbo].[ChiTietHoaDonNhap] CHECK CONSTRAINT [FK_ChiTietHoaDonNhap_HoaDonNhap]
GO
ALTER TABLE [dbo].[ChiTietHoaDonNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDonNhap_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietHoaDonNhap] CHECK CONSTRAINT [FK_ChiTietHoaDonNhap_SanPham]
GO
ALTER TABLE [dbo].[ChiTietHoaDonXuat]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDonXuat_HoaDonXuat] FOREIGN KEY([MaHoaDonXuat])
REFERENCES [dbo].[HoaDonXuat] ([MaHoaDonXuat])
GO
ALTER TABLE [dbo].[ChiTietHoaDonXuat] CHECK CONSTRAINT [FK_ChiTietHoaDonXuat_HoaDonXuat]
GO
ALTER TABLE [dbo].[ChiTietHoaDonXuat]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDonXuat_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietHoaDonXuat] CHECK CONSTRAINT [FK_ChiTietHoaDonXuat_SanPham]
GO
ALTER TABLE [dbo].[ChiTietKho]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietKho_Kho] FOREIGN KEY([MaKho])
REFERENCES [dbo].[Kho] ([MaKho])
GO
ALTER TABLE [dbo].[ChiTietKho] CHECK CONSTRAINT [FK_ChiTietKho_Kho]
GO
ALTER TABLE [dbo].[ChiTietKho]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietKho_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietKho] CHECK CONSTRAINT [FK_ChiTietKho_SanPham]
GO
ALTER TABLE [dbo].[ChiTietKhuyenMai]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietKhuyenMai_KhuyenMai] FOREIGN KEY([MaKhuyenMai])
REFERENCES [dbo].[KhuyenMai] ([MaKhuyenMai])
GO
ALTER TABLE [dbo].[ChiTietKhuyenMai] CHECK CONSTRAINT [FK_ChiTietKhuyenMai_KhuyenMai]
GO
ALTER TABLE [dbo].[ChiTietKhuyenMai]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietKhuyenMai_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietKhuyenMai] CHECK CONSTRAINT [FK_ChiTietKhuyenMai_SanPham]
GO
ALTER TABLE [dbo].[ChiTietKiemKho]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietKiemKho_KiemKho] FOREIGN KEY([MaKiemKho])
REFERENCES [dbo].[KiemKho] ([MaKiemKho])
GO
ALTER TABLE [dbo].[ChiTietKiemKho] CHECK CONSTRAINT [FK_ChiTietKiemKho_KiemKho]
GO
ALTER TABLE [dbo].[ChiTietKiemKho]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietKiemKho_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietKiemKho] CHECK CONSTRAINT [FK_ChiTietKiemKho_SanPham]
GO
ALTER TABLE [dbo].[ChiTietNhom]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietNhom_NhomSanPham] FOREIGN KEY([MaNhomSanPham])
REFERENCES [dbo].[NhomSanPham] ([MaNhomSanPham])
GO
ALTER TABLE [dbo].[ChiTietNhom] CHECK CONSTRAINT [FK_ChiTietNhom_NhomSanPham]
GO
ALTER TABLE [dbo].[ChiTietNhom]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietNhom_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietNhom] CHECK CONSTRAINT [FK_ChiTietNhom_SanPham]
GO
ALTER TABLE [dbo].[GiamGia]  WITH CHECK ADD  CONSTRAINT [FK_GiamGia_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[GiamGia] CHECK CONSTRAINT [FK_GiamGia_SanPham]
GO
ALTER TABLE [dbo].[HoaDonNhap]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonNhap_NguoiDung] FOREIGN KEY([MaNguoiDung])
REFERENCES [dbo].[NguoiDung] ([MaNguoiDung])
GO
ALTER TABLE [dbo].[HoaDonNhap] CHECK CONSTRAINT [FK_HoaDonNhap_NguoiDung]
GO
ALTER TABLE [dbo].[HoaDonNhap]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonNhap_NhaCungCap] FOREIGN KEY([MaNhaCungCap])
REFERENCES [dbo].[NhaCungCap] ([MaNhaCungCap])
GO
ALTER TABLE [dbo].[HoaDonNhap] CHECK CONSTRAINT [FK_HoaDonNhap_NhaCungCap]
GO
ALTER TABLE [dbo].[HoaDonXuat]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonXuat_KhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[HoaDonXuat] CHECK CONSTRAINT [FK_HoaDonXuat_KhachHang]
GO
ALTER TABLE [dbo].[KiemKho]  WITH CHECK ADD  CONSTRAINT [FK_KiemKho_Kho] FOREIGN KEY([MaKho])
REFERENCES [dbo].[Kho] ([MaKho])
GO
ALTER TABLE [dbo].[KiemKho] CHECK CONSTRAINT [FK_KiemKho_Kho]
GO
ALTER TABLE [dbo].[LichSuGiaBan]  WITH CHECK ADD  CONSTRAINT [FK_LichSuGiaBan_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[LichSuGiaBan] CHECK CONSTRAINT [FK_LichSuGiaBan_SanPham]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_NguoiDung] FOREIGN KEY([MaNguoiDung])
REFERENCES [dbo].[NguoiDung] ([MaNguoiDung])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_NguoiDung]
GO
ALTER TABLE [dbo].[ThongSoKyThuat]  WITH CHECK ADD  CONSTRAINT [FK_ThongSoKyThuat_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[ThongSoKyThuat] CHECK CONSTRAINT [FK_ThongSoKyThuat_SanPham]
GO
