USE [SpecialtiesOfVietnam]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 3/9/2022 3:46:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[User_Name] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Type] [int] NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 3/9/2022 3:46:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[Account_ID] [int] NOT NULL,
	[Product_ID] [int] NOT NULL,
	[Amount] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 3/9/2022 3:46:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[History]    Script Date: 3/9/2022 3:46:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[History](
	[ID] [int] NOT NULL,
	[Shipper_ID] [int] NOT NULL,
	[Customer_ID] [int] NOT NULL,
	[Product_ID] [int] NOT NULL,
	[Amount] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[Date] [date] NOT NULL,
	[Voucher_ID] [nvarchar](20) NULL,
 CONSTRAINT [PK_Receipt] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Info]    Script Date: 3/9/2022 3:46:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Info](
	[Account_ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Gender] [bit] NULL,
	[Birth] [nvarchar](10) NULL,
	[Phone_Number] [nvarchar](11) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](70) NOT NULL,
 CONSTRAINT [PK_Info] PRIMARY KEY CLUSTERED 
(
	[Account_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Origin]    Script Date: 3/9/2022 3:46:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Origin](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Origin] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Packing]    Script Date: 3/9/2022 3:46:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Packing](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Measure] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Packing] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 3/9/2022 3:46:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
	[Origin_ID] [int] NOT NULL,
	[Category_ID] [int] NOT NULL,
	[Price] [int] NOT NULL,
	[Packing_ID] [int] NOT NULL,
	[Amount] [int] NOT NULL,
	[Sell_ID] [nvarchar](10) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rate]    Script Date: 3/9/2022 3:46:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rate](
	[ID] [int] NOT NULL,
	[Rate] [float] NOT NULL,
	[Comment] [nvarchar](100) NULL,
	[Customer_ID] [int] NOT NULL,
	[Product_ID] [int] NOT NULL,
 CONSTRAINT [PK_Rate] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipping]    Script Date: 3/9/2022 3:46:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipping](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Shipper_ID] [int] NULL,
	[Status_ID] [int] NOT NULL,
	[Customer_ID] [int] NOT NULL,
	[Product_ID] [int] NOT NULL,
	[Amount] [int] NOT NULL,
	[Price] [int] NOT NULL,
	[Voucher_ID] [nvarchar](20) NULL,
 CONSTRAINT [PK_Shipping] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 3/9/2022 3:46:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Voucher]    Script Date: 3/9/2022 3:46:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voucher](
	[Code] [nvarchar](20) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Discount] [float] NOT NULL,
	[isUse] [bit] NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([ID], [User_Name], [Password], [Type]) VALUES (1, N'ADMIN', N'admin123', 1)
INSERT [dbo].[Account] ([ID], [User_Name], [Password], [Type]) VALUES (2, N'DacSanVietNam', N'admin312', 1)
INSERT [dbo].[Account] ([ID], [User_Name], [Password], [Type]) VALUES (3, N'abcxyz', N'1425vm', 2)
INSERT [dbo].[Account] ([ID], [User_Name], [Password], [Type]) VALUES (4, N'wefni129', N'am934.vc', 2)
INSERT [dbo].[Account] ([ID], [User_Name], [Password], [Type]) VALUES (5, N'cuahangvn', N'toicodon345', 2)
INSERT [dbo].[Account] ([ID], [User_Name], [Password], [Type]) VALUES (6, N'shopuytin', N'mnpq0192', 2)
INSERT [dbo].[Account] ([ID], [User_Name], [Password], [Type]) VALUES (7, N'oggy0897', N'meoxanh.12', 3)
INSERT [dbo].[Account] ([ID], [User_Name], [Password], [Type]) VALUES (8, N'TomAndJerry', N'dowef@@', 3)
INSERT [dbo].[Account] ([ID], [User_Name], [Password], [Type]) VALUES (9, N'ConCaiNit', N'thoidahet34', 4)
INSERT [dbo].[Account] ([ID], [User_Name], [Password], [Type]) VALUES (10, N'SonTungMTP', N'emcuangayhomqua', 4)
INSERT [dbo].[Account] ([ID], [User_Name], [Password], [Type]) VALUES (11, N'thanhngu123', N'ythucconruoi312', 4)
INSERT [dbo].[Account] ([ID], [User_Name], [Password], [Type]) VALUES (12, N'FinnKL', N'chinhlk', 4)
INSERT [dbo].[Account] ([ID], [User_Name], [Password], [Type]) VALUES (13, N'thanhkl2003', N'chuaruatoi', 4)
INSERT [dbo].[Account] ([ID], [User_Name], [Password], [Type]) VALUES (15, N'chinhlk2001', N'abcxyz', 4)
INSERT [dbo].[Account] ([ID], [User_Name], [Password], [Type]) VALUES (16, N'tienbip', N'aszx', 4)
INSERT [dbo].[Account] ([ID], [User_Name], [Password], [Type]) VALUES (18, N'alo', N'qwer', 4)
INSERT [dbo].[Account] ([ID], [User_Name], [Password], [Type]) VALUES (19, N'ntnvlog', N'zxcv', 4)
INSERT [dbo].[Account] ([ID], [User_Name], [Password], [Type]) VALUES (20, N'mrchinh', N'poiu', 4)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
INSERT [dbo].[Cart] ([Account_ID], [Product_ID], [Amount]) VALUES (10, 9, 1)
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([ID], [Name]) VALUES (1, N'ĐỒ NÓNG')
INSERT [dbo].[Category] ([ID], [Name]) VALUES (2, N'KHÔ CÁC LOẠI')
INSERT [dbo].[Category] ([ID], [Name]) VALUES (3, N'NEM/CHẢ/LẠP')
INSERT [dbo].[Category] ([ID], [Name]) VALUES (4, N'RAU QUẢ')
INSERT [dbo].[Category] ([ID], [Name]) VALUES (5, N'RƯỢU')
INSERT [dbo].[Category] ([ID], [Name]) VALUES (6, N'THỊT TƯƠI')
INSERT [dbo].[Category] ([ID], [Name]) VALUES (7, N'CÁC GIA VỊ')
INSERT [dbo].[Category] ([ID], [Name]) VALUES (8, N'BÁNH/KẸO/MỨT')
INSERT [dbo].[Category] ([ID], [Name]) VALUES (9, N'ĐỒ NGUỘI')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
INSERT [dbo].[History] ([ID], [Shipper_ID], [Customer_ID], [Product_ID], [Amount], [Price], [Date], [Voucher_ID]) VALUES (21, 7, 15, 1060, 2, 40000, CAST(N'2021-10-26' AS Date), NULL)
INSERT [dbo].[History] ([ID], [Shipper_ID], [Customer_ID], [Product_ID], [Amount], [Price], [Date], [Voucher_ID]) VALUES (22, 7, 15, 2, 4, 50000, CAST(N'2021-10-26' AS Date), NULL)
INSERT [dbo].[History] ([ID], [Shipper_ID], [Customer_ID], [Product_ID], [Amount], [Price], [Date], [Voucher_ID]) VALUES (34, 7, 15, 12, 1, 159000, CAST(N'2021-10-26' AS Date), NULL)
INSERT [dbo].[History] ([ID], [Shipper_ID], [Customer_ID], [Product_ID], [Amount], [Price], [Date], [Voucher_ID]) VALUES (36, 7, 15, 1060, 1, 40000, CAST(N'2021-10-26' AS Date), NULL)
INSERT [dbo].[History] ([ID], [Shipper_ID], [Customer_ID], [Product_ID], [Amount], [Price], [Date], [Voucher_ID]) VALUES (1035, 8, 18, 6, 2, 95000, CAST(N'2021-10-29' AS Date), N'FIRSTIN')
INSERT [dbo].[History] ([ID], [Shipper_ID], [Customer_ID], [Product_ID], [Amount], [Price], [Date], [Voucher_ID]) VALUES (1036, 7, 13, 2, 1, 50000, CAST(N'2021-11-03' AS Date), N'FFMSRR')
INSERT [dbo].[History] ([ID], [Shipper_ID], [Customer_ID], [Product_ID], [Amount], [Price], [Date], [Voucher_ID]) VALUES (1037, 7, 13, 12, 1, 159000, CAST(N'2021-11-03' AS Date), N'FFMSRR')
INSERT [dbo].[History] ([ID], [Shipper_ID], [Customer_ID], [Product_ID], [Amount], [Price], [Date], [Voucher_ID]) VALUES (1038, 7, 15, 11, 2, 195000, CAST(N'2021-11-03' AS Date), N'FFMSRR')
INSERT [dbo].[History] ([ID], [Shipper_ID], [Customer_ID], [Product_ID], [Amount], [Price], [Date], [Voucher_ID]) VALUES (1039, 7, 13, 12, 2, 159000, CAST(N'2021-11-03' AS Date), NULL)
INSERT [dbo].[History] ([ID], [Shipper_ID], [Customer_ID], [Product_ID], [Amount], [Price], [Date], [Voucher_ID]) VALUES (1040, 7, 13, 9, 3, 25000, CAST(N'2021-11-03' AS Date), N'FFMSRR')
INSERT [dbo].[History] ([ID], [Shipper_ID], [Customer_ID], [Product_ID], [Amount], [Price], [Date], [Voucher_ID]) VALUES (1042, 7, 15, 9, 1, 25000, CAST(N'2021-11-03' AS Date), N'FIRSTIN')
GO
INSERT [dbo].[Info] ([Account_ID], [Name], [Gender], [Birth], [Phone_Number], [Email], [Address]) VALUES (7, N'Nguyễn Văn A', 1, N'5/9/2001', N'0912875643', N'', N'Ha Noi, Viet Nam')
INSERT [dbo].[Info] ([Account_ID], [Name], [Gender], [Birth], [Phone_Number], [Email], [Address]) VALUES (8, N'Lê Thị Bưởi', 0, NULL, N'0379823454', NULL, N'Ha Noi, Viet Nam')
INSERT [dbo].[Info] ([Account_ID], [Name], [Gender], [Birth], [Phone_Number], [Email], [Address]) VALUES (12, N'Lê Khả Chính', 1, N'04/03/2001', N'0987654321', N'chinhlkhe151215@fpt.edu.vn', N'Ha Noi, Viet Nam')
INSERT [dbo].[Info] ([Account_ID], [Name], [Gender], [Birth], [Phone_Number], [Email], [Address]) VALUES (13, N'Lê Khả Thành', 1, N'14/11/2002', N'0123456798', N'chuaruatoi@gmail.com', N'Ha Noi, Viet Nam')
INSERT [dbo].[Info] ([Account_ID], [Name], [Gender], [Birth], [Phone_Number], [Email], [Address]) VALUES (15, N'Le Kha Chinh', 1, N'04/03/2001', N'0987654321', N'chinhlkhe151217@fpt.edu.vn', N'Ha Noi, Viet Nam')
INSERT [dbo].[Info] ([Account_ID], [Name], [Gender], [Birth], [Phone_Number], [Email], [Address]) VALUES (18, N'alo oto', 0, N'11/11/1111', N'1111111111', N'111@gmail.com', N'Ha Noi, Viet Nam')
GO
SET IDENTITY_INSERT [dbo].[Origin] ON 

