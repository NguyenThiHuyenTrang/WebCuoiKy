USE [master]
GO
/****** Object:  Database [MobileShop]    Script Date: 16/05/2017 6:02:12 CH ******/
CREATE DATABASE [MobileShop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MobileShop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\MobileShop.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MobileShop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\MobileShop_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MobileShop] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MobileShop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MobileShop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MobileShop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MobileShop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MobileShop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MobileShop] SET ARITHABORT OFF 
GO
ALTER DATABASE [MobileShop] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [MobileShop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MobileShop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MobileShop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MobileShop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MobileShop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MobileShop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MobileShop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MobileShop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MobileShop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MobileShop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MobileShop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MobileShop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MobileShop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MobileShop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MobileShop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MobileShop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MobileShop] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MobileShop] SET  MULTI_USER 
GO
ALTER DATABASE [MobileShop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MobileShop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MobileShop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MobileShop] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [MobileShop] SET DELAYED_DURABILITY = DISABLED 
GO
USE [MobileShop]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 16/05/2017 6:02:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 16/05/2017 6:02:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 16/05/2017 6:02:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 16/05/2017 6:02:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 16/05/2017 6:02:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 16/05/2017 6:02:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 16/05/2017 6:02:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuan](
	[MaBinhLuan] [int] IDENTITY(1,1) NOT NULL,
	[MaSP] [nvarchar](10) NOT NULL,
	[MaTaiKhoan] [nvarchar](128) NOT NULL,
	[TenTaiKhoan] [nvarchar](1024) NOT NULL,
	[NoiDung] [nvarchar](2048) NOT NULL,
	[TinhTrang] [nchar](10) NOT NULL CONSTRAINT [DF_BinhLuan_TinhTrang]  DEFAULT ((0)),
	[Ngay] [datetime] NOT NULL CONSTRAINT [DF_BinhLuan_Ngay]  DEFAULT (getdate()),
 CONSTRAINT [PK_BinhLuan] PRIMARY KEY CLUSTERED 
(
	[MaBinhLuan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 16/05/2017 6:02:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaTaiKhoan] [nvarchar](128) NULL,
	[MaSP] [nvarchar](10) NOT NULL,
	[SoLuong] [int] NOT NULL CONSTRAINT [DF_GioHang_SoLuong]  DEFAULT ((1)),
 CONSTRAINT [PK_GioHang] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiSP]    Script Date: 16/05/2017 6:02:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSP](
	[MaLoaiSP] [nvarchar](10) NOT NULL,
	[TenLoaiSP] [nvarchar](50) NULL,
	[TinhTrang] [nchar](10) NULL CONSTRAINT [DF_LoaiSP_TinhTrang]  DEFAULT ((0)),
 CONSTRAINT [PK_LoaiSP] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 16/05/2017 6:02:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNhaSX] [nvarchar](10) NOT NULL,
	[TenNhaSX] [nvarchar](50) NULL,
	[TinhTrang] [nchar](10) NULL CONSTRAINT [DF_NhaSanXuat_TinhTrang]  DEFAULT ((0)),
 CONSTRAINT [PK_NhaSanXuat] PRIMARY KEY CLUSTERED 