INSERT [dbo].[Origin] ([ID], [Name]) VALUES (1, N'An Giang')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (2, N'Bà Rịa - Vũng Tàu')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (3, N'Bắc Giang')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (4, N'Bắc Kạn')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (5, N'Bạc Liêu')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (6, N'Bắc Ninh')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (7, N'Bến Tre')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (8, N'Bình Định')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (9, N'Bình Dương')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (10, N'Bình Phước')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (11, N'Bình Thuận')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (12, N'Cà Mau')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (13, N'Cần Thơ')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (14, N'Cao Bằng')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (15, N'Đà Nẵng')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (16, N'Đắk Lắk')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (17, N'Đắk Nông')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (18, N'Điện Biên')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (19, N'Đồng Nai')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (20, N'Đồng Tháp')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (21, N'Gia Lai')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (22, N'Hà Giang')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (23, N'Hà Nam')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (24, N'Hà Nội')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (25, N'Hà Tĩnh')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (26, N'Hải Dương')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (27, N'Hải Phòng')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (28, N'Hậu Giang')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (29, N'Hòa Bình')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (30, N'Hưng Yên')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (31, N'Khánh Hòa')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (32, N'Kiên Giang')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (33, N'Kon Tum')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (34, N'Lai Châu')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (35, N'Lâm Đồng')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (36, N'Lạng Sơn')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (37, N'Lào Cai')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (38, N'Long An')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (39, N'Nam Định')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (40, N'Nghệ An')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (41, N'Ninh Bình')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (42, N'Ninh Thuận')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (43, N'Phú Thọ')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (44, N'Phú Yên')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (45, N'Quảng Bình')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (46, N'Quảng Nam')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (47, N'Quảng Ngãi')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (48, N'Quảng Ninh')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (49, N'Quảng Trị')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (50, N'Sóc Trăng')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (51, N'Sơn La')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (52, N'Tây Ninh')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (53, N'Thái Bình')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (54, N'Thái Nguyên')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (55, N'Thanh Hóa')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (56, N'Thừa Thiên Huế')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (57, N'Tiền Giang')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (58, N'Thành phố Hồ Chí Minh')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (59, N'Trà Vinh')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (60, N'Tuyên Quang')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (61, N'Vĩnh Long')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (62, N'Vĩnh Phúc')
INSERT [dbo].[Origin] ([ID], [Name]) VALUES (63, N'Yên Bái')
SET IDENTITY_INSERT [dbo].[Origin] OFF
GO
SET IDENTITY_INSERT [dbo].[Packing] ON 

INSERT [dbo].[Packing] ([ID], [Measure]) VALUES (1, N'kg')
INSERT [dbo].[Packing] ([ID], [Measure]) VALUES (2, N'suất')
INSERT [dbo].[Packing] ([ID], [Measure]) VALUES (3, N'bịch')
INSERT [dbo].[Packing] ([ID], [Measure]) VALUES (4, N'con')
INSERT [dbo].[Packing] ([ID], [Measure]) VALUES (5, N'cặp')
INSERT [dbo].[Packing] ([ID], [Measure]) VALUES (6, N'tá')
SET IDENTITY_INSERT [dbo].[Packing] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [Name], [Image], [Origin_ID], [Category_ID], [Price], [Packing_ID], [Amount], [Sell_ID], [Description], [isActive]) VALUES (1, N'Thắng cố', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxh3XZ55JJ8abftLTGIB6kAcMy7sm0EL0rwg&usqp=CAU', 22, 1, 200000, 2, 214, N'3', N'Tháng cố là món ăn đặc trưng truyền thống của người H''mông, có nguồn gốc từ Vân Nam (Trung Quốc); về sau được du nhập sang các dân tộc Kinh, Dao, Tày. Thịt nấu thắng cố theo truyền thống là thịt ngựa về sau có thêm thịt bò, thịt trâu, và thịt lợn. Theo lời của Giàng Seo Sẩu, một người tộc Mông 65 tuổi ở xã Bản Phố, huyện Bắc Hà, tỉnh Lào Cai, Việt Nam, nấu thắng cố ngựa ngon có tiếng, tính tới năm 2011 thì "Món thắng cố ngựa ra đời từ cách đây gần 200 năm khi người H''mông, Tày, Nùng về Bắc Hà cư trú."', 1)
INSERT [dbo].[Product] ([ID], [Name], [Image], [Origin_ID], [Category_ID], [Price], [Packing_ID], [Amount], [Sell_ID], [Description], [isActive]) VALUES (2, N'Bánh cuốn Đồng văn', N'https://thodiahagiang.com/wp-content/uploads/2018/02/banh-cuon-pho-co-dong-van.jpg', 22, 1, 50000, 2, 155, N'4', N'Thoạt nhìn bánh cuốn nơi đây không có gì khác nhiều so với bánh miền xuôi, nhưng khi thưởng thức rồi, mới thấy thật lạ. Cũng là bột gạo hấp tráng mỏng, nhưng bánh trắng mịn, mỏng, mềm và rất thơm. Làm bánh tưởng chừng đơn giản song cũng đòi hỏi sự nhanh nhẹn, khéo léo của người đầu bếp. Các thao tác nhịp nhàng của đôi bàn tay, từ lấy gáo bột láng đều trên mặt vải, đậy nắp chờ một chút cho bột chín tới, rồi giỡ nắp vung, tiếp theo dùng chiếc đũa cả hớt bánh ra mâm rồi cho thịt mộc nhĩ băm nhỏ làm nhân, cuối cùng cuộn bánh lại. ', 1)
INSERT [dbo].[Product] ([ID], [Name], [Image], [Origin_ID], [Category_ID], [Price], [Packing_ID], [Amount], [Sell_ID], [Description], [isActive]) VALUES (3, N'Thịt Trâu gác bếp', N'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxUUExYVFBQXFxYYGSAZGRkZGRgbHxwhHx4gGx4aIBsbHykhHh4mHxwbIjIjJiosLy8vGyA1OjUuOSkuLywBCgoKDg0OHBAQHDAmIScvMDA0Ny4uLjQuNzEwMTAuMDA3MDAwNy4uLi4xLi4uLi4wMDAuNDAuNy4uMC4uLi4uLv/AABEIALcBFAMBIgACEQEDEQH/xAAcAAACAgMBAQAAAAAAAAAAAAAEBQMGAAECBwj/xAA6EAACAQIEBAUCBAUEAgMBAAABAhEDIQAEEjEFIkFRBhNhcYEykSNCobEUUsHR8Adi4fEzchaCohX/xAAaAQACAwEBAAAAAAAAAAAAAAACAwEEBQAG/8QALxEAAgEDAwIEBgICAwAAAAAAAQIAAxEhBBIxQVEFEyJhcYGRobHwFNHB4TIzQv/aAAwDAQACEQMRAD8AVrUwblat8CUqeDsrQvgeJ0ZLiRUxuggG+OnJa2wwJF+J17Ttak2H3wJXzOkwtzgbNVyORfvg3IcP0jU2FuwUWXmMUXyZvh+RLczmcH5qsqCBgdq56YjYTc4SohmR+aTjoL3xqpWCjFa4j4gY1AlMjuf7YsLF2lhqVOgx2GgYV5fjCWDWbtgTi/H1p9MPp6epUFwMRL1kQ7TzGzZgkwMA1eIIH0sb98Lspn6lQawNKnbucCcRryD6YU9Eq1r3jUYMt7S0fxVMLqLD74T1uKOxiwXCAOLRtgtIJlpjDPLA5kA9pxU+uBsbSMEVssabAtDAbHHWZyggvT27YmyNZApDibSFOOviHbOYD5IYzsDjvL1FQlWEriPOGTNMQh79PTA9JiTJ6dMEtmEBrqcwnzdDkoOU7TjivWLXBj1GJcw5ZZwvFMi6nfcYbYWzFE5xGvCuK1aJsxZSdjfF84HxKlWMagGHQ481SrNpt2OOxIYAG46jCaunV+IaVCOZ7gFVF1WPbALS3O+3QY864V4lelUC1CXQG4n9R/bF0qcYSsoKNbt2xQegyxwYGbzFfUcQnEbHHSCccJ1p2i4kCY5DRjAxOCJkWnJXHLLjt8ROcBe8K1pE7HHVIziRVnHFaoF23xPEiSaPXGYCGSd+bvjeJvOtEdGlJwypEC3XA2VHbEusJc79sWj6oviEEdWPxiOpXJIgWxGSTdvgYKpQo1Nv0GEtUJwsMKBkybL5cA6m3xvNZrpgDNcRnAoqrvUcKPU4KnSZzYCCzgcwurnIHriKrxIKJflGFlfMOH1KJQdf0n2xXOL13r1NOygFjftjUp6Fdhdzf2EpPqH3hFFvcw7M+K/McogGmDc4TVKimop1QVuSOvpgXgLBarFksRF8HcWydOeRSDM3/tiobBrAWltR6bkyWtX1gdYPtgHimWqQDUVgG+gt1x1QQtsbzBA98N/GLaiiEmFH9IwVyvEnYGBJ6RdwriT07MZgQoO2GOX/ABUIUc35p9e2K/5EqYm2GHAc2tNiakydjNvScC1rXXmcvNjJKdHQ8Ge2CapIsNsay3ElqVoBBIuSR+uOHuTB1X3H9scrXnMtswhSfLkEkDt0xBmqhcL6YPpsFpVFqEISJAAuffCbLubyYjpglyeJBwOYxp1iCqnYgQca4jQCXQyJ3/4xFl2LGNGoxb++OsrmWQysEA3kT8Y7baTuvNUGIuNvXHeXqfVCgk9T09sTGrTdm1AruVAuJ9R2wFTeVgDmJ3nYYJmBwYAXqJK1Pl35pmP2xyagsDYnt9t8SlQYB67d/wDjELVJXTb/AD1wQWCWkRTa+CMnmmptIP8AziEIR6g4Jya6miNUiPUeo9cFu2i4g7dxtLJlOKM5XSZtJU9MO8lngw2I6YoLUygBDNqB5gbH0+MO/DuddzplR1vvh1GlR1HpcWPcYlau9Wj6kNx2P9y4BZxvbCOoXQavMG98PaWXdqYcAERcg4pavw56WRkR+m19Opg4M4JxHpxIq4lQAC+M60vSKwEnbA9GlrOoi3T1x2imq0myD9cE1m6DHEThIy2Mxz5WMwOYVhErVBS2ux6YgrNHM12PTECNo3u5xMKLhS7QYmR1W0g4cz7sdIKpb4zBUIud+gwNVzZY4GzNZjBBGkfViGtmRoLJP9Y64YiAC7cTtpfiboZhmcgDlH5j3xPXqUwktSDn0cqT63B+22K0OLauUWAPTr746VK1aQqnso2n5NsbWmFKlS9RyfeZuoNR6lkGB7Sx8Ny+ioHRtVNjzUyOZQwiI9D1FrYjPBwrNUNOq4AKcqnSDsZI9f0OOfD2QqUqxFcBeTcMHEAgzK9ow28QKamaWnSYr5WjTBO7wXnpJZh9gMZmoqhXOw4PabOnpeZTG8ZHeIc54dYaD5yrIDhdBkqTEi94OCvEXDDWqrVpstlCsC4BJHUmY7YsnjCoTNKmpBIAYg7BbgajYHb7YrNSnQWiUapSBsxIgwVMxN79IxUDk5lltMtiOs54X4celVDNoMCVCuDLHae0YBznCcyzHzFQl5JuGI9LWxLnMuamkqGXY6hIJHSABIwvfhdak5Zm1AgwZ1X+JvhwfdzK70Wpi1ribrcNrrMUzpBgkD/LYgzOUUbzcbHHbhoMs4WSAZMfvggcY0DSRrXTsQsD9J/XDtrcgyoSt7EWldzWQekwZSfjGZTPPThhsTfvh4+cRyOQgf7W3/8Aq39MLuI5KYeg2qfynediPviLj5zip56RpS41TqghrE9TvPfEz5ZgvIp2m43GK7U4afI87S6stQowMRYSSIva0k2xmX4rVQGGLLsb9O2ODdpBB6x01aBY77xg3J11MArPqMJ8vmg4uYaRA7g4IqNpK6RF9vX0OGHawtABKm8IzdFhLUzKd9vjHeQ4ezan8shV7mCbXjE+TrCnUOpZ3BQG21oG2+I+J5wuZlgASCAbA9sK9RO37xlwBuhORpNpLI4WQRO5E9Pc4EoZYoJIkC1ztgmrmj5NNC6qGMGNxFwTGHWZ4Wi5dA1iROvck+p9iMLNY029XX8Q/LDjHT8yq5d9JvJX/P8AJwbRy7OxamNIUSSf3xImVKOrWdC2xsD89MEZ7lYUpCKzS8EEzFgbbXw81QTYRIpkDMirP5gl5lbgjrPWO2BvO8pwwAaDMEWP9cG0qLrTPmQqi2oGfT3A6YFzVFYhPqgESZnv1sfQYNSvEWwPMnTiAO7QW3HT2xb/AA5WaqpAYops3bHnCodcBAYGzH+/7Ysfh/jRp0jS0AjYHqPf++NGjqT/ANbHHczN1OlDDegzLY1CrSJIPmUhueoxiVPPMIeUfUcOvC2dUotPTM2ae+IeOeHHpsa2WMHdqR2b27HFbVUEd+x6djC0upemLNkfcSMgKIHTEMYHymfWqsixFmHUHBNPGQ6lWsRNdWBFxO8ZjoLjeIxOlBerFz9WC+EZjWKq1N2pkD1I2kd8AvTk43QzdKlWpUyeeoQO8SbW7SPtOGCnuB6WhoxDjF5HxmmBppwfoDs89WmFj4/XABzaABCCGiUC3iJlyR37HtgvxigNRaf8oAgkgzEmI97e2BOEZdUpsKIFSs27EqoVe0uQJ6nENVZwAekupRVGO36yYZ/L04VaavXaQSyiB127z1xPSYOt694KkqNmsYVTFhP1GAcQVci8k06lBXaQzFlNj1tN8E5LL06fNT1Ziu0rC6oHpYX29sLaPpp6jdbCE8PykvJzKsXVlEhdyIgTM777Xwwy9NkrCrTUvEOQy2LhdAeSwLgHVAFgY9cLymmmfNYPqE6aZsADcTbdhE9ge+JfCfEJfQxYlWU7bgkAADoAY9L4DeSbnmWVpIuBxFud4pAZmXzGZjOskSbgmTPbaO2DuEUss9BWqK1MyVZYpntef5JsJG6m2ENTVWnYIK7IWsSbmPUWv+2BOIebUq+Tl9R/Kdpa8l/S46bADbEpjECqxI3dJdFyYqsfJr63QAKFAOw38v8AOAIPLN9No2SZmu1IhK4FQQB5iyh7iRs0TuPX0OBvMNBopKalZQJr/kBG4U2tMSbFjJ9MMK85nLl6hHmSrPo6GSA4Mi5Agr/vHSMHyLxSWDATdPIstO5asjcoQtqa2xUBdUet9r4kz/DqKotRqOnQQLNO5sGAPe919MAcP4kp5GpgiAFW2qQPqFrhWiQYkQBN4Y8KrPXJ0KHqA8xBXWIncNzQSekzedzI+rqTIYI/Cj5xRUr5UmRUYOBMDyxM+hAP2x3UCM2pFcAwvKgAaen1fUO+I+J01FXRVo+UzAlWcKoNvq1RIET0i2C+D5VqCqtViFnzBsdIGzBtJtMGfUfJ7gBzFrQZmI2j6ybxFUK5fyRSqINLhSxQ3aA5I3vt35jtjzfP5J6W8x3x6Ln0dtbFOUQB19TE7gySD6YrVXPaztHo21vQ4fSN1lTVqVe3bAlao1jYz/gxaODmpmaoCJsJJmywLsxO2Ak4JTq/RKuTYC4Px0GH3H8wMllqWWpErUqxUqsNyhso1RPMwJ9AoxJOccxCr6bnid53LAMVVwzA6bbRG5OB2cOsqIKi4mZI3xV8rmWpuSGgdes4tPC6DONRSJAKwCdXWQI2w0NjMXa5sJJRyz6FqMAQTZbTY7x97YZ5HO03GioIE9yRE9tx12wFxOsTUCF5KxcQfgADptbCw5yI1i1xI2PTYdcQaYdbtO37GsstGUrwCb6WnQloYA9eosZv2wDmMxoBklgxLQw2E7ThRRzYkAgqRsOsddjEb4lrBip5iVBk3AIuInuJxw04XInGuTgwleInQQV1q5styIAtOOqAVdLWLR9j09JxzlsyGp0xEsWaSBAAN463MxiKtl2VhETEiNiNo9/74NFHwi3Yj3m6iAtzTfYgift1xEtYgj6rNPa3f3xsglyQDcbb32n+k44onU2mBIMbgfrt98NIAigY+4Z4ndCKYBuZDdd7Ge2PavD+dWtSVpBbY3BuMfOebzIRlWopEWkk/BH9I9MOvDviCvkXD0702vpJ5W2kTFj7Y5qm5Ap6cd4HkWbeBnrPTPFfh/S5zNEQw/8AIo2YfzAd8AcMzK1EDr/0eoxceCcZp5uiKtK4iCD36rihcWyv8HmNSgijWJbT/Kevtc/bAvTNZLf+h9x2gUqvlPboftHerGsQU3kSNsZjKxNSUJmjdtI6nsO+K34j1Usyas3lWUiCI0iPjD7jakAgGAEDG+89f89cKM0v8TlRWj8WidNRRI3+h462XpuRh7kgbe3Ms0aYA3d/pLHnOHDM5unVWyPRDgkSCTystuzCPg++EnFM7Ty4NMglwIvZACbqEG95BLesYsX+nGa15eor2ZJWTFgxLC82lxcb7dxiu5DNU61ZzmAiuDMHdO4BNiCftvscKZD8pcWoCuOYufM1YR/JVAYhnRYPwROmIvEYsGW46iKoNenpAutNHIvNoWAe94xU/FDVhWNOqWAEECTBH5SO9u5OGvD+HhEYC5qAKSYsTt8iZ+McwFsyEYkm0lzdajUYaqtQod1FNRJ+Xm0WFhEWwTw/OU6Duaa1X1oqflgaTuI9haOu+EnNTpUw+xco038sm4H26Yc+CKqeYRUVoNVaQLfSCQ8j0LF537dpxBGOISsNwyf0QHKZemGNSGdiGZZeB3P0LYi8m3W46kZjiK0qQdaYUPCMEBliCTGomQJDTHf4w14stGhVZYgUgqDu4gmJsNbSf17HC/xzlq6vSpLSOmnTUFhABqMqs4uOhIA/+3rg7RDHvENTjtUmFRQo6SST7lj/ANYtng78WnXAQpyiZiG5gGI2mOW9vpHU4pCcMqEwYBJgc1/T0x6BwxkT+JKgKKX4Mk2C0yx0lTYQVkzMkme+OfAuYdFSXA97/SV9+Io2ZRFkFKhBJEA8xWJF2j13B95kp8NcM4koysWU3BgByYMyByg374H4Dw2oKr1qqOiJJbUsA6tgJ+oHftESQDOLHwbKtmKrVXJWmlILH5iD3i4Bk2i/QWOA29I0MS1xn9xIPD3EzUpMK6UyinSlSpvqPMQF2Zgov3m83xJncjWTMK6OtSm63EwE3EA9QN+/oNsNMzxdUpqmWFN1IPK0aT6KxmN2MA36xhLwzxVVeqKL06S0/pcJTZIJJAJE94Eyb4Iw1YAhTeMeHONZy76SpuFDQJvyrrUXIEQRHb1U8Z4ZlIKCp5FS0CorAmBBGokrvue/thpnuD0BWZ/Lk2dHDGwZQ2kqx2uREC3qcKuN0svVBpVazl7sg0ERuSqnaNvSw9sdTbZF6lBUBJHw/e8W+GuH11zKhrmSUiDMWn2vM+mD/Ey+dVqa3CjVpKmWaAOUaVFrX9ycRcLy1OkKdOo3MvKRrYFi7aQoJAGgFrrE2O2+FnEqEVanRqbDXFwQUkG9+4+MHvJe0pCmop3MkyfB8up1876T+YAL9uvzjjjviGoWmmCqgaZJhvYAbWx1WpMsHoRAO8neL9RIxE9NSAr8wPa5F+/TDVzkxLvjaot+YlyucbXN7C0n12w3ydXXSqh4N59iOgIt6/8AWFtfJ6HinJ9DviTJ+bTkAMFYQxUTYz0HXB3sMSvbvHgy9JTplmYbHa0D9523tg7gVemdTEEsg5pEDff1Gw++EdLMVDSUvHlgHRMjrv8AJt98SmSQqQjMo0iJEtYXI3M/G9oxzElbAyVADXIhjZwNU1qIQsWKgGCNwoAMqNrjEvDc9/E5j6lQiSpa1yRaRcW79sV/Jq+qnJbmtCRM+nvgiugBEI31a2JFwfY9Njgr4x2g2vz3lu4QMvT1s9QCorNIcDTY/lkjUSO1729RMzlqK63auAXJXSi21bxvECI1H/tZ5KlXq8y8sAAAdLbxINzHtGJEytO2ptIqTzNtb+pAUQe2FAENctDNrWAhOb4S70pKCrEXBuBcAr7XO8YApsFp6WVuWdTkzBta1hYe8Yl0FW5GJMFism6qQIN7zFuoj3xxUKjdiWLfU2q8nfrI33vAGHLY5gG4xH/gbxO+VcqXAp9Q23ae+L14pzqVcuTIDvAEGdJExB7Hb5x5fmMsIAUG17z2mPuSPicTUs5VWn5ZUnSwKHuI1QDsdiY3scXNO67hux7zP1NAkXWWjgnFWWkq1U5ha3bpjMK8txJXUEAN3Pr1xmL38Ggc5lT+XWGLRP4lyNQ0qJqkKrrzGb8vMqmO8yPY9sVrhUrWDKNSoVJWJ1Cfpg2sJkmwv3x6FxXi38PRfylWq1SXViA4SZ0mGlSVkASLRiieGeKmnVY1PxEbdWGrUSbmd1aOo6xMxGPNZA+H5nryBcDqbZ9v8S3PmEydQFPM01H80oNLcpXTp2A6iB6b2wP4n4KtdlqUX0uxDz/MGMzO7WO42Ig2MoNxOl5hNSg/moFhkazKIAAMm1ov1jeQMEeH8wrUnpV1eEaVJkQOo1bqync9u8YHfiNWkGweJLT4etVhl3VW8tS9MF4cEXKqT0/2WXa4MtiLN8P8slGZWkGof5td2WVHSSdpA0xNsdcVIaoHqEKw+ioCWkAQA6SNRBP1/UOs2mTiFZaNKnEVBP1BoVd7ajzb6QBFgI7YXcHiNZSMnj2iSnly5qUywNKtTFQMdhU6EDcyy7DoRiPKUIemhY+YTJK/SSnMrXE6rQbCYHrgzKZmi/1F0djykmDbqGGoQZA5oH2xNw7K5Ysr1ajJUVtSMDTUNcSulpJ+L2Nuzbg2iQpFyMyyZbO5XMaaucIpPbzVdgk+XKkCblSdR0ggyMUjxPx813q1khSz65gSQWZVExMhQuLM3D8vWbnFSoCNTKXpUlsxOoEtq3O0i046fgWUAqU0y7MNQYaqqsVEmAABKqdpMkiLyAcCoHUznDhvSOfcTzOgGqVAWJIJuSTt1uduuPYaPDdWSqs2tHq1GptqlpVRBfvBALHpqZtsIPPCOMtlEFJ6liwVgFIPV3Jc9tovviy+MOLmhRpUmIeoAAQltbG7GN9Or7yBvcS5Fp1Ciwe594vzVFqyKiy1NVCgKLsBF4MKIIEkwNvyrzMOKZ1MvRdKajUtLU0iACV0IbwCSSpvMKo7jAWXVspQkDVmKoUkkiEm46WVbmwuQB9KSQ8/w1XRadetUXUJb6TuVYEhr6gFXc2BPfAKJYa9iBKjwPjlSk5KM0kGI/m9VI5lmbEWxZ/CPBKmaGYqsAkMvTYag7lbyBAFhb7Y4PhfKAmo9UsF5ipZVIB2MIdR2G3fbA//AMoWTTy6aEZSAw5DE3IMSotM+hm+CKwFbaMsL9IfWzVGsWUhRVpsfLbawLDTI9sC5bgys4qq7MokGmJa5Fwjs0SCNUCYEm0A4g4ZlFrVgtLUVdgIYG3QAmbbG5277DDvilall2NFqZ8l0AFWSDILcpgxp2hBA6gyCcQtzcQKoX/kZWOLLRLFlhmpCQiksAehYoQWIg7bdZwV4sqQGjmXykqrUhZOr+YQARcD2OFmaylWnUNRagampJ1EzCRBEQGJtEb2n1wzq0RmMs6IxkJ+H3Kgg6PXYiPT7SBYiKLblawtjtK1w3jOyuSU9Ttiz5nKIyK6zMDTE7HbmA6EHvjzmoxHoRhrwriRFptM3vi1boMTMv1OZYc2wL/mJP0lhMR7G3ex7YCyZ8s/Vy9TMgDpM7bERfcYOoVA7oJ0lmCgk2vsW7KJ/U4Nz/BhTnzmABUMumTILkCDEE6QG02Pp24qqcmHvZuBEGZFBzKHSQZAgCRPYWN+2MclWCNuRO4AiNr7RERibI5NEZ3OkaQdwTF7N8kESdjjXEUV1Fy0FVMjTczcAFtgP2EXt1pH5kAJpMIYMuouOUggzMDtIPTtjMxUDGYEH1MASTpI3AmbYFzXDai3RiwImC0sNJ+Ae9u+AjXqU3JedczDDc+2CUdoDXjnLZhgukkBSRB3Ci1ultvuMPUyhZF1sQlTljVEQuqTsB3v9+9TynGQCCVCtBGoCRf/AG/vhpw/i8U1hgpkkfSSCBEnUNusemBNziSLTkZcrem/PTRmJHQGJuDDKZ3jrcHBC5x3UDSzMNMWBJiARaLG/SeUdgQHRrlYAmQNJI2j0+w+JwxyVN3pMh1AAaxtERee1viTth1tuYq98ScZgkWM6t/qI7AktcW3OCsqNRKheQhWEbg7crdoiR74W0qzJDKSF1GAdJn8szH0iTaLSD0wTw/MMoCLSEjUdcg8vUkzBiPjEsAZykiJ62fai9REaBrJhTYTjeFXFT+K8XE2Pf12xrDvMfuYvanaXfM5sURTRqbHzUDATOlVAkkixJJIK7iL9MLOK8C0r5iELQKySAWIkwSQDIG2+C87Wo0y9A1ApMq2q+g8t9ZnqomOxvFjL4dqnWaFdWam0sSsNogb32UkXO0iO+M00tovNw1fMa346e0q2T4gtFwabNUYWEloIO40joexxZ8xnToRqaQH6CQwYdNUiY2vMqel8K+OZIZRJVCPNNnZYtvC9lgj1NumIvC9d6gqI0FDAYm51MeVpO30x9sKfI3CHROxvLY5PbpH9KilaipKgc0qAIuApUqIO/Y7x8YM8Q8XbL+XVWmtTL1F/FpwNALE+nKSbyv7rhT4dZiatByQZQpAuoV5IHtrJ+ZxJneOadS1ERkM2BKsJAmQwIMgAyNW8nAqPVCqsQtuDIXzWVrR5avSJUsYqEdWBiQyxyzJO3aMPcnkUqUwVp1GgDnUo87GNAOkobmdxPTogNJKpUGlXDActlBMAnSeXmGhtU39LWL6h4jo/wAM1OhR8ldDc6tqkyBBfcttf1B9MHtgrUxkD7iSUMlQogulKapB5qyUdMGW+kmNz9R1Ha8DBOd40EpilUqJQ3laJpU2jYGymwt9uuKpmsxRWn+HWKHSCzLpJJIAgMLyAWuCblugxNwPwatUhn8wktdWAB6WiDrqEzyzbdpMK3Z7ySwxZRLH4cAUtmGQJTAOmTLve9V2PQFSR0kSIAE4ubRG/jK1MVKtWRl6ZBK01B5XiZYtuNrRBIM4J4vWRlRLeSjgOFIioymBRU/mpqRDsNyukTBbCl80lVtT6Uq1XaggJlgdflqAotTUfWxIFgQJnAWN49qi7M/aEvxdqYNV5rViIRQAQrEfU5UaRBkBVBjrJ2UZbIVKk1HplXZizM2lw09DrEyBaDY6h2jEJp5hMxVWlqZKbvTSQVFjBOqwIkdLR+m6VYJBJylQ3ZvKNd2iwmEJE7fHQb46zQBVp24OfhCsvwWq5YCpQSL6rDQoNjoQQIPUmLj0OLAnhjL1iHqVatR1EQlNQpsDrCkNIvaT298IKXGV8wJQoUee2tg0/lmQYtzCCR0MgRhUnEa+azBTzdSgrTWmWCITt9CwvRjYYmxtFl0JwJcnz2Ry7FVNNWYANpFRmbYgEoYHQwYFpxzxLilGVpNTWHghXphluAQCzMLxFlm9t7Yq+a4QauY8qz1FMFSdAaIECYJEQNNiAtogHEVXxEgrVErqAwA5wuoazBZdLCNNyARYhRYzIgXJxGMyoM2seJaao0JKUF0SAYUgCdyNMiwJHXcdDiqNxBcuGamQ1MPMKSQCSO6iDvAuNxfFn8P516lN6mWZXCNoq0nMahvTdTfSSJSGtKgypJwXxXw7TrUWbyTSqOslWAM9rqSCQ0dZ2ve7lQGVWqFb25lC8V8NFZjmcuNSONRVQbTuY/pip0KgE27XxY8rxarlKpQAjSwNSnJFx1HYwd8Zx+mlQh6YLhzNtMqe1hEHsTYjsRhhBQ7Tn3lQ7XG9cHqIpymdZWDJY7jbcGZv64bLx96jp/EVGcKIBMctuiiB2E4ry0pJC/V29sELUvzAzubkfqLjDBzeIIxaWR8pSZQVdzNyCAACdUw0wdhcfzHsY5o5ArLixi0nsNQM7xI6f2GEGUcqw0nbeTP6ep/fFiocTBA/LEnfc22kT0nrgwAcQCTzMp1CywRzfzWE/HX7/wDJetTTJqKrzOoFVhbmASVME9DP7TiXKNT0ipyTTlwbCZ2J9oNt4tYXxlcGSz6Wk6hqK9tMm89BEWtiKig4hU2IzE2Y4XQqaygKGOQTaZ2beJ74RLlGUmDp6GbfF8XzhvC116yykmQFDR772HKB067Yk4jw2jUBQgJE6XDGxvAgxIMbn/rkNjZuJLC4uOZS8vTqGWW8Rqjb0MdBJj5xYshmT5aqqSeblALGIBMx+W36fcrKcOp0wVbUzRaoDpBEXkAwIMjfpibJ8BrCmy0a9SnTcSw1aRG8HFxdGai3RgR95UbUrTazgg/YxVRpMEDVPwwTygwJtPL3G0CMFQtJLsSCDaBtaw7YzxLkqCimlN9TiJI9t5F/t3xLwTy0SprIapfSTsBvN9h/1izR0gRjuzEVdTuUESpZhFLExjWLbR4L5oLoDvf33/YjGYP+Ie8T/LWWXxLm6LMozNMBTT+oBagUEEgi0gsYggrt2titZrNL/DqqafLMcgHTm9ZZgTIJ2IsAJGLNn6q5jhyVvK0ukU6inYKZZHiD1ER2OPPqw8kgVF5RB+esH821vnFL+LSeluBOe/QzTo66otSxABH1I+Jljp8fFdEymZUMo+lj9Tr0Bk/WPQz87g1hWo1TRpMayHTVQ1FFQxJAvUBSQOoAkdjIE3hzhFPOOYaFSCroVRw2rVF73GsTB2EbEYsGayVEqMvmKpVis0W1aWMAghiFgDVIPTUJAk4y3XaxQ8zWRgfWv7fpEvECUzCOtLndQ34YUE9wSXAMEkWGCXyYoguaxpEPekU1lSbmzEzM9I2iImRFpPQOkxroh3o1JkEnZierAksFgiZ6Cw/D+BV69NqdalpGrlYkKJhrqu9iw2BG/pCVGZYqHFx1/PX6wvj/ABd6iSarmm08yiWYWJVizSqmI8sDoAehxXuG5VqrnyUqMGhLLfcEgEMBIMGJxdOD+HfIpstVqbsByooYBNwxLsQSSIGym3TCziXHaWWUkJLGQEpsVUXBYGpqZo2lR2AkRZh5tEi1tzY/Ma8P8LrTLcyGorA1H0jTT7sGJ0KxInWVkCAFmcMmzylfKpufKAKPUAYM1gGRdQlVI3f6zbuQapSFesnmVylJDB8oWCiJkAg80c0sSVEmZIGB87xRDoDCotIwVCypIn6rmW/P62vck4jMndTUXF/8xgXXzfxeRFXy6KAMAAIMCAAJIE3P/scL6Aqebl1qoqp5oLMgtqJBIlTBJve57xGOKHFadOmbPU1AFdbncGCAsEADeZBtb1YeHs+2br0qFJHbUQDIEU9MTVDG5RTeGkzABvGBIk+aLdoRxPM0y9WtUUhgaihwAGS5TWVUAOhInmBYbzYBqnTzBpVlgIvNDFlVzv8AzMIgGDaOhx654q8BBE81Dri9XSoBmINQ0501B3BIgSea4x5Jx3gVSiAx1MrGzQSPUGQGB9GAPpGCiVdWvY4hvDq7l3rMdRMgBtJhSSiwCIGmdQsLi2COHKKVZalLQQlnj6dMFZkE3hiJA67Y7XKgZemSBoZit2Climk9bQSVt6GMc55NGSqFEDBpmou/O03gnSFQgQfX3xDC5tGUwApY5kzcQolg1F3BYuz1p5ixuulbBVmxA3CibDBnH+GlqKcQNNWqhGStTJBmxAqqb8ygzfbSQb4pnDpE0z7j0N439z98WWvxk0cpRGnl81gebcQTdTcyWYdNjvNhT/kZaqhWpAnHEh8F5vVmq9NeUVqTUzpMQ0Qj/DHptb3wfS8QjMBKNVjSrIo0VGspYiwMGwIgFTYzIg7rvCVFEOYzShtIU06ckCDU5TvuRqn2U9cCpw1a1RlBBeev5r2MD6QFK2vti1Qps7WWUKzCku5hyY541wapWpl8xAzAOnXyxpBAlmkE2uJA2I64AzWQFJAihTU0fUpvMXEA7TH+HDHLOwFSg/4jAFF6kgg21xIET9vQwWtPLISHqglf9oGuR19dzAO+L2m0zVMsce3f3mfrK60jtUZ/xPN6+RdGLSCb/P2xwKsmKggm8n7xth/xI01qkqSEk2vKk2vcEH0xpuAEhKpYujrJgElYsxb0AKHUNtYtbAainTThr/SBRZ35EQsk/TO18MQ6HY6WI3BsT3CkAg3MmRtt3K/+K10GtIdNYX8NhUOkkjWQpNrRadjt1W5mnp5bmCeZZj2IPt074rI4PBjmUjkRpl2qUwrIUcA6jZRNgPzbt7T3xxWzzDoVa0j/AHSDIJN99rdIGA6JYRqWxFiy9B0BgTcAfpjtnIuTaIKy2xM6e8SSd9zgveDe2Iy4XnSGsrOpUk3PQBWcCQAsgT9gemLGOJTUKtTClYuDOk2jY2v1nrHtS8nSMq4BABlRMRfYN83sN8WjhuXCEVCY3DAGX9OW5Wdpa3tiJOOZJUqlhBBJBMk9evXf29sD5/MmpTCFwqkgyZuNNpAtuJxEeISxC8z7wobSkgyNrnYdt/bC6pl30sajBXOwLXjtHQe2NTSUyt2MpV2BxJcvoZlKrdReQbjawEwT874IzXECdQamovJixtcAjtgjhVVfJZ1V3cbzygR6Tb98LsuPNZdSqFnU4Ft7R82Hz6YuMTYW6yni5J6S38I0rSXWwVjzRPfbr2xmGdHhIKgogIIknW1z16fHxjMWLjvKRA94L4V4slPM+VVP4VbkYflB/KfuB8xiLxt4bAYkqA4+ksQFqC8bW0nvuMZl+DqDqmcF+IGp1sr5dV9L0v8AxsTZlP1o3aPqBPqOoB85otTsBVuJu6nTl6gdOZ5vwFa1Kt+FyjVDqXAUx0kxJAM2OL3VovmNBqPT5AWJNhLASoJGrYdBuT7FFTyaUFQiSmzNAYxcE6JkCet/6AqtmGospDh0JK6uZSP5VtZCOjW3iQDOAeg9QeYq4E0KNenTOx2yf3mOKWYp0yNIVwnRFIAMgEl25zcxYd4GFfFeNOC6gLRDWDAg7XgkqTPUGT7mcc5qqtFtRJAq7DS1yTzdLEQJA29ARIXFMn5oKmNZgqCSBUFyY6q3+4TJte+K7oUtfg9Zc8zfcqOORIwnmsNWY0ggc0zItOpRcHpInp6yVm2oIRUdg5F4iVXeJZrHqI0mInsMVDMtodtBAZSZAnv0sL7/ANMSf/3qxAljfrMbbg+t8AFMWXQwrjPH6lY6VRwrWA/nki0EE9rTJO5OPdeHeCcquVp0K9Faj6QztfUG0gHSwIK9rHHkf+mWU/iOJZeWYqpNVlZiw5BINyfzFMe71a7M5gGx7W+DP98VdZXamFCckzOr1GDczyvxb/pDVs2TqiqoB5KhCsLzZgNLbnovzOLn4A8KU8hRIBD1n/8ALU79kWbqoM73JuYsBZKFR9ZGkx32/fEv8E/NcXPX5/vipUrV6yWRT1vj6RRrs/M2a2mP2P6jFA8X1UoV/JqIPLroWpFvoePqovOzKdLK1gQRNxOL/VoNAVReLsdh/c42+RUgeYA8bawG33i3WMTpfOpuQRiw+APzh0appm88cr8I82mP4flT6PLq6wp5i5Van0k6oMG/LvaMDcIyVeiTSWTTb8hZFqJM86tIDLYzBnbHsXibKitk69IWJpMUIizAEqR7EDHhPAfEtY0g9VRUUvpkGWO1youYnffGirK3qBmtptQKl1tA+OZVbhR+MhiorQhJOzCABERaJvM7wX4fyD1UYVfMpKqazV/KVOlbqbPyaom2x23sPEmOYCUyo0z9LgbKNXLq5lAAJNvcjog8S8UemtOlp8ujpZV5RtebqxBVfMkAg3APSxKMxtUhRniRZvjJRkCU2TLU9dNVZZ1KQGNRlizbEQbgHbmlo9Xy8vU/CQ1BJEkyDFyu8gQDNrSZ6YruV4stYMjgl6lizc2juyzOkxIncT1k4d5TLSGp1K4FSNDMqalZEU8oKtpJYfmmISPzGe3qDnBgqrshsLiIeGcUJ+qoS7PqWAD6fWzatjtccsnacMM3l/OVneslJVLq7ERpKgQOUam1zaP5WHS8uay2Xo5aKahCysabOQ9SpBgtb6FkRp0idMzsT3/p9rVKtRpKFwtLn0TVVSQVB3OkkwYHKJIizU1FRL7DYGVKtFGsGyfx84ZkuB0qdEmrTNWqw1FG0sxNtDBmEhChkyTEvvEiPw9wJxWVWI0pLIeUwxItUgn8M6SJIhpMCLlg+ujzazrQg6RrZabklyKjEzBpCD0GpRzQuGuXpUFLFm8qVLkDzHRpYqdKm4UOByuBc2/mFYs2TGFQABA8hRr0q6Cm9IgUR5lQEImh2LKCGJLHa5kBZ21DCfP8LpmtVfXQWnUOhYawJYsGYKSETy0N73MzbD3iObKU6ioPMDoFZNSoqmRDbcxuxYI0ET1AOAf/AOTSr6UYQBVEsr2LMlxzHmg7seUAxczBJUsd0BkuLRJmeH0aVJodnaTGkTEGDHQDfuf1xWczVkaKaMDN9QGqT0A+ffHqviKnTamuWhNZcIj/AE6GBgJr1AkMIuDuRMExjz/PZdqVVQ0qykczXY/ysDtpP83vfpjZ01SlqFtaxv8AaZtam9I3vcQcZREamrgySNQmIAIkajsT3uB2PVnVzNQO3lKypHJGl4EWGsqsnfewk4NyOZoMwZ2OtFVWAJaSBDNLbSwJgbTHbG+L5xXJCMaYEQQpAjvqKkm4gRvfGkmmpr61FpntXdjtP+omyfEjlyZDEkyZvptefUnp+uJ63EqbmWWGieXmN/USBifMgCCW1ILXFmI6kMQQB/kG2B/Iu76dKTGqCixaQJnuRb9OpG4wDOwckSSvUYBdIKhrIiqJv+Yn9pw54fkjTQ04XziVkOuqQbwT8wDbr6Yi4ZkFWDVu7zpk6TG9p6Cf1xaOB5Hy1LzZogd4/NcT/wBT2wNWoKKF2+Qi0U1nCL8zDeH0Fp01TsP+cZiWcZjz51LE3mwNOtomd422GAM2FaSVBtEnt29r4NzjD49MLqk7d/0xWX0xxzGpyVHMZdTSpqKtONYLaNQF9SnofbffvhNkqHl1HSq003+glZHbSQP0N/0xqm5pHUDtvvt2gb+2OF49lq4UMhUiFuu5+kavWOvtMGcb+i1QcbXOZjamg1M3UXB+00+RquHoqFelr1DUxBVgsKy9xFoLQQFBkAQBxzJZhUUtp5TczIPYkEWPcbfFsOq2YrUhOkFO0wY/ePuPQYrnEYEqpqKXIB1Tpnpq3Uj1B22xYq6elYm0KhqatxY44iniLs7aXUK4H/kCkTPQkdPUdzvgHI09M06g0gsCpJiG22vIYfaAfdychWhkqOIi2gi/X2/XCerloXSWBA2mQVPW+8TuLj5xk1tPUGbWE0kr0z1uZ7T/AKQeEqNLL/xmpjWqgrvCqAbgAbkkCSSdrRefQkyyjfFB/wBD/EAq5apl3IFSkxIHdW2I+ZxdM1mdJNzPQdz2x53XVfIYFhe8U9mzCzWRICgS1gI3OJxmLkbkR+uE3DaJk1Ddmsvp3/t8YPqUoY9yAPtecLpaqqybxj2HFrG3zi72k1fMnpiA5iNz8xgaowDR3v8A574yi1zqFh0n9fTFF9TUqVbE2+eBI3GccZzSplq9Q/StJ+g3iABHUnHlvEamWoQvNSBPKKJCljvbQLCIILMBBGLV/qhxWkuTegKuiprp8twGGtXKzEfSDYe3XHm3jSp5lemQdqSyI2NwR/8AkH5xs0EKUrnn27zY8LAYkjPSKc07moXDsigyoB5vcsLk2GNUaZZixJJJkk3MkyTjaxILAn9MMaZNRjoRup03MACfewvOFO7ET0lKiiniT5WlKkBlWFuCwXUJB0/7jMED/b6YxCgV9SsW0wkGAG1CWPU8oYAXuR7iMgDtjmmO+KobrLZS+Iv4jk2qLveNIJHtY9YGkR2xY/AlBDTCeXrqUmnSgLfUGUuFP1MFLWuDf6bHAJenK6506hqi3LImD3icMOG59ajVqlBTcvUqAiwVW/DpyL6tOkiSPociNze05Z1seJh+IUqdI7lGZBxfNVEpsCOV6xeozGyswRG5wzWs3LJCjT2wfl8zRqaahCHQ7IUimrGkoA1t+eCpAA2by5k2AhfNtQSgrfj1fOpM5GkppbS+iw0hgSyCBcpMdB1TohWekUQqyDMIFAGsBxzNIUhCSbtEhRAgTh+T1maObxnxnhFFSAoIXUICE2N7M1zp5gbb9TGEGVC1qwpUDUQy1SqKpAZVDKxhm5gLRBJuN7iT6nEGWqqE+ZpQryWhpHmhdRYaQqhYImQwFiZMFdPMCU3aCAas1UGldRlJRdUKBqIEnlG2oHAqCB3hdcwjKUlq0+cIwWqW5mYwyqSOQ7xy+p1mesi8fUhNKvoY1Faqp1PeDpiXICrcACRN7kEtBw1np6qqKCzhmbSwCgFhpMapbk8xRKyCFYgkk414u4hUNUJSTMOIYMrghtTQpC6tkZdWw2K3u2LGlZlqhgL2itSFZCvF4M2ZoICQj1mUS7KLG3qdJ/pgDMZ1q86QoEjZY0gS31OZ99Km3pgLibl/PZwEIaQh1s5OoakhiSGuzGwFjtjVDKuXajTRLxqdJYnYwCDB6Cfp36b+oNYPYHrm086KPl3a/GLzhFE6R5cC5MSYsYEA739L4dcPyERUKgldK06XW5+pl+5/yMb4fwsUGSaZqMx2YwR6z0Pb/Di1UOHgM1Rkg9AGZv32+N7453Wiu94v1Vm2U/rJ6FFWALCDBBBMzeY9p++J2ebDESUyxBiBGJ9JkWGxkzf0tG3r7CMec1Gqeu9zx0mzp9MtFNo56zkIe+MwUlQxtjWE2j5X3p9OuIKtAAYPNGL4hMzt/wAYXeTE9WievwMBVUAm2+/rh1mEF5+cLq9Odvf2+e+CBnETvh3GzR0oy6kUHpJWTtfcem+GnGclQqIjBgpeywQt+hvYwbwZFsIWy4FzYC//ADhfwKtVrZgmmAKFOzs0kH03u3psB8Tr6bxG3pqZHf8AuZdfQ5308GOuILoUeYiBh22YR/8Ak9eU9PjFe4pmqdYKqDQxEuehEb7m4tfFvzWaX6agAk7mGU+4It8+mOOJ8IoeWfLqGmxEgISyz20zK/GNbetVfSbiZqs1JrVFIP2lQ4VnKuRzFOvSqqQpi9w4/MpIFpH6+2PceF8UoZ5Fq0nCk/WhMEX2I6X++PHVysg+dSZqewdJJ9dXce4EX3wqzVBQQ2XexMGS3L8AAr77e+MjxDwxK4yPl1l1K9/3E+hK/GsvRqJSeqisx0osz+23aThm9MzYG/XHzRw3h1V2IJVGBH1tE+xIvti7cE8V8QpP5PnUyFAg1gSvt5gF/aTjHPhzgbdp5+cnz1Bs32npOdpsHsDJ+cCca49RyaaqhmqVkUwQTIG57CwM++Fz8RzlWkwevQp9zSW/uGZ/2GPP+P8ABHFFVFem1SS1Uhjqq7wJEyIizWuZwnTeCMrljm/F+n+5Caim5tut8vxEfidq2ZJrMC8Nr5bjuQygSsQYLQCJgmLLMtmmqcxJOwknoLAe0Ym4NXK1z5w0Hy3UsbWKkRO0fPzjM3kXotpVQRBkIGIUg3ExbvBNtsXX0pKFUHHTrPQ+H1aenKgnBBzCqI2tP+f94KpU74H4DXZkcKsl7HlkgKdRA7CYJ/8AXDvhtRVBaecfRaQneof/AF6D+b2AOO6Nu2z1FOsm3dIcxlStmBB3j7G/axBg3uO9+AsYs+XyNF31Va5FJVBRCVpllJO7MeVmIDNaW1yNsNK3iDLUKbGloCoDARFYBtllyIY3/nJPzixT8Nq1OOJUq+LUkxyfpKLUohlIYWIPp9jgbhk0qdUU9btVeDcgwokSfzCepIO4A6mw8a4mczToVSdICwVuZPZADAW2wjf0wsGbYsZAVAIA3Ji/KA0R7wMa2g8KdCfMPpNrd5heJ+KJVVTTHqF79v8AcH/ixRGWTMBGnmqUxLGW2ZlULJAJuGmREg4YpUh6uZMQ7JHl+ZIQDy2NwIXSHYbnkgwRgThV9ZWkW1FhIB1bWMMIAFxFu8jbB+esoNZ+W0UgSQxEgagN99hblHXFtvDBypxfrM1fEbYIzFVZQdLUqmrUiVUKGmx1A6iasmFUEGFIMkGTuCybMIYzFVnZVZUqIFpl9hoIQkaVIpkWkgmfpIGORxh0RqSslGW1W5mYFQAukWXqbz0+VuQpppmnqNYC5Y6R3iBJPyMQuguxDHH5nNrLAFeT+8y4pnKukN9KhCu0GTcvaQPSwAtvEYS1OJFF0oWA1al0XdyRBLVGLNBHUAbmMQh6jUOYsVmGIgEnaN/XefjFu4fwGktNHqKaWoXDmWI6Qok/MAYuNpKKAYx7/wBdZQOuqXObn2/uUChw/USatRj+Zqci8kAk6Rzb+nsYxZW8O1KSqUIERZSQY3libH9AL2OG1PhyJOhAASSXIGrtE9OnfBRqgETMk+84GtradEWp5M6npatc7nwO0io5USHchniLbf8AJ/yMTlo3uT0/qcYDtG+3t7Y6YACYk+4+2MarWeq12M06VFKS7VEwE9cdg998cUgSoLABouAZAPaYEj++OlUm/wA4XGzqnttjMaPx+uMx2JMgahInAz0YH6zjWMwgyYprZEk9ye5sPX3x3/C7D5+fXGYzE9J3WJ8zRfNVWy9I6USPPe0idlUdWPfYR93qZOnl6QpoIRdhcySZMzuT3OMxmCEhpX86C5k4Ey7vSfUIMdDcfbGYzFhKrUz6TFtTWoPUIXluL0hqWorKWOokGRPtgnNUKTUvN+qEmI0mP/YQf32xmMx6HQ12rL68zC1tBaTejGYBkuGo4mjVcA7o23sDc2xzmeGVKR/8hje9xHWDM/pjWMxaZQFxKpdt9ovzWUAY1C5jYgC46WvGNZJyFjUzfmvAA7wJxmMxUOHl5MqbzmnnHqkMtKnqUQWiCJ6/Vfr0wZWYSERqkiS2hok7wdViB6RjMZjklgcTvKZupSYtTqFGAIsBqgiDzCIt6nG1zF/xsy6kABWIZmixC2lR0xmMwJpqHwI9XYjJhNR6ykw2tGuC4EkjrCkR1xzUr13QryBD9UCJ+d7YzGYYeJG0XkfDqjUiOUFB3Jn3iSO9sC5ompVY6V0wWCgADSt94n4jGYzAuxCYkBQWhXC3qBSKbm8RYCAekziShk2pEs9QgqegE362t2xmMw6moYC8zatdgxAtHXAeFtXJbSak25ioPod7fF8F0fDSIzebVL6TPl0V0xJtqZ4B9YB2xmMwqvUZSQOkGgN59XeFZjiZRqVDK00pVKgnV9RRFOlm1MN5sAoHU9BJrUhsCT3Lbk7ST1xrGYw6ld2GTNynQRDgSdhI7n/Dgc0A2+/7/wDGMxmKrcywslEX9MY5g2vF8ZjMdJnQ3j5/TG9cb9/8v8YzGYmRNAe/3xvGYzAwp//Z', 22, 3, 420000, 3, 99, N'6', N'Thịt trâu gác bếp Hà Giang là đặc sản của đồng bào dân tộc vùng cao Hà Giang, đã từ lâu nổi tiếng khắp cả nước. Sản phẩm có nguồn gốc từ thịt trâu tươi tự nhiên, được làm sạch và chế biến theo công thức của đồng bào Dân tộc thiểu số tại đây, nhất là người dân tộc Hmong, Tày, Mường... với gia vị mang đặc trưng của vùng miền Tây Bắc. Một số nơi, người ta gọi món này là Thịt trâu hun khói, Thịt trâu khô...', 1)
INSERT [dbo].[Product] ([ID], [Name], [Image], [Origin_ID], [Category_ID], [Price], [Packing_ID], [Amount], [Sell_ID], [Description], [isActive]) VALUES (4, N'Rêu nướng', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRT43gcTtrgFURlugUX6lQMZLNeQ6smEx823w&usqp=CAU', 22, 4, 210000, 2, 50, N'5', N'Rêu sông, suối là một món ăn đã có từ lâu đời, được nhiều dân tộc như: Mường, Nùng, Thái, Mông,… ưa thích. Nhưng đối với đồng bào dân tộc Tày ở Xuân Giang – Hà Giang thì rêu lại được coi là đặc sản trong ẩm thực của họ, nhất là món rêu nướng được coi như đặc sản của đồng bào nơi đây. Người Tày với kinh nghiệm của mình cho biết, chọn rêu nên chọn những bãi rêu lớn, bởi ở đó vừa có nhiều rêu để lấy mà lại là rêu ngon.', 1)
INSERT [dbo].[Product] ([ID], [Name], [Image], [Origin_ID], [Category_ID], [Price], [Packing_ID], [Amount], [Sell_ID], [Description], [isActive]) VALUES (5, N'Vịt quay bảy vị', N'https://www.kynghidongduong.vn/images/destination/img1/vit-quay-cao-bang-viet-nam-kynghidongduong-vn-01.jpg', 14, 1, 350000, 4, 59, N'5', N'Món vịt quay 7 vị thường được người dân Cao Bằng làm trong những dịp lễ đặc biệt. Cứ một năm 2 lần, vào ngày xá tội vong nhân và bữa cơm tất niên cuối năm, người dân tộc Tày, Nùng lại ăn món vịt này. Mâm cơm thiếu gì thì thiếu, chứ vịt quay 7 vị phải là món chính, không thể vắng mặt được.', 1)
INSERT [dbo].[Product] ([ID], [Name], [Image], [Origin_ID], [Category_ID], [Price], [Packing_ID], [Amount], [Sell_ID], [Description], [isActive]) VALUES (6, N'Phở chua', N'https://luhanhvietnam.com.vn/du-lich/vnt_upload/news/07_2020/pho-chua-cao-bang-x_hoang_kim_dung_x.jpg', 14, 9, 95000, 2, 300, N'4', N'Phở chua có cách chế biến rất kỳ công với nhiều nguyên liệu và công đoạn chế biến. Thành phần nguyên liệu của món ăn bao gồm thịt ba chỉ, củ khoai tầu, loại củ đặc trưng chỉ có ở Bắc Kạn và Cao Bằng, gan lợn, dạ dày lợn, thịt vịt, bánh phở Cao Bằng, các loại gia vị và rau thơm ăn kèm. ', 1)
INSERT [dbo].[Product] ([ID], [Name], [Image], [Origin_ID], [Category_ID], [Price], [Packing_ID], [Amount], [Sell_ID], [Description], [isActive]) VALUES (7, N'Bánh trứng kiến', N'https://znews-photo.zadn.vn/w860/Uploaded/qhj_pwqvdvicbu/2020_12_06/1_thuydung16_.jpg', 14, 8, 100000, 5, 166, N'3', N'Bánh trứng kiến là một trong những món bánh độc đáo của người Tày vùng núi Đông Bắc nước ta, mạn Bắc Kạn, Cao Bằng. Nguyên liệu chính để làm nên món bánh này chính là trứng kiến. Loại bánh này thường chỉ được làm vào khoảng thời gian nhất định cuối tháng 4 và tháng 5 hằng năm bởi đây là thời gian sinh trưởng mạnh nhất của loài kiến đen rừng. ', 1)
INSERT [dbo].[Product] ([ID], [Name], [Image], [Origin_ID], [Category_ID], [Price], [Packing_ID], [Amount], [Sell_ID], [Description], [isActive]) VALUES (8, N'Cá chiên sông Gâm', N'https://poliva.vn/wp-content/uploads/2019/07/ca-chien-song-gam.jpg', 14, 6, 335000, 2, 16, N'6', N'Cá chiên sông Gâm là một loài cá có đặc tính sinh sống rất khác biệt. Cùng với đó, vẻ bề ngoài của loài cá này cũng rất đặc biệt và ấn tượng. Sở dĩ cá chiên được mệnh danh là đặc sản tiến vua vang danh một thời là bởi vì độ dinh dưỡng của nó. Thịt cá chiên có độ dinh dưỡng tương đương với loài cá trắm đen và cả cá hồi. Ngoài ra, tương truyền rằng ngày xưa, loài cá này thường được đánh bắt để tiến cống cho vua và hoàng tộc. Bên cạnh mức độ dinh dưỡng cao, thịt thơm ngon thì cá chiên sông Gâm còn rất hiếm và khó đánh bắt. Vừa ngon, vừa hiếm nên cá chiên đã trở thành một đặc sản độc đáo chỉ có tại vùng cao.', 1)
INSERT [dbo].[Product] ([ID], [Name], [Image], [Origin_ID], [Category_ID], [Price], [Packing_ID], [Amount], [Sell_ID], [Description], [isActive]) VALUES (9, N'Cam Sành', N'https://media.vov.vn/uploaded/ed7pinll54crb7fgmumzw/2020_01_17/vov_cam11_qrmj.jpg', 60, 4, 25000, 1, 1996, N'4', N'So với những giống cam khác trên cả nước thì cam sành Hàm Yên được đánh giá có vị ngọt thanh, hương thơm dịu và hấp dẫn hơn cả. Cam mới ra quả sẽ có màu xanh, khi chín thì chuyển sang vàng óng, trái căng mọng, lốm đốm đặc trưng. Vỏ cam sành Hàm Yên khá mỏng và sần nhẹ lúc chín. Thông thường, quả cam khi thu hoạch sẽ có kích thước vừa bằng lòng bàn tay. Khi chọn mua cam, du khách nên lựa những quả chín, vàng đều, không bị rám hay thâm.', 1)
INSERT [dbo].[Product] ([ID], [Name], [Image], [Origin_ID], [Category_ID], [Price], [Packing_ID], [Amount], [Sell_ID], [Description], [isActive]) VALUES (10, N'Thịt Lợn Đen', N'https://dacsantuyenquang.org/wp-content/uploads/2018/08/Thit-lon-man-ngon.jpg', 60, 6, 130000, 1, 51, N'3', N'Nếu đến Nà Hang, Tuyên Quang sẽ dễ dàng bắt gặp hình ảnh những chú lợn đen có mõm rất dài và nhọn, lông xù và đặc biệt thân hình thì rất nhỏ nhưng lại rất chắc chắn. Và qua bàn tay khéo léo của người dân nơi đây, thịt lợn đen sẽ được chế biến thành rất nhiều món ăn ngon và hấp dẫn.', 1)
INSERT [dbo].[Product] ([ID], [Name], [Image], [Origin_ID], [Category_ID], [Price], [Packing_ID], [Amount], [Sell_ID], [Description], [isActive]) VALUES (11, N'Gỏi cá Bỗng sông Lô', N'https://poliva.vn/wp-content/uploads/2019/07/goi-ca-bong-song-lo-2.jpg', 60, 9, 195000, 2, 32, N'6', N'Gỏi cá vốn là một trong những món ăn chiếm được sự yêu thích của rất nhiều người. Không chỉ bởi hương vị thơm ngon mà còn rất dễ ăn. Thông thường gỏi cá sẽ được trộn cùng các loại rau gia vị khác. Điều này đem lại cho món ăn sự thanh mát và dễ ăn hơn. Đến với Tuyên Quang bạn sẽ được thưởng thức món gỏi cá bỗng sông Lô. Một món ăn chỉ có ở vùng đất này và cũng chỉ nơi đây mới mang lại hương vị đặc trưng cho người thưởng thức. Dù chỉ thử qua một lần thôi cũng khiến bạn khó lòng quên được hương vị đặc biệt của món ăn.', 1)
INSERT [dbo].[Product] ([ID], [Name], [Image], [Origin_ID], [Category_ID], [Price], [Packing_ID], [Amount], [Sell_ID], [Description], [isActive]) VALUES (12, N'Bánh Gai Chiêm Hóa', N'https://luhanhvietnam.com.vn/du-lich/vnt_upload/news/07_2019/banh-gai-chiem-hoa-5.jpg', 60, 8, 159000, 6, 195, N'4', N'Bánh gai Chiêm Hóa là sản phẩm kết tinh của văn hóa truyền thống kết hợp với công thức chế biến mang đậm nét cổ truyền của người dân nơi đây. Bánh được tạo ra từ nguyên liệu sẵn có tại địa phương được lựa chọn kĩ càng như: Gạo nếp cái hoa vàng, lá gai, thịt lợn và nhân đỗ xanh, gói bằng lá chuối khô theo phương pháp cổ truyền tạo nên chất lượng thơm ngon và đặc trưng của vùng quê Chiêm Hóa.', 1)
INSERT [dbo].[Product] ([ID], [Name], [Image], [Origin_ID], [Category_ID], [Price], [Packing_ID], [Amount], [Sell_ID], [Description], [isActive]) VALUES (14, N'Bánh tai', N'https://leadtour.vn/wp-content/uploads/2019/09/dac-san-phu-tho2-680x366.jpg', 43, 8, 65000, 2, 120, N'5', N'Bánh tai có tên gọi khác là bánh hòn, bởi hình dáng giống tai nên được người dân đặt cho cái tên ấy. Nguyên liệu làm bánh tai được làm từ gạo tẻ, thịt lợn cùng công thức bí truyền từ các thế hệ. Bánh tai có màu trắng đục, thường ăn kèm với cháo hoặc ăn riêng chấm mắm pha tỏi ớt cũng rất ngon.
', 1)
INSERT [dbo].[Product] ([ID], [Name], [Image], [Origin_ID], [Category_ID], [Price], [Packing_ID], [Amount], [Sell_ID], [Description], [isActive]) VALUES (15, N'Xáo chuối Lâm Thao', N'http://webdacsan.com/wp-content/uploads/2018/08/xao-chuoi.jpg', 43, 1, 165000, 2, 26, N'3', N'Ở Lâm Thao, món xáo chuối được ưa chuộng ở nhiều làng quê, nhưng có lẽ món ăn này nổi tiếng nhất vẫn là khu Vĩnh Tề thuộc xã Cao Xá. Món xáo chuối được làm từ các nguyên liệu: Chuối, xương, tương, riềng, tiết lợn và các gia vị khác như: hạt tiêu, bột ngọt... Những nguyên liệu này tuy dễ kiếm nhưng phải bảo đảm những yêu cầu khắt khe thì mới có được một bát xáo chuối thơm ngon, bổ dưỡng', 1)
INSERT [dbo].[Product] ([ID], [Name], [Image], [Origin_ID], [Category_ID], [Price], [Packing_ID], [Amount], [Sell_ID], [Description], [isActive]) VALUES (16, N'Trám om kho cá', N'https://anh.24h.com.vn/upload/4-2018/images/2018-10-01/1538411722-105-19388380_1945403909067807_5724669456127575793_o-1538411633-width1440height942.jpg', 43, 1, 195000, 2, 15, N'6', N'Ở miền quê trung du Phú Thọ, có một món cá kho khá hấp dẫn có tên: Trám om kho cá. Món ăn cơm có vị chua của trám ngấm vào làm cá mềm nục có vị giôn giốt chua, còn vị ngọt của tương, chất đạm của cá ngấm vào trám làm mất vị chát, giảm vị chua, miếng trám mang lại vị chua ngọt, béo bùi', 1)
INSERT [dbo].[Product] ([ID], [Name], [Image], [Origin_ID], [Category_ID], [Price], [Packing_ID], [Amount], [Sell_ID], [Description], [isActive]) VALUES (1060, N'Bánh gio', N'https://timeoutvietnam.com/files/2016/04/27/5-mon-banh-dan-da-cua-bac-kan-1.jpg', 4, 1, 40000, 1, 62, N'3', N'Bánh gio đã có ở Bắc Kạn hàng trăm năm. Làm bánh gio cầu kì đòi hỏi người làm phải khéo tay, tinh mắt . Muốn làm bánh được ngon ta phải bắt đầu từ khâu chọn loại cây đốt thành gio trắng mịn đem hoà với nước vôi có nồng độ thích hợp, quan trọng nhất là khâu thử độ đậm nhạt của nước gio trước khi ngâm gạo.', 1)
INSERT [dbo].[Product] ([ID], [Name], [Image], [Origin_ID], [Category_ID], [Price], [Packing_ID], [Amount], [Sell_ID], [Description], [isActive]) VALUES (1061, N'banh mi', N'', 6, 2, 12000, 5, 145, N'5', N'ưhefwefw', 0)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
INSERT [dbo].[Rate] ([ID], [Rate], [Comment], [Customer_ID], [Product_ID]) VALUES (22, 5, N'nong tuyet voi', 15, 2)
INSERT [dbo].[Rate] ([ID], [Rate], [Comment], [Customer_ID], [Product_ID]) VALUES (1036, 4.5, N'ship nhanh', 13, 2)
INSERT [dbo].[Rate] ([ID], [Rate], [Comment], [Customer_ID], [Product_ID]) VALUES (1038, 5, N'ngon', 15, 11)
INSERT [dbo].[Rate] ([ID], [Rate], [Comment], [Customer_ID], [Product_ID]) VALUES (1040, 5, N'Cam rất tươi ngon!', 13, 9)
GO
SET IDENTITY_INSERT [dbo].[Status] ON 

INSERT [dbo].[Status] ([ID], [Name]) VALUES (1, N'Chưa có shipper')
INSERT [dbo].[Status] ([ID], [Name]) VALUES (2, N'Đang giao hàng')
INSERT [dbo].[Status] ([ID], [Name]) VALUES (3, N'Đã giao hàng')
SET IDENTITY_INSERT [dbo].[Status] OFF
GO
INSERT [dbo].[Voucher] ([Code], [Name], [Discount], [isUse]) VALUES (N'ISUDVEI', N'Giảm 50% đơn hàng', 0.5, 0)
INSERT [dbo].[Voucher] ([Code], [Name], [Discount], [isUse]) VALUES (N'FFMSRR', N'Giảm 12% đơn hàng', 0.12, 0)
INSERT [dbo].[Voucher] ([Code], [Name], [Discount], [isUse]) VALUES (N'FIRSTIN', N'Ship 0 đồng', 0, 0)
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Account] FOREIGN KEY([Account_ID])
REFERENCES [dbo].[Account] ([ID])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Account]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Product] FOREIGN KEY([Product_ID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Product]
GO
ALTER TABLE [dbo].[Info]  WITH CHECK ADD  CONSTRAINT [FK_Info_Account] FOREIGN KEY([Account_ID])
REFERENCES [dbo].[Account] ([ID])
GO
ALTER TABLE [dbo].[Info] CHECK CONSTRAINT [FK_Info_Account]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([Category_ID])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Origin] FOREIGN KEY([Origin_ID])
REFERENCES [dbo].[Origin] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Origin]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Packing] FOREIGN KEY([Packing_ID])
REFERENCES [dbo].[Packing] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Packing]
GO
ALTER TABLE [dbo].[Shipping]  WITH CHECK ADD  CONSTRAINT [FK_Shipping_Info1] FOREIGN KEY([Shipper_ID])
REFERENCES [dbo].[Info] ([Account_ID])
GO
ALTER TABLE [dbo].[Shipping] CHECK CONSTRAINT [FK_Shipping_Info1]
GO
ALTER TABLE [dbo].[Shipping]  WITH CHECK ADD  CONSTRAINT [FK_Shipping_Status] FOREIGN KEY([Status_ID])
REFERENCES [dbo].[Status] ([ID])
GO
ALTER TABLE [dbo].[Shipping] CHECK CONSTRAINT [FK_Shipping_Status]
GO