(
	[MaNhaSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 16/05/2017 6:02:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [nvarchar](10) NOT NULL,
	[TenSP] [nvarchar](200) NULL,
	[MaLoaiSP] [nvarchar](10) NULL,
	[MaNhaSX] [nvarchar](10) NULL,
	[DungLuongBin] [nvarchar](50) NULL,
	[TheSim] [nvarchar](50) NULL,
	[TheNho] [nvarchar](50) NULL,
	[BoNhoTrong] [nvarchar](50) NULL,
	[RAM] [nvarchar](50) NULL,
	[CPU] [nvarchar](50) NULL,
	[CameraTruoc] [nvarchar](50) NULL,
	[CameraSau] [nvarchar](50) NULL,
	[HeDieuHanh] [nvarchar](50) NULL,
	[ManHinh] [nvarchar](50) NULL,
	[CauHinh] [nvarchar](max) NULL,
	[HinhChinh] [nvarchar](50) NULL,
	[Hinh1] [nvarchar](50) NULL,
	[Hinh2] [nvarchar](50) NULL,
	[Hinh3] [nvarchar](50) NULL,
	[Hinh4] [nvarchar](50) NULL,
	[Gia] [int] NULL,
	[SoLuongBan] [int] NULL,
	[TinhTrang] [nchar](10) NULL CONSTRAINT [DF_SanPham_TinhTrang]  DEFAULT ((0)),
	[LuotXem] [int] NULL,
	[ThemSP] [nvarchar](50) NULL CONSTRAINT [DF_SanPham_ThemSP]  DEFAULT (N'New'),
	[MoTa] [nvarchar](max) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 16/05/2017 6:02:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[TenTaiKhoan] [nchar](50) NOT NULL,
	[MatKhau] [nchar](50) NULL,
	[TenHienThi] [nchar](50) NULL,
	[NgaySinh] [date] NULL,
	[LoaiTaiKhoan] [int] NULL,
	[Xoa] [int] NULL,
	[DiaChi] [nchar](50) NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[TenTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[v_GioHang]    Script Date: 16/05/2017 6:02:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_GioHang]
AS
SELECT       dbo.SanPham.TenSP, dbo.GioHang.*
FROM            dbo.GioHang INNER JOIN
                         dbo.SanPham ON dbo.GioHang.MaSP = dbo.SanPham.MaSP

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201705021041365_InitialCreate', N'WEB2_GK_demo.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5C5B6FE3B6127E3F40FF83A0A7D383D44A9CEE624F606F91759236E8E6827576CF790B688976849528AD44A5098AFEB23EF4279DBF70861275E345175BB19D628145440EBF190E87E47038F4FFFEFC6BF2D393EF198F388ADD804CCDA3D1A1696062078E4B565333A1CB1FDE993FBDFFEE1F9373C77F32BEE474C78C0E5A92786A3E501A9E58566C3F601FC523DFB5A3200E96746407BE859CC01A1F1EFEDB3A3AB2304098806518934F09A1AE8FD30FF89C05C4C6214D90771538D88B7939D4CC5354E31AF9380E918DA7E67FCE3F8CEF7FFEF5DEC17E30CAC84DE3D473118832C7DED2341021014514043DF91CE3398D02B29A875080BCBBE71003DD127931E61D3829C9BBF6E570CCFA62950D73283B8969E0F7043C3AE6CAB1C4E66BA9D82C9407EA3B0735D367D6EB548553F3D2C169D1A7C00305880C4F665EC488A7E655C1E2340EAF311DE50D4719E4450470BF05D1D75115F1C0E8DCEEA030A6F1E890FD3B3066894793084F094E6884BC03E3365978AEFD2B7EBE0BBE62323D3E5A2C8FDFBD798B9CE3B73FE2E337D59E425F81AE560045B75110E20864C3CBA2FFA661D5DB5962C3A259A54DA615B0259817A671859E3E62B2A20F3063C6EF4CE3C27DC24E5EC28DEB3371611A41231A25F0799D781E5A78B8A8B71A79B2FF1BB88EDFBC1D84EB357A7457E9D00BFC61E24430AF3E612FAD8D1FDC309B5EB5F1BEE7641751E0B3EFBA7D65B5F7F320896CD699404B7287A215A675E9265669BC9D4C9A410D6FD639EAFE9B369354366F2529EBD03A332167B1EDD990CBFBB27C3B5BDC6918C2E0A5A6C534D264708ADD6A24343F30AA44A5F11C75351E029DFA3BAF85E73E72BD0116C30E5CC01159BA918F8B5E7E08C0F410E92DF32D8A63580B9C5F50FCD0203AFC3980E8736C271198E89C223F7C716EB70F01C1D789BF6096BF3D5E830DCDDD6FC105B269109D13D66A63BC8F81FD3548E83971CE10C59FA99D03B2CF3BD7EF0E308838A7B68DE3F8028C193BB300FCEC1CF092D0E3716F38B642EDDA199979C8F5D5DE88B096DEE7A4A547A2A690BC120D99CA336912F563B0724937517352BDA81945ABA89CACAFA80CAC9BA49C522F684AD02A67463598AF978ED0F0CE5E0ABBFFDEDE669BB76E2DA8A8710E2B24FE19131CC132E6DC224A7144CA11E8B26EECC25948878F317DF1BD29E5F40579C9D0ACD69A0DE92230FC6C4861F77F36A46242F1A3EB30AFA4C311282706F84EF4EAD355FB9C1324DBF674A87573DBCCB7B306E8A6CB691C07B69BCE0245F08B872EEAF2830F67B4C731B2DE88B110E81818BACBB63C2881BE99A251DD9033EC618A8D533B0B0ECE506C2347562374C8E92158BEA32A042B632275E1FE25F1044BC7116B84D821288699EA122A4F0B97D86E88BC562D092D3B6E61ACEF050FB1E60C87983086AD9AE8C25C1D026102147C844169D3D0C4AA585CB3216ABC56DD98B7B9B0E5B84B9189ADD8648BEFACB14BEEBFBD8861366B6C0BC6D9AC922E0268C379BB30507E56E96A00E2C165DF0C543831690C94BB545B31D0BAC67660A07595BC3A03CD8EA85DC75F38AFEE9B79D60FCADBDFD61BD5B503DBACE963CF4C33F33DA10D85163892CDF36CC12AF113551CCE404E7E3E8BB9AB2B9A08039F635A0FD994FEAED20FB59A4144236A022C0DAD05945F044A40D284EA215C1ECB6B948E7B113D60F3B85B232C5FFB05D88A0DC8D8D50BD10AA1FEDA5434CE4EA78FA26785354846DEE9B050C1511884B878D53BDE4129BAB8ACAC982EBE701F6FB8D2313E180D0A6AF15C354ACA3B33B89672D36CD792CA21EBE3926DA425C17DD26829EFCCE05AE236DAAE248553D0C32DD84845F52D7CA0C996473A8ADDA6A89B5859A2142F98589A8CAAC9150A4397AC2A1956BCC49867E955B31FE6FDD38EFC0CC3B26345F651216DC18906115A61A1165883A4176E14D33344D102B138CFCCF12532E5DEAA59FE7396D5ED531EC47C1FC8A9D9DF590BD5F57D6DB395BD110E72015DF4994B93C6D11506A06E6EB09437E4A14811BA9F055EE213BD87A56F9D5DE055DB672532C2C412E4973C28495D929F5BD77DA7919167C550A3547830EB8F941E42A7EFDCFFAC6A5CE793EA51F21055154517B6DAD9C8E95C997EA325BA89FD07AB15E1656616CF4DA902F0A29E1895F40609AC52D71DB59E8152C5ACD7744714D24CAA9042550F29ABC9243521AB156BE16934AAA6E8CE414E1FA9A2CBB5DD91158924556845F51AD80A99C5BAEEA88A5C932AB0A2BA3B76997822AEA27BBC77690F2FEB6F5ED90177B3DD4B83F1324BE2309B5FE51EBF0A5429EE89C56FEA25305EBE97E6A43DE5AD6F4E5960633373D260E8D79EDA15787DE969BCB7D763D6EEB56BCB7BD3BDBE1EAF9FD1BEA86948A73C91A4E05E9CF68453DD849FB0DA1FD34847AE8CC4347235C2D6FE1C53EC8F18C168FECD9B792E660B794E708588BBC431CD7239CCF1E1D158788EB33F4F63AC38763CC50955F73EA63E665B48CB228F28B21F502427496CF07CA40495E2CF97C4C14F53F3F7B4D5491ACA607FA5C507C665FC99B8DF12A8B88B126CFC21277D0E934EDF7CCEDAD3C70FDDB57AF9DFFBACE9817113C18C39310E055DAE33C2F52711BDA4C99A6E20CDDA0F255EEF84AABD4150A20A1362FD27070B970EF2DC2097F29F3E7AFABEAF68CA27051B212A9E0D0C8537880A75CF02D6C1D23E0970E093A64F02FA7556FD44601DD1B4CF035CD21F4C7C1CD07D19CA5BEE70AB511C8AB6B124A57A6E4DAEDE28D372D77B939483BDD14497F3AC7BC06D904BBD8665BCB234E4C176474596F160D8BB34ED174F2DDE976CE232CF63B749C4DBCC1B6EB819FA5BA50BEF41829B226167F749C1DBB6355D2077CF332BFBA5FEEE99B1F134AEDD27F86EDBD87461DE3D37B65E69BC7B666BBBDA3F776C699DB7D09D27E5CAF9459A0B19552CB82DE9360B9CC3097F118011641E65F656529DE5D594A1DAC2B024D133D5A797898CA58923F195289AD9F6EB2BDFF01B3BCB699AD96A92329B78F3F5BF9137A769E6AD4975DC45BAB032D95095C2DDB28E35E541BDA6F4E05A4F5AB2D1DB7CD6C6DBF5D7940D3C88526AB3477347FC7A927F0751C99053A747B2AF7CDD0B7B67E5171661FF8EDD5509C17E6F9160BBB66B1634976419E49BB720514E224468AE30450E6CA9A7117597C8A650CD62CCE963EF346EC76E3A16D8B92437090D130A5DC6FEC2AB05BC9813D0C43FCD68AECB3CB909D3DF2D19A20B20A6CB62F337E443E27A4E21F7852226A48160DE058FE8B2B1A42CB2BB7A2E90AE03D21188ABAF708AEEB01F7A0016DF90397AC4EBC806E6F711AF90FD5C46007520ED035157FBE4CC45AB08F931C728DBC327D8B0E33FBDFF3F45CA5D3968540000, N'6.1.3-40302')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'72cea7d1-0d50-4fd3-bab1-abbf9e928506', N'Admin')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'25439feb-a457-4354-8088-6ea72ee3bc0b', N'72cea7d1-0d50-4fd3-bab1-abbf9e928506')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'13154f2e-bbb6-4309-b8cb-c7e01660b5e1', N'nguyentrongnghia@gmail.com', 0, N'AKJW9DNWf+zNiYzNyx/CKshmOGFtCHb3z+O9GaZ22sW/Dr3aGGdl9O+H6I+ES1Mvow==', N'359ac260-74fd-40cf-84b9-d5611d1b30b3', NULL, 0, 0, NULL, 1, 0, N'nguyentrongnghia@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'25439feb-a457-4354-8088-6ea72ee3bc0b', N'admin@gmail.com', 0, N'AERmo4QQzCfzkTEz9D8D8wvBPjgN+j3oOvVOQC+/0mWTztPQvsb6kSV/Z6/AII/Q6g==', N'c732321c-8ff2-4684-8929-b1ce5dfc65ef', NULL, 0, 0, NULL, 0, 0, N'admin@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'c5863855-f391-4c44-ba80-c525f60b031c', N'nghia@gmail.com', 0, N'AArH9j61REv8tH2HVSkl2vL+fX0q6Cbhh0SQN99wkjQFy0tesLAOhlFMTrl10EeuMw==', N'1be6fc31-40e9-435b-b356-abaf5d433b48', NULL, 0, 0, NULL, 1, 0, N'nghia@gmail.com')
SET IDENTITY_INSERT [dbo].[BinhLuan] ON 

INSERT [dbo].[BinhLuan] ([MaBinhLuan], [MaSP], [MaTaiKhoan], [TenTaiKhoan], [NoiDung], [TinhTrang], [Ngay]) VALUES (16, N'SP01', N'13154f2e-bbb6-4309-b8cb-c7e01660b5e1', N'nguyentrongnghia@gmail.com', N'2312', N'0         ', CAST(N'2017-05-09 13:30:52.540' AS DateTime))
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [MaSP], [MaTaiKhoan], [TenTaiKhoan], [NoiDung], [TinhTrang], [Ngay]) VALUES (17, N'SP01', N'13154f2e-bbb6-4309-b8cb-c7e01660b5e1', N'nguyentrongnghia@gmail.com', N'2312', N'0         ', CAST(N'2017-05-09 13:32:13.067' AS DateTime))
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [MaSP], [MaTaiKhoan], [TenTaiKhoan], [NoiDung], [TinhTrang], [Ngay]) VALUES (18, N'SP01', N'13154f2e-bbb6-4309-b8cb-c7e01660b5e1', N'nguyentrongnghia@gmail.com', N'123123123123', N'0         ', CAST(N'2017-05-09 13:34:17.237' AS DateTime))
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [MaSP], [MaTaiKhoan], [TenTaiKhoan], [NoiDung], [TinhTrang], [Ngay]) VALUES (19, N'SP01', N'13154f2e-bbb6-4309-b8cb-c7e01660b5e1', N'nguyentrongnghia@gmail.com', N'sfsd', N'0         ', CAST(N'2017-05-09 13:37:08.030' AS DateTime))
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [MaSP], [MaTaiKhoan], [TenTaiKhoan], [NoiDung], [TinhTrang], [Ngay]) VALUES (20, N'SP01', N'13154f2e-bbb6-4309-b8cb-c7e01660b5e1', N'nguyentrongnghia@gmail.com', N'nghia', N'0         ', CAST(N'2017-05-09 13:37:17.620' AS DateTime))
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [MaSP], [MaTaiKhoan], [TenTaiKhoan], [NoiDung], [TinhTrang], [Ngay]) VALUES (21, N'SP01', N'13154f2e-bbb6-4309-b8cb-c7e01660b5e1', N'nguyentrongnghia@gmail.com', N'cho', N'0         ', CAST(N'2017-05-09 13:40:00.237' AS DateTime))
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [MaSP], [MaTaiKhoan], [TenTaiKhoan], [NoiDung], [TinhTrang], [Ngay]) VALUES (22, N'SP02', N'13154f2e-bbb6-4309-b8cb-c7e01660b5e1', N'nguyentrongnghia@gmail.com', N'xyz', N'0         ', CAST(N'2017-05-09 13:48:57.297' AS DateTime))
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [MaSP], [MaTaiKhoan], [TenTaiKhoan], [NoiDung], [TinhTrang], [Ngay]) VALUES (23, N'SP01', N'13154f2e-bbb6-4309-b8cb-c7e01660b5e1', N'nguyentrongnghia@gmail.com', N'abc', N'0         ', CAST(N'2017-05-09 18:12:04.430' AS DateTime))
SET IDENTITY_INSERT [dbo].[BinhLuan] OFF
SET IDENTITY_INSERT [dbo].[GioHang] ON 

INSERT [dbo].[GioHang] ([Id], [MaTaiKhoan], [MaSP], [SoLuong]) VALUES (1, N'13154f2e-bbb6-4309-b8cb-c7e01660b5e1', N'SP02', 10)
INSERT [dbo].[GioHang] ([Id], [MaTaiKhoan], [MaSP], [SoLuong]) VALUES (12, N'c5863855-f391-4c44-ba80-c525f60b031c', N'SP01', 1)
INSERT [dbo].[GioHang] ([Id], [MaTaiKhoan], [MaSP], [SoLuong]) VALUES (13, NULL, N'SP01', 1)
INSERT [dbo].[GioHang] ([Id], [MaTaiKhoan], [MaSP], [SoLuong]) VALUES (14, NULL, N'SP01', 1)
INSERT [dbo].[GioHang] ([Id], [MaTaiKhoan], [MaSP], [SoLuong]) VALUES (15, N'13154f2e-bbb6-4309-b8cb-c7e01660b5e1', N'SP01', 1)
INSERT [dbo].[GioHang] ([Id], [MaTaiKhoan], [MaSP], [SoLuong]) VALUES (16, N'13154f2e-bbb6-4309-b8cb-c7e01660b5e1', N'SP03', 0)
SET IDENTITY_INSERT [dbo].[GioHang] OFF
INSERT [dbo].[LoaiSP] ([MaLoaiSP], [TenLoaiSP], [TinhTrang]) VALUES (N'LSP01', N'Tầm Cao', N'0         ')
INSERT [dbo].[LoaiSP] ([MaLoaiSP], [TenLoaiSP], [TinhTrang]) VALUES (N'LSP02', N'Tầm Trung', N'0         ')
INSERT [dbo].[NhaSanXuat] ([MaNhaSX], [TenNhaSX], [TinhTrang]) VALUES (N'NSX01', N'Apple', N'0         ')
INSERT [dbo].[NhaSanXuat] ([MaNhaSX], [TenNhaSX], [TinhTrang]) VALUES (N'NSX02', N'SamSung', N'0         ')
INSERT [dbo].[NhaSanXuat] ([MaNhaSX], [TenNhaSX], [TinhTrang]) VALUES (N'NSX03', N'Oppo', N'0         ')
INSERT [dbo].[NhaSanXuat] ([MaNhaSX], [TenNhaSX], [TinhTrang]) VALUES (N'NSX04', N'Asus', N'0         ')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSP], [MaNhaSX], [DungLuongBin], [TheSim], [TheNho], [BoNhoTrong], [RAM], [CPU], [CameraTruoc], [CameraSau], [HeDieuHanh], [ManHinh], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongBan], [TinhTrang], [LuotXem], [ThemSP], [MoTa]) VALUES (N'SP01', N'Điện thoại iPhone 7 256GB', N'LSP01', N'NSX01', N'Dung lượng pin:	2900 mAh', N'Thẻ SIM:	1 Nano SIM', N'Thẻ nhớ:	Không', N'Bộ nhớ trong:	256 GB', N'RAM:	3 GB', N'CPU:	Apple A10 Fusion 4 nhân 64-bit', N'Camera trước:	7 MP', N'Camera sau:	Hai camera 12 MP', N'Hệ điều hành:	iOS 10', N'Màn hình:	LED-backlit IPS LCD, 5.5", Retina HD', N'Thông số kỹ thuật', N'ip1.jpg', N'ip2.jpg', N'ip3.jpg', N'ip1.jpg', N'ip2.jpg', 21000000, 0, N'0         ', 0, N'New', NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSP], [MaNhaSX], [DungLuongBin], [TheSim], [TheNho], [BoNhoTrong], [RAM], [CPU], [CameraTruoc], [CameraSau], [HeDieuHanh], [ManHinh], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongBan], [TinhTrang], [LuotXem], [ThemSP], [MoTa]) VALUES (N'SP02', N'Điện thoại iPhone 6s 128GB', N'LSP01', N'NSX01', N'Dung lượng pin:	2900 mAh', N'Thẻ SIM:	1 Nano SIM', N'Thẻ nhớ:	Không', N'Bộ nhớ trong:	128 GB', N'RAM:	3 GB', N'CPU:	Apple A10 Fusion 4 nhân 64-bit', N'Camera trước:	7 MP', N'Camera sau:	Hai camera 12 MP', N'Hệ điều hành:	iOS 10', N'Màn hình:	LED-backlit IPS LCD, 5.5", Retina HD', N'Thông số kỹ thuật', N'ip2.jpg', N'ip3.jpg', N'ip1.jpg', N'ip2.jpg', N'ip3.jpg', 16000000, 0, N'0         ', 0, N'New', NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSP], [MaNhaSX], [DungLuongBin], [TheSim], [TheNho], [BoNhoTrong], [RAM], [CPU], [CameraTruoc], [CameraSau], [HeDieuHanh], [ManHinh], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongBan], [TinhTrang], [LuotXem], [ThemSP], [MoTa]) VALUES (N'SP03', N'Điện thoại IPHONE 5S 16GB', N'LSP02', N'NSX01', N'Dung lượng pin:	2900 mAh', N'Thẻ SIM:	1 Nano SIM', N'Thẻ nhớ:	Không', N'Bộ nhớ trong:	128 GB', N'RAM:	3 GB', N'CPU:	Apple A10 Fusion 4 nhân 64-bit', N'Camera trước:	7 MP', N'Camera sau:	Hai camera 12 MP', N'Hệ điều hành:	iOS 10', N'Màn hình:	LED-backlit IPS LCD, 5.5", Retina HD', N'Thông số kỹ thuật', N'ip4.jpg', N'ip5.jpg', N'ip4.jpg', N'ip5.jpg', N'ip4.jpg', 6500000, 0, N'0         ', 0, N'New', NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSP], [MaNhaSX], [DungLuongBin], [TheSim], [TheNho], [BoNhoTrong], [RAM], [CPU], [CameraTruoc], [CameraSau], [HeDieuHanh], [ManHinh], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongBan], [TinhTrang], [LuotXem], [ThemSP], [MoTa]) VALUES (N'SP04', N'Điện thoại Samsung Galaxy S7 Edge', N'LSP01', N'NSX02', N'Dung lượng pin:	2900 mAh', N'Thẻ SIM:	1 Nano SIM', N'Thẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB', N'Bộ nhớ trong:	32 GB', N'RAM:	4 GB', N'CPU:	Exynos 8890 8 nhân 64-bit', N'Camera trước:	5 MP', N'Camera sau:	12 MP', N'Hệ điều hành:	Android 6.0 (Marshmallow)', N'Màn hình:	Super AMOLED, 5.5", Quad HD (2K)', N'Thông số kỹ thuật', N'ss1.jpg', N'ss2.jpg', N'ss3.jpg', N'ss4.jpg', N'ss1.jpg', 15000000, 0, N'0         ', 0, N'New', NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSP], [MaNhaSX], [DungLuongBin], [TheSim], [TheNho], [BoNhoTrong], [RAM], [CPU], [CameraTruoc], [CameraSau], [HeDieuHanh], [ManHinh], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongBan], [TinhTrang], [LuotXem], [ThemSP], [MoTa]) VALUES (N'SP05', N'Điện thoại Samsung Galaxy S7', N'LSP01', N'NSX02', N'Dung lượng pin:	2900 mAh', N'Thẻ SIM:	1 Nano SIM', N'Thẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB', N'Bộ nhớ trong:	32 GB', N'RAM:	4 GB', N'CPU:	Exynos 8890 8 nhân 64-bit', N'Camera trước:	5 MP', N'Camera sau:	12 MP', N'Hệ điều hành:	Android 6.0 (Marshmallow)', N'Màn hình:	Super AMOLED, 5.5", Quad HD (2K)', N'Thông số kỹ thuật', N'ss2.jpg', N'ss3.jpg', N'ss4.jpg', N'ss1.jpg', N'ss2.jpg', 14000000, 0, N'0         ', 0, N'New', NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSP], [MaNhaSX], [DungLuongBin], [TheSim], [TheNho], [BoNhoTrong], [RAM], [CPU], [CameraTruoc], [CameraSau], [HeDieuHanh], [ManHinh], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongBan], [TinhTrang], [LuotXem], [ThemSP], [MoTa]) VALUES (N'SP06', N'Điện thoại Samsung Galaxy J7 Prime', N'LSP02', N'NSX02', N'Dung lượng pin:	2900 mAh', N'Thẻ SIM:	1 Nano SIM', N'Thẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB', N'Bộ nhớ trong:	32 GB', N'RAM:	3 GB', N'CPU:	Exynos 7870 8 nhân 64-bit', N'Camera trước:	8 MP', N'Camera sau:	13 MP', N'Hệ điều hành:	Android 6.0 (Marshmallow)', N'Màn hình:	PLS TFT LCD, 5.5", Full HD', N'Thông số kỹ thuật', N'ss5.jpg', N'ss1.jpg', N'ss2.jpg', N'ss3.jpg', N'ss4.jpg', 5500000, 0, N'0         ', 0, N'New', NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSP], [MaNhaSX], [DungLuongBin], [TheSim], [TheNho], [BoNhoTrong], [RAM], [CPU], [CameraTruoc], [CameraSau], [HeDieuHanh], [ManHinh], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongBan], [TinhTrang], [LuotXem], [ThemSP], [MoTa]) VALUES (N'SP07', N'Điện thoại OPPO F3 Plus 64GB', N'LSP01', N'NSX03', N'Dung lượng pin:	2900 mAh', N'Thẻ SIM:	1 Nano SIM', N'Thẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB', N'Bộ nhớ trong:	64 GB', N'RAM:	4 GB', N'CPU:	Snapdragon 653 8 nhân 64-bit', N'Camera trước:	16 MP và 8 MP', N'Camera sau:	16 MP', N'Hệ điều hành:	Android 6.0 (Marshmallow)', N'Màn hình:	IPS LCD, 6", Full HD', N'Thông số kỹ thuật', N'op1.jpg', N'op2.jpg', N'op3.jpg', N'op4.jpg', N'op5.jpg', 10000000, 0, N'0         ', 0, N'New', NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSP], [MaNhaSX], [DungLuongBin], [TheSim], [TheNho], [BoNhoTrong], [RAM], [CPU], [CameraTruoc], [CameraSau], [HeDieuHanh], [ManHinh], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongBan], [TinhTrang], [LuotXem], [ThemSP], [MoTa]) VALUES (N'SP08', N'Điện thoại OPPO F1s [17] 64GB', N'LSP02', N'NSX03', N'Dung lượng pin:	2900 mAh', N'Thẻ SIM:	1 Nano SIM', N'Thẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB', N'Bộ nhớ trong:	64 GB', N'RAM:	4 GB', N'CPU:	Snapdragon 653 8 nhân 64-bit', N'Camera trước:	16 MP và 8 MP', N'Camera sau:	16 MP', N'Hệ điều hành:	Android 6.0 (Marshmallow)', N'Màn hình:	IPS LCD, 6", Full HD', N'Thông số kỹ thuật', N'op2.jpg', N'op3.jpg', N'op4.jpg', N'op5.jpg', N'op1.jpg', 6000000, 0, N'0         ', 0, N'New', NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSP], [MaNhaSX], [DungLuongBin], [TheSim], [TheNho], [BoNhoTrong], [RAM], [CPU], [CameraTruoc], [CameraSau], [HeDieuHanh], [ManHinh], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongBan], [TinhTrang], [LuotXem], [ThemSP], [MoTa]) VALUES (N'SP09', N'Điện thoại OPPO F2s 64GB', N'LSP02', N'NSX03', N'Dung lượng pin:	2900 mAh', N'Thẻ SIM:	1 Nano SIM', N'Thẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB', N'Bộ nhớ trong:	64 GB', N'RAM:	3 GB', N'CPU:	Snapdragon 653 8 nhân 64-bit', N'Camera trước:	16 MP và 8 MP', N'Camera sau:	16 MP', N'Hệ điều hành:	Android 6.0 (Marshmallow)', N'Màn hình:	IPS LCD, 6", Full HD', N'Thông số kỹ thuật', N'op3.jpg', N'op4.jpg', N'op5.jpg', N'op1.jpg', N'op2.jpg', 6000000, 0, N'0         ', 0, N'New', NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSP], [MaNhaSX], [DungLuongBin], [TheSim], [TheNho], [BoNhoTrong], [RAM], [CPU], [CameraTruoc], [CameraSau], [HeDieuHanh], [ManHinh], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongBan], [TinhTrang], [LuotXem], [ThemSP], [MoTa]) VALUES (N'SP10', N'Điện thoại Asus Zenfone 3 ZE552KL', N'LSP01', N'NSX04', N'Dung lượng pin:	2900 mAh', N'Thẻ SIM:	1 Nano SIM', N'Thẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB', N'Bộ nhớ trong:	64 GB', N'RAM:	4 GB', N'CPU:	Snapdragon 653 8 nhân 64-bit', N'Camera trước:	16 MP và 8 MP', N'Camera sau:	16 MP', N'Hệ điều hành:	Android 6.0 (Marshmallow)', N'Màn hình:	IPS LCD, 6", Full HD', N'Thông số kỹ thuật', N'as1.jpg', N'as2.jpg', N'as3.jpg', N'as4.jpg', N'as1.jpg', 9000000, 0, N'0         ', 0, N'New', NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSP], [MaNhaSX], [DungLuongBin], [TheSim], [TheNho], [BoNhoTrong], [RAM], [CPU], [CameraTruoc], [CameraSau], [HeDieuHanh], [ManHinh], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongBan], [TinhTrang], [LuotXem], [ThemSP], [MoTa]) VALUES (N'SP11', N'Điện thoại Asus Zenfone 3 ZE520KL', N'LSP01', N'NSX04', N'Dung lượng pin:	2900 mAh', N'Thẻ SIM:	1 Nano SIM', N'Thẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB', N'Bộ nhớ trong:	64 GB', N'RAM:	3 GB', N'CPU:	Snapdragon 653 8 nhân 64-bit', N'Camera trước:	8 MP', N'Camera sau:	16 MP', N'Hệ điều hành:	Android 6.0 (Marshmallow)', N'Màn hình:	Super IPS LCD, 5.2", Full HD', N'Thông số kỹ thuật', N'as2.jpg', N'as3.jpg', N'as4.jpg', N'as2.jpg', N'as1.jpg', 8000000, 0, N'0         ', 0, N'New', NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSP], [MaNhaSX], [DungLuongBin], [TheSim], [TheNho], [BoNhoTrong], [RAM], [CPU], [CameraTruoc], [CameraSau], [HeDieuHanh], [ManHinh], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongBan], [TinhTrang], [LuotXem], [ThemSP], [MoTa]) VALUES (N'SP12', N'Điện thoại Asus Zenfone 3 ZC553KL', N'LSP02', N'NSX04', N'Dung lượng pin:	2900 mAh', N'Thẻ SIM:	1 Nano SIM', N'Thẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB', N'Bộ nhớ trong:	64 GB', N'RAM:	3 GB', N'CPU:	Snapdragon 653 8 nhân 64-bit', N'Camera trước:	8 MP', N'Camera sau:	16 MP', N'Hệ điều hành:	Android 6.0 (Marshmallow)', N'Màn hình:	Super IPS LCD, 5.2", Full HD', N'Thông số kỹ thuật', N'as3.jpg', N'as4.jpg', N'as1.jpg', N'as2.jpg', N'as3.jpg', 4000000, 0, N'0         ', 0, N'New', NULL)
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [TenHienThi], [NgaySinh], [LoaiTaiKhoan], [Xoa], [DiaChi]) VALUES (N'dinhvanvinh                                       ', N'Vinh@123456                                       ', N'Vinh                                              ', CAST(N'1995-12-21' AS Date), 1, 0, N'DongNai                                           ')
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [TenHienThi], [NgaySinh], [LoaiTaiKhoan], [Xoa], [DiaChi]) VALUES (N'nguyentrongnghia                                  ', N'Nghia@123456                                      ', N'Nghia                                             ', CAST(N'1995-12-23' AS Date), 1, 0, N'LongAn                                            ')
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [TenHienThi], [NgaySinh], [LoaiTaiKhoan], [Xoa], [DiaChi]) VALUES (N'TranThiHuyenTrang                                 ', N'Trang@123456                                      ', N'Trang                                             ', CAST(N'1995-12-22' AS Date), 1, 0, N'NgheAn                                            ')
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 16/05/2017 6:02:12 CH ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 16/05/2017 6:02:12 CH ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 16/05/2017 6:02:12 CH ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 16/05/2017 6:02:12 CH ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 16/05/2017 6:02:12 CH ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 16/05/2017 6:02:12 CH ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_AspNetUsers] FOREIGN KEY([MaTaiKhoan])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_AspNetUsers]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_SanPham]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSP] FOREIGN KEY([MaLoaiSP])
REFERENCES [dbo].[LoaiSP] ([MaLoaiSP])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSP]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaSanXuat] FOREIGN KEY([MaNhaSX])
REFERENCES [dbo].[NhaSanXuat] ([MaNhaSX])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaSanXuat]
GO
/****** Object:  StoredProcedure [dbo].[SNT]    Script Date: 16/05/2017 6:02:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--DECLARE @A INT, @B INT, @C INT,@DETA VARCHAR(20),@X VARCHAR(20) ,@X1 VARCHAR (20), @X2 VARCHAR(20) 
--SET @DETA =0
--SET @X=0
--SET @X1 = 0
--SET @X2 = 0
--SET @A=0
--SET @B=0
--SET @C=0
--SET @DETA=(@B*@B)-4*@A*@C
--BEGIN
--IF (@DETA <0)
--PRINT('PT VO NGHIEM')
--IF(@DETA = 0)
--SET @X=(@B)/(2*@A)
--PRINT('PHUONG TRÌNH CÓ NGHIỆM KÉP')
--PRINT'X = '+@X
--IF(@DETA >0)
--PRINT('PT CO 2 NGHIEM PHAN BIET')
--SET @X1 = (-@B)- SQRT (@DETA)/(2*@A)
--SET @X2 =(-@B)+ SQRT (@DETA)/(2*@A)
--PRINT'X1 = '+@X1
--SET @X2 =(-@B)+ SQRT (@DETA)/(2*@A)
--PRINT 'X2 = '+@X2

--END


--bai 7
CREATE PROC [dbo].[SNT] @n INT,@t INT OUTPUT
AS
DECLARE @i INT 
SET @i=2
WHiLE (@i<=@n)
BEGIN
	IF (@n%@i=0)
		RETURN 1
	ELSE 
		RETURN -1
END	

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "GioHang"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SanPham"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 136
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_GioHang'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_GioHang'
GO
USE [master]
GO
ALTER DATABASE [MobileShop] SET  READ_WRITE 
GO
