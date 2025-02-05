USE [CarTheHieu]
GO
/****** Object:  Table [dbo].[Attribute]    Script Date: 22/10/2024 10:22:59 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attribute](
	[attribute_id] [int] IDENTITY(1,1) NOT NULL,
	[attribute_name] [nvarchar](50) NULL,
	[attribute_value] [nvarchar](max) NULL,
	[attribute_img] [nvarchar](max) NULL,
 CONSTRAINT [PK_Attribute] PRIMARY KEY CLUSTERED 
(
	[attribute_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Automaker]    Script Date: 22/10/2024 10:22:59 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Automaker](
	[automaker_id] [int] IDENTITY(1,1) NOT NULL,
	[automaker_name] [nvarchar](50) NULL,
	[automaker_img] [nvarchar](max) NULL,
 CONSTRAINT [PK_Automaker] PRIMARY KEY CLUSTERED 
(
	[automaker_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bank]    Script Date: 22/10/2024 10:22:59 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bank](
	[bank_id] [int] IDENTITY(1,1) NOT NULL,
	[bank_name] [nvarchar](50) NULL,
	[InterestRateFirstYear] [float] NULL,
	[MaxLoanPercentage] [float] NULL,
	[LoanTermMonths] [int] NULL,
 CONSTRAINT [PK_Bank] PRIMARY KEY CLUSTERED 
(
	[bank_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Capacit]    Script Date: 22/10/2024 10:22:59 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Capacit](
	[capacit_id] [int] IDENTITY(1,1) NOT NULL,
	[capacit_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Capacit] PRIMARY KEY CLUSTERED 
(
	[capacit_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Capacit_Attribute]    Script Date: 22/10/2024 10:22:59 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Capacit_Attribute](
	[capacit_id] [int] NULL,
	[product_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Car_Color]    Script Date: 22/10/2024 10:22:59 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Car_Color](
	[color_id] [int] IDENTITY(1,1) NOT NULL,
	[color_name] [nvarchar](50) NULL,
	[color_img] [nvarchar](max) NULL,
	[product_id] [int] NULL,
 CONSTRAINT [PK_Car_Color] PRIMARY KEY CLUSTERED 
(
	[color_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contract]    Script Date: 22/10/2024 10:22:59 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contract](
	[contract_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[product_id] [int] NULL,
	[bank_id] [int] NULL,
	[create_at] [date] NULL,
	[update_at] [date] NULL,
	[status] [bit] NULL,
	[total_amount] [float] NULL,
	[voicher_id] [int] NULL,
	[total_month] [int] NULL,
 CONSTRAINT [PK_Contract] PRIMARY KEY CLUSTERED 
(
	[contract_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 22/10/2024 10:22:59 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[customer_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[first_name] [nvarchar](50) NULL,
	[last_name] [nvarchar](50) NULL,
	[phone] [nvarchar](10) NULL,
	[email] [nvarchar](50) NULL,
	[address] [nvarchar](50) NULL,
	[created_at] [date] NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 22/10/2024 10:22:59 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[department_id] [int] IDENTITY(1,1) NOT NULL,
	[department_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[department_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 22/10/2024 10:22:59 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[employee_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[first_name] [nvarchar](50) NULL,
	[last_name] [nvarchar](50) NULL,
	[phone] [nvarchar](10) NULL,
	[email] [nvarchar](50) NULL,
	[department_id] [int] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[employee_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Img]    Script Date: 22/10/2024 10:22:59 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Img](
	[img_id] [int] IDENTITY(1,1) NOT NULL,
	[img_description] [nvarchar](50) NULL,
	[img] [nvarchar](max) NULL,
	[product_id] [int] NULL,
 CONSTRAINT [PK_Img] PRIMARY KEY CLUSTERED 
(
	[img_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Insurance]    Script Date: 22/10/2024 10:22:59 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Insurance](
	[insurance_id] [int] NOT NULL,
	[insurance_name] [nvarchar](50) NULL,
	[insurance_value] [nvarchar](50) NULL,
	[automaker_id] [int] NULL,
 CONSTRAINT [PK_Insurance] PRIMARY KEY CLUSTERED 
(
	[insurance_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 22/10/2024 10:22:59 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[product_name] [nvarchar](50) NULL,
	[region_id] [int] NULL,
	[automaker_id] [int] NULL,
	[quantity] [int] NULL,
	[product_img] [nvarchar](max) NULL,
	[price] [float] NULL,
	[desciption] [nvarchar](max) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Attribute]    Script Date: 22/10/2024 10:22:59 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Attribute](
	[product_id] [int] NOT NULL,
	[attribute_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Region]    Script Date: 22/10/2024 10:22:59 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Region](
	[region_id] [int] IDENTITY(1,1) NOT NULL,
	[region_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Region] PRIMARY KEY CLUSTERED 
(
	[region_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 22/10/2024 10:22:59 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[role_id] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TestDriveRegistration]    Script Date: 22/10/2024 10:22:59 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestDriveRegistration](
	[registration_id] [int] NOT NULL,
	[user_id] [int] NULL,
	[product_id] [int] NULL,
	[registration_date] [date] NULL,
 CONSTRAINT [PK_TestDriveRegistration] PRIMARY KEY CLUSTERED 
(
	[registration_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 22/10/2024 10:22:59 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[user_name] [nvarchar](50) NULL,
	[password] [nvarchar](max) NULL,
	[profile_img] [nvarchar](max) NULL,
	[role_id] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Voucher]    Script Date: 22/10/2024 10:22:59 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voucher](
	[voucher_id] [int] NOT NULL,
	[voucher_name] [nvarchar](50) NULL,
	[voucher_value] [nvarchar](50) NULL,
	[automaker_id] [int] NULL,
	[quantity] [int] NULL,
	[voucher_date] [date] NULL,
 CONSTRAINT [PK_Voucher] PRIMARY KEY CLUSTERED 
(
	[voucher_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Attribute] ON 

INSERT [dbo].[Attribute] ([attribute_id], [attribute_name], [attribute_value], [attribute_img]) VALUES (1, N'Tổng quan', N'Honda ra mắt mẫu xe City 2023 tại thị trường Việt Nam với 3 phiên bản G, L và RS. Ở bản nâng cấp này của Honda City 2023, công nghệ an toàn Honda Sensing sẽ là trang bị tiêu chuẩn trên cả 3 phiên bản bao gồm những tính năng như Phanh giảm thiểu va chạm (CMBS); Điều khiển hành trình thích ứng ACC); Hỗ trợ giữ làn đường (LKAS); Giảm thiểu chệch làn đường (RDM); Đèn pha thích ứng tự động (AHB) và Thông báo xe phía trước khởi hành (LCDN).Đây được xem là bước đi giúp mẫu xe này có thêm lợi thế cạnh tranh với những đối thủ cùng phân khúc sedan hạng B trên thị trường như Hyundai Accent, Toyota Vios hay Nissan Almera.

', N'https://drive.gianhangvn.com/image/b4h3ugv-2448915j31185.jpg')
INSERT [dbo].[Attribute] ([attribute_id], [attribute_name], [attribute_value], [attribute_img]) VALUES (2, N'Màu xe', N'Honda City G có 6 màu sắc được bán ra tại Việt Nam giúp khách hàng có thể lựa chọn những màu sắc hợp phong thủy với khách hàng.', N'https://drive.gianhangvn.com/image/2534102-2690449j26425.jpg')
INSERT [dbo].[Attribute] ([attribute_id], [attribute_name], [attribute_value], [attribute_img]) VALUES (3, N'Ngoại thất', N'Honda City G thế hệ mới sở hữu kích thước tổng thể dài x rộng x cao lần lượt 4.589 x 1.748 x 1.467 mm (bản RS), chiều dài cơ sở 2.600 mm và khoảng sáng gầm 134 mm.Thanh ngang phía trên lưới tản nhiệt mới, được mạ crôm. Thiết kế lưới tản nhiệt cũng đã được làm lại dạng hình kim cương và lip ở hông xe, giúp tăng đáng kể tính thể thao cho xe.', N'https://hondamydinh.net/wp-content/uploads/2021/01/Honda-City-2023-2-5289-1688446167.jpg')
INSERT [dbo].[Attribute] ([attribute_id], [attribute_name], [attribute_value], [attribute_img]) VALUES (4, N'Nội thất', N'Nội thất của Honda City G 2023 được thiết kế sang trọng và tiện nghi. Ghế ngồi được bọc nỉ. Không gian cabin rộng rãi, các chức năng điều khiển được bố trí hợp lý, giúp tạo cảm giác thoải mái và dễ sử dụng cho người lái. Hệ thống điều hòa tự động, hệ thống âm thanh 6 loa, màn hình cảm ứng 8 inch tích hợp Apple CarPlay và Android Auto là những tính năng tiện ích được trang bị trên xe.', N'https://honda-kiengiang.vn/wp-content/uploads/2021/11/Honda-City-2023-19.jpg')
INSERT [dbo].[Attribute] ([attribute_id], [attribute_name], [attribute_value], [attribute_img]) VALUES (5, N'Tiện ích', N'Honda Connect là hệ thống giải trí thông minh được trang bị trên Honda City G 2023. Hệ thống này bao gồm màn hình cảm ứng kích thước 8 inch, tích hợp các tính năng giải trí như đài radio, kết nối Bluetooth, USB, AUX và hỗ trợ kết nối Apple CarPlay và Android Auto.', N'https://encrypted-tbn0.gstatic.com/images?https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfuvprXvVmF7qzkqM6M3IziOvC_h3wOHVgUQ&s')
INSERT [dbo].[Attribute] ([attribute_id], [attribute_name], [attribute_value], [attribute_img]) VALUES (6, N'Tiện nghi', N'Ở phiên bản Honda City G được trang bị hế thống lái trợ lực điện mang đến phản hồi nhanh nhạy và chính xác, để mỗi chuyển động của vô lăng đều nhẹ nhàng dù là khi vào cua hay chuyển hướng.Trên phiên bản RS & L được tích hợp lấy chuyển số trên vô lăng giúp cho trải nghiệm lái thể thao hơn. Ở phiên bản City G sẽ không được trang bị lấy chuyển số trên vô lăng.

', N'https://cdn.gianhangvn.com/image/honda-city-rs-2023-bv-19-b1x8uew.jpg')
INSERT [dbo].[Attribute] ([attribute_id], [attribute_name], [attribute_value], [attribute_img]) VALUES (7, N'Động cơ & An toàn', N'Về động cơ, Honda City G 2023 vẫn trang bị động cơ xăng, hút khí tự nhiên, dung tích 1.5L như trước, sản sinh công suất tối đa 119 mã lực tại 6.600 vòng/phút và mô-men xoắn cực đại đạt 145Nm tại 4.300 vòng/phút, đi kèm hộp số vô cấp CVT và hệ dẫn động cầu trước.Honda City RS được trang bị hệ thống công nghệ hỗ trợ lái xe an toàn tiên tiến Honda SENSING hỗ trợ và bảo vệ bạn tối đa trong từng khoảnh khắc, để bạn an tâm vững tay lái trên mọi cung đường. Riêng phiên bản L & G sẽ không được trang bị gói Honda SESING.', N'https://cdn.gianhangvn.com/image/honda-city-rs-2023-bv-24-bmdbue0.jpg')
INSERT [dbo].[Attribute] ([attribute_id], [attribute_name], [attribute_value], [attribute_img]) VALUES (8, N'Tổng quan', N'Honda Civic 2022 thế hệ 11 - mẫu sedan hạng C được ra mắt thị trường quốc tế vào tháng 4/2021 và tại Đông Nam Á vào tháng 8/2021. Tại Việt Nam, Honda Civic 2022 có 3 phiên bản E, G và RS cao cấp đều được nhập khẩu nguyên chiếc từ Thái Lan.Honda Civic 2022 thế hệ 11 - mẫu sedan hạng C được ra mắt thị trường quốc tế vào tháng 4/2021 và tại Đông Nam Á vào tháng 8/2021. Tại Việt Nam, Honda Civic 2022 có 3 phiên bản E, G và RS cao cấp đều được nhập khẩu nguyên chiếc từ Thái Lan.Honda Civic thế hệ thứ 11 thay đổi toàn diện, từ ngoại hình, nội thất và trang bị tiện nghi.  Trục cơ sở Civic 2022 tăng thêm 35,5 mm và rộng hơn 12 mm.
', N'https://hondaotovovankiet.vn/wp-content/uploads/2023/05/honda_BRV_hondaotovovankiet_vn_16.jpg')
INSERT [dbo].[Attribute] ([attribute_id], [attribute_name], [attribute_value], [attribute_img]) VALUES (9, N'Màu xe', N'Có tổng cộng 6 loại màu giúp người dùng có thể tùy chọn loại màu phù hợp với bản thân!', N'https://katavina.com/uploaded/tin-tuc/anh%20tin%20tuc/Honda-Civic-2022-co-may-mau.jpg')
INSERT [dbo].[Attribute] ([attribute_id], [attribute_name], [attribute_value], [attribute_img]) VALUES (10, N'Ngoại thất', N'Thiết kế mới của Civic 2022 khiến xe nhìn thấp và rộng hơn so với bản cũ. Đèn pha LED được mở rộng, các khe hút gió được làm nổi bật, hốc đèn sương mù có ốp trang trí. Dải đèn ban ngày thanh mảnh hình chữ L nằm ngang gợi nhớ đến đối thủ Hyundai Elantra. Lưới tản nhiệt kích thước lớn hơn so với thế hệ trước.', N'https://drive.gianhangvn.com/image/2kusp8z-2498503j33001.jpg')
INSERT [dbo].[Attribute] ([attribute_id], [attribute_name], [attribute_value], [attribute_img]) VALUES (11, N'Nội thất', N'Khoang nội thất Honda Civic 2022 được thiết mới hoàn toàn với phong cách vuông vắn giống mẫu xe "đàn em" Honda City nhưng cao cấp hơn nhiều nhờ sự kết hợp với lối thiết kế của Accord. Cabin tùy chọn 02 tone màu: đen hoặc be.', N'https://img1.oto.com.vn/2022/02/16/1OANJGk2/honda-civic-2022-noi-that-20-3b47.jpg')
INSERT [dbo].[Attribute] ([attribute_id], [attribute_name], [attribute_value], [attribute_img]) VALUES (12, N'Tiện nghi', N'Tất cả các phiên bản của Honda Civic 2022 đều có ghế thiết kế "Body Stabilizing seat", giúp người ngồi thoải mái hơn trong những hành trình dài. Ghế ngồi có khung mới, đáy rộng hơn, phần đệm dày hơn và tựa lưng được nâng cao giúp tăng độ nâng đỡ cho thắt lưng và xương chậu.', N'https://img1.oto.com.vn/2022/02/15/1OANJGk2/honda-civic-2022-oto-com-vn-2-22a2-125c.jpg')
INSERT [dbo].[Attribute] ([attribute_id], [attribute_name], [attribute_value], [attribute_img]) VALUES (13, N'Động cơ', N'Tại Việt Nam, Honda Civic 2022 được trang bị động cơ 04 xy lanh, 1.5 lít DOHC VTEC Turbo, hộp số CVT. Động cơ sản sinh ra công suất 178 mã lực tại 6.000 vòng/ phút và mô men xoắn 240 Nm từ 1.700-4.500 vòng/ phút.', N'https://th.bing.com/th/id/OIP.0De0iRepeZjqNS0ERLur-wHaE7?rs=1&pid=ImgDetMain')
SET IDENTITY_INSERT [dbo].[Attribute] OFF
GO
SET IDENTITY_INSERT [dbo].[Automaker] ON 

INSERT [dbo].[Automaker] ([automaker_id], [automaker_name], [automaker_img]) VALUES (1, N'Honda City', N'http://localhost:8080/drive.gianhangvn.com/image/honda-city-2166737j31185.jpg')
INSERT [dbo].[Automaker] ([automaker_id], [automaker_name], [automaker_img]) VALUES (2, N'Honda BR-V', N'http://localhost:8080/drive.gianhangvn.com/image/honda-br-v-2445204j31185.jpg')
INSERT [dbo].[Automaker] ([automaker_id], [automaker_name], [automaker_img]) VALUES (3, N'Honda Civic', N'http://localhost:8080/drive.gianhangvn.com/image/honda-civic-2166736j31185.jpg')
INSERT [dbo].[Automaker] ([automaker_id], [automaker_name], [automaker_img]) VALUES (4, N'Honda HR-V', N'http://localhost:8080/drive.gianhangvn.com/image/honda-hrv-2166731j31185.jpg')
INSERT [dbo].[Automaker] ([automaker_id], [automaker_name], [automaker_img]) VALUES (5, N'Honda CR-V', N'http://localhost:8080/drive.gianhangvn.com/image/honda-crv2023-2524420j31185.jpg')
INSERT [dbo].[Automaker] ([automaker_id], [automaker_name], [automaker_img]) VALUES (6, N'Honda Accord', N'http://localhost:8080/drive.gianhangvn.com/image/honda-accord-2166734j31185.jpg')
SET IDENTITY_INSERT [dbo].[Automaker] OFF
GO
SET IDENTITY_INSERT [dbo].[Bank] ON 

INSERT [dbo].[Bank] ([bank_id], [bank_name], [InterestRateFirstYear], [MaxLoanPercentage], [LoanTermMonths]) VALUES (1, N'Ngân hàng VIB bank', 7.9, 80, 84)
INSERT [dbo].[Bank] ([bank_id], [bank_name], [InterestRateFirstYear], [MaxLoanPercentage], [LoanTermMonths]) VALUES (2, N'Ngân hàng Seabank', 9.4, 80, 84)
INSERT [dbo].[Bank] ([bank_id], [bank_name], [InterestRateFirstYear], [MaxLoanPercentage], [LoanTermMonths]) VALUES (3, N'Ngân hàng TPBank', 7.6, 80, 84)
INSERT [dbo].[Bank] ([bank_id], [bank_name], [InterestRateFirstYear], [MaxLoanPercentage], [LoanTermMonths]) VALUES (4, N'Ngân hàng Techcombank', 7.4, 80, 84)
INSERT [dbo].[Bank] ([bank_id], [bank_name], [InterestRateFirstYear], [MaxLoanPercentage], [LoanTermMonths]) VALUES (5, N'Ngân hàng Vietcombank', 9, 80, 60)
INSERT [dbo].[Bank] ([bank_id], [bank_name], [InterestRateFirstYear], [MaxLoanPercentage], [LoanTermMonths]) VALUES (6, N'Ngân hàng SHB', 7.9, 75, 84)
INSERT [dbo].[Bank] ([bank_id], [bank_name], [InterestRateFirstYear], [MaxLoanPercentage], [LoanTermMonths]) VALUES (7, N'Ngân hàng VietinBank', 8.99, 80, 60)
INSERT [dbo].[Bank] ([bank_id], [bank_name], [InterestRateFirstYear], [MaxLoanPercentage], [LoanTermMonths]) VALUES (8, N'Ngân hàng VPBank', 7.9, 70, 84)
INSERT [dbo].[Bank] ([bank_id], [bank_name], [InterestRateFirstYear], [MaxLoanPercentage], [LoanTermMonths]) VALUES (9, N'Ngân hàng OCB', 6.99, 80, 84)
INSERT [dbo].[Bank] ([bank_id], [bank_name], [InterestRateFirstYear], [MaxLoanPercentage], [LoanTermMonths]) VALUES (10, N'Ngân hàng B?o Vi?t Bank', 8.04, 80, 84)
SET IDENTITY_INSERT [dbo].[Bank] OFF
GO
SET IDENTITY_INSERT [dbo].[Car_Color] ON 

INSERT [dbo].[Car_Color] ([color_id], [color_name], [color_img], [product_id]) VALUES (1, N'Trắng', N'https://drive.gianhangvn.com/image/honda-city-tk-2-2448787j24258.jpg', 4)
INSERT [dbo].[Car_Color] ([color_id], [color_name], [color_img], [product_id]) VALUES (2, N'Đen', N'https://drive.gianhangvn.com/image/honda-city-tk-6-2448791j24258.jpg', 4)
INSERT [dbo].[Car_Color] ([color_id], [color_name], [color_img], [product_id]) VALUES (3, N'Be', N'https://drive.gianhangvn.com/image/honda-city-tk-5-2448790j24258.jpg', 4)
INSERT [dbo].[Car_Color] ([color_id], [color_name], [color_img], [product_id]) VALUES (4, N'Xám', N'https://drive.gianhangvn.com/image/honda-city-tk-4-2448789j24258.jpg', 4)
INSERT [dbo].[Car_Color] ([color_id], [color_name], [color_img], [product_id]) VALUES (5, N'Đỏ', N'https://drive.gianhangvn.com/image/honda-city-tk-3-2448788j24258.jpg', 4)
INSERT [dbo].[Car_Color] ([color_id], [color_name], [color_img], [product_id]) VALUES (6, N'Xanh dương', N'https://drive.gianhangvn.com/image/honda-city-tk-1-2448786j24258.jpg', 4)
SET IDENTITY_INSERT [dbo].[Car_Color] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([customer_id], [user_id], [first_name], [last_name], [phone], [email], [address], [created_at]) VALUES (1, 3, N'Hoàng Minh', N'Bách', N'0123456789', N'giangthi829@gmail.com', N'HN', CAST(N'2003-11-05' AS Date))
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([product_id], [product_name], [region_id], [automaker_id], [quantity], [product_img], [price], [desciption]) VALUES (4, N'Honda City G 2024 Facelift Sensing', 1, 1, 5, N'https://drive.gianhangvn.com/image/b4h3ugv-2448915j31185.jpg', 1000000, NULL)
INSERT [dbo].[Product] ([product_id], [product_name], [region_id], [automaker_id], [quantity], [product_img], [price], [desciption]) VALUES (5, N'Honda BR-V G', 1, 2, 5, N'https://drive.gianhangvn.com/image/br-v-l-2023-trang-2479610j32217.jpg', 1000000, NULL)
INSERT [dbo].[Product] ([product_id], [product_name], [region_id], [automaker_id], [quantity], [product_img], [price], [desciption]) VALUES (1002, N'Honda Civic E 2024', 1, 3, 5, N'https://4.bp.blogspot.com/-oOSRY7taTeo/WeYL7s7_8oI/AAAAAAAADKk/W27Zu3lA_LkTaJoOILKePTTG0WStERKkgCLcBGAs/s1600/Honda%2Bcivic%2B2017%2Bfault.jpg', 1000000, NULL)
INSERT [dbo].[Product] ([product_id], [product_name], [region_id], [automaker_id], [quantity], [product_img], [price], [desciption]) VALUES (1003, N'Honda Civic G 2024', 1, 3, 5, N'https://4.bp.blogspot.com/-oOSRY7taTeo/WeYL7s7_8oI/AAAAAAAADKk/W27Zu3lA_LkTaJoOILKePTTG0WStERKkgCLcBGAs/s1600/Honda%2Bcivic%2B2017%2Bfault.jpg', 1000000, NULL)
INSERT [dbo].[Product] ([product_id], [product_name], [region_id], [automaker_id], [quantity], [product_img], [price], [desciption]) VALUES (1004, N'Honda Civic RS 2024', 1, 3, 5, N'https://4.bp.blogspot.com/-oOSRY7taTeo/WeYL7s7_8oI/AAAAAAAADKk/W27Zu3lA_LkTaJoOILKePTTG0WStERKkgCLcBGAs/s1600/Honda%2Bcivic%2B2017%2Bfault.jpg', 1000000, NULL)
INSERT [dbo].[Product] ([product_id], [product_name], [region_id], [automaker_id], [quantity], [product_img], [price], [desciption]) VALUES (2002, N'Honda CRV 2025 mẫu SUV', 1, 5, 5, N'https://dailymuabanxe.net/wp-content/uploads/2023/10/Honda-CRV-2.jpg', 5000000, N'CRV trang bị động cơ mạnh mẽ cho khả năng tăng tốc mượt mà, mang đến cảm xúc phấn khích không ngừng để mỗi lần cầm lái là một trải nghiệm bứt phá đầy ấn tượng.')
INSERT [dbo].[Product] ([product_id], [product_name], [region_id], [automaker_id], [quantity], [product_img], [price], [desciption]) VALUES (2003, N'Honda City G', 1, 1, 5, N'https://hondanhatrang.vn/wp-content/uploads/2021/01/IMG_E99631-scaled.jpg', 4990000, N'ok')
INSERT [dbo].[Product] ([product_id], [product_name], [region_id], [automaker_id], [quantity], [product_img], [price], [desciption]) VALUES (2004, N'Honda City L', 1, 1, 5, N'https://hondanhatrang.vn/wp-content/uploads/2021/01/IMG_E99631-scaled.jpg', 4000000, N'ok')
INSERT [dbo].[Product] ([product_id], [product_name], [region_id], [automaker_id], [quantity], [product_img], [price], [desciption]) VALUES (3002, N'Honda City G', 1, 1, 5, N'https://hondanhatrang.vn/wp-content/uploads/2021/01/IMG_E99631-scaled.jpg', 4000000, N'ok')
INSERT [dbo].[Product] ([product_id], [product_name], [region_id], [automaker_id], [quantity], [product_img], [price], [desciption]) VALUES (3003, N'Honda City G', 1, 1, 5, N'https://hondanhatrang.vn/wp-content/uploads/2021/01/IMG_E99631-scaled.jpg', 4000000, N'ok')
INSERT [dbo].[Product] ([product_id], [product_name], [region_id], [automaker_id], [quantity], [product_img], [price], [desciption]) VALUES (3004, N'Honda City G', 1, 1, 5, N'https://hondanhatrang.vn/wp-content/uploads/2021/01/IMG_E99631-scaled.jpg', 4000000, N'ok')
INSERT [dbo].[Product] ([product_id], [product_name], [region_id], [automaker_id], [quantity], [product_img], [price], [desciption]) VALUES (3005, N'Honda City G', 1, 1, 5, N'https://hondanhatrang.vn/wp-content/uploads/2021/01/IMG_E99631-scaled.jpg', 1234567, N'ok')
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
INSERT [dbo].[Product_Attribute] ([product_id], [attribute_id]) VALUES (4, 1)
INSERT [dbo].[Product_Attribute] ([product_id], [attribute_id]) VALUES (4, 2)
INSERT [dbo].[Product_Attribute] ([product_id], [attribute_id]) VALUES (4, 3)
INSERT [dbo].[Product_Attribute] ([product_id], [attribute_id]) VALUES (4, 4)
INSERT [dbo].[Product_Attribute] ([product_id], [attribute_id]) VALUES (4, 5)
INSERT [dbo].[Product_Attribute] ([product_id], [attribute_id]) VALUES (4, 6)
INSERT [dbo].[Product_Attribute] ([product_id], [attribute_id]) VALUES (4, 7)
INSERT [dbo].[Product_Attribute] ([product_id], [attribute_id]) VALUES (5, 8)
INSERT [dbo].[Product_Attribute] ([product_id], [attribute_id]) VALUES (5, 9)
INSERT [dbo].[Product_Attribute] ([product_id], [attribute_id]) VALUES (5, 10)
INSERT [dbo].[Product_Attribute] ([product_id], [attribute_id]) VALUES (5, 11)
INSERT [dbo].[Product_Attribute] ([product_id], [attribute_id]) VALUES (5, 12)
INSERT [dbo].[Product_Attribute] ([product_id], [attribute_id]) VALUES (5, 13)
GO
SET IDENTITY_INSERT [dbo].[Region] ON 

INSERT [dbo].[Region] ([region_id], [region_name]) VALUES (1, N'Hà Nội')
INSERT [dbo].[Region] ([region_id], [region_name]) VALUES (2, N'Hồ Chí Minh')
INSERT [dbo].[Region] ([region_id], [region_name]) VALUES (3, N'Đà Nẵng')
SET IDENTITY_INSERT [dbo].[Region] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([role_id], [role_name]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([role_id], [role_name]) VALUES (2, N'Employee')
INSERT [dbo].[Role] ([role_id], [role_name]) VALUES (3, N'Customer')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([user_id], [user_name], [password], [profile_img], [role_id]) VALUES (1, N'thehieu', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', NULL, 1)
INSERT [dbo].[User] ([user_id], [user_name], [password], [profile_img], [role_id]) VALUES (2, N'minhthw', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', NULL, 2)
INSERT [dbo].[User] ([user_id], [user_name], [password], [profile_img], [role_id]) VALUES (3, N'minhbach', N'b7d91e9a99c70e0ba6dad800153c2b73559757ee644dd6c9f850e25a5e7bc6ad', NULL, 3)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Capacit_Attribute]  WITH CHECK ADD  CONSTRAINT [FK_Capacit_Attribute_Capacit] FOREIGN KEY([capacit_id])
REFERENCES [dbo].[Capacit] ([capacit_id])
GO
ALTER TABLE [dbo].[Capacit_Attribute] CHECK CONSTRAINT [FK_Capacit_Attribute_Capacit]
GO
ALTER TABLE [dbo].[Capacit_Attribute]  WITH CHECK ADD  CONSTRAINT [FK_Capacit_Attribute_Product] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([product_id])
GO
ALTER TABLE [dbo].[Capacit_Attribute] CHECK CONSTRAINT [FK_Capacit_Attribute_Product]
GO
ALTER TABLE [dbo].[Car_Color]  WITH CHECK ADD  CONSTRAINT [FK_Car_Color_Product] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([product_id])
GO
ALTER TABLE [dbo].[Car_Color] CHECK CONSTRAINT [FK_Car_Color_Product]
GO
ALTER TABLE [dbo].[Contract]  WITH CHECK ADD  CONSTRAINT [FK_Contract_Bank] FOREIGN KEY([bank_id])
REFERENCES [dbo].[Bank] ([bank_id])
GO
ALTER TABLE [dbo].[Contract] CHECK CONSTRAINT [FK_Contract_Bank]
GO
ALTER TABLE [dbo].[Contract]  WITH CHECK ADD  CONSTRAINT [FK_Contract_Product] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([product_id])
GO
ALTER TABLE [dbo].[Contract] CHECK CONSTRAINT [FK_Contract_Product]
GO
ALTER TABLE [dbo].[Contract]  WITH CHECK ADD  CONSTRAINT [FK_Contract_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Contract] CHECK CONSTRAINT [FK_Contract_User]
GO
ALTER TABLE [dbo].[Contract]  WITH CHECK ADD  CONSTRAINT [FK_Contract_Voucher] FOREIGN KEY([voicher_id])
REFERENCES [dbo].[Voucher] ([voucher_id])
GO
ALTER TABLE [dbo].[Contract] CHECK CONSTRAINT [FK_Contract_Voucher]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_User]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Department] FOREIGN KEY([department_id])
REFERENCES [dbo].[Department] ([department_id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Department]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_User]
GO
ALTER TABLE [dbo].[Img]  WITH CHECK ADD  CONSTRAINT [FK_Img_Product] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([product_id])
GO
ALTER TABLE [dbo].[Img] CHECK CONSTRAINT [FK_Img_Product]
GO
ALTER TABLE [dbo].[Insurance]  WITH CHECK ADD  CONSTRAINT [FK_Insurance_Automaker] FOREIGN KEY([automaker_id])
REFERENCES [dbo].[Automaker] ([automaker_id])
GO
ALTER TABLE [dbo].[Insurance] CHECK CONSTRAINT [FK_Insurance_Automaker]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Automaker] FOREIGN KEY([automaker_id])
REFERENCES [dbo].[Automaker] ([automaker_id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Automaker]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Region] FOREIGN KEY([region_id])
REFERENCES [dbo].[Region] ([region_id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Region]
GO
ALTER TABLE [dbo].[Product_Attribute]  WITH CHECK ADD  CONSTRAINT [FK_Product_Attribute_Attribute] FOREIGN KEY([attribute_id])
REFERENCES [dbo].[Attribute] ([attribute_id])
GO
ALTER TABLE [dbo].[Product_Attribute] CHECK CONSTRAINT [FK_Product_Attribute_Attribute]
GO
ALTER TABLE [dbo].[Product_Attribute]  WITH CHECK ADD  CONSTRAINT [FK_Product_Attribute_Product] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([product_id])
GO
ALTER TABLE [dbo].[Product_Attribute] CHECK CONSTRAINT [FK_Product_Attribute_Product]
GO
ALTER TABLE [dbo].[TestDriveRegistration]  WITH CHECK ADD  CONSTRAINT [FK_TestDriveRegistration_Product] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([product_id])
GO
ALTER TABLE [dbo].[TestDriveRegistration] CHECK CONSTRAINT [FK_TestDriveRegistration_Product]
GO
ALTER TABLE [dbo].[TestDriveRegistration]  WITH CHECK ADD  CONSTRAINT [FK_TestDriveRegistration_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[TestDriveRegistration] CHECK CONSTRAINT [FK_TestDriveRegistration_User]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([role_id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
ALTER TABLE [dbo].[Voucher]  WITH CHECK ADD  CONSTRAINT [FK_Voucher_Automaker] FOREIGN KEY([automaker_id])
REFERENCES [dbo].[Automaker] ([automaker_id])
GO
ALTER TABLE [dbo].[Voucher] CHECK CONSTRAINT [FK_Voucher_Automaker]
GO
/****** Object:  StoredProcedure [dbo].[GetTopProductsWithFirstAttribute]    Script Date: 22/10/2024 10:22:59 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetTopProductsWithFirstAttribute]
AS
BEGIN
    -- Sử dụng CTE để lấy thuộc tính đầu tiên cho mỗi sản phẩm
    WITH RankedAttributes AS (
        SELECT 
            pa.product_id,
            att.attribute_img,
            ROW_NUMBER() OVER (PARTITION BY pa.product_id ORDER BY att.attribute_id) AS rn
        FROM Product_Attribute pa
        JOIN Attribute att ON pa.attribute_id = att.attribute_id
    ),
    TopProducts AS (
        SELECT TOP 6 
            p.product_id,
            p.product_name,
            p.price
        FROM Product p
        ORDER BY p.product_id
    )
    -- Chọn sản phẩm và thuộc tính đầu tiên (ảnh)
    SELECT 
        tp.product_id,
        tp.product_name,
        tp.price,
        ra.attribute_img
    FROM TopProducts tp
    JOIN RankedAttributes ra ON tp.product_id = ra.product_id
    WHERE ra.rn = 1;
END;
GO
/****** Object:  StoredProcedure [dbo].[SP_CountProdcutByAutumakerID]    Script Date: 22/10/2024 10:22:59 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_CountProdcutByAutumakerID]
@automaker_id int
as 
begin 
select COUNT(*)from Product where automaker_id=@automaker_id
end
GO
/****** Object:  StoredProcedure [dbo].[SP_getAllAutomaker]    Script Date: 22/10/2024 10:22:59 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SP_getAllAutomaker]
as 
begin 
select *from Automaker
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetAllBank]    Script Date: 22/10/2024 10:22:59 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[SP_GetAllBank]
as 
begin
select *from Bank
end;
GO
/****** Object:  StoredProcedure [dbo].[SP_GetAllCustomer]    Script Date: 22/10/2024 10:22:59 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GetAllCustomer]
AS
BEGIN
    SELECT 
        u.user_name,
        c.first_name,
        c.last_name,
        c.email,
        c.address
    FROM 
        [dbo].[User] AS u
    JOIN 
        Customer AS c 
    ON 
        u.user_id = c.user_id
    WHERE 
        u.role_id = 3
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetAllProduct]    Script Date: 22/10/2024 10:22:59 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE PROCEDURE [dbo].[SP_GetAllProduct]
AS
BEGIN
    SELECT * FROM Product;
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetProductByAutomakerID]    Script Date: 22/10/2024 10:22:59 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_GetProductByAutomakerID]
@AutumakerID int
as Begin 
select *from Product where automaker_id=@AutumakerID
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetTop4HondaAccord]    Script Date: 22/10/2024 10:22:59 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_GetTop4HondaAccord]
as 
begin
select top 4 *from Product where automaker_id=6
order by product_id desc
end;
GO
/****** Object:  StoredProcedure [dbo].[SP_GetTop4HondaBRV]    Script Date: 22/10/2024 10:22:59 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_GetTop4HondaBRV]
as 
begin
select top 4 *from Product where automaker_id=2
order by product_id desc
end;
GO
/****** Object:  StoredProcedure [dbo].[SP_GetTop4HondaCivic]    Script Date: 22/10/2024 10:22:59 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_GetTop4HondaCivic]
as 
begin 
select *from Product where automaker_id=3
end;
GO
/****** Object:  StoredProcedure [dbo].[SP_GetTop4HondaCRV]    Script Date: 22/10/2024 10:22:59 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_GetTop4HondaCRV]
as 
begin
select top 4 *from Product where automaker_id=5
order by product_id desc
end;
GO
/****** Object:  StoredProcedure [dbo].[SP_PhanTrang]    Script Date: 22/10/2024 10:22:59 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_PhanTrang]
    @AutomakerId INT,
    @PageNumber INT
AS
BEGIN
    DECLARE @PageSize INT = 6;
    
    ;WITH ProductPaging AS
    (
        SELECT 
            ROW_NUMBER() OVER (ORDER BY product_id ASC) AS RowNum,
            *
        FROM Product
        WHERE automaker_id = @AutomakerId
    )
    SELECT *
    FROM ProductPaging
    WHERE RowNum BETWEEN ((@PageNumber - 1) * @PageSize + 1) AND (@PageNumber * @PageSize);
END;
GO
/****** Object:  StoredProcedure [dbo].[SP_UserLogin]    Script Date: 22/10/2024 10:22:59 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_UserLogin]
@user_name nvarchar(50),
@password nvarchar(max)
as
begin
select *from [dbo].[User]
where [user_name]=@user_name and [password]=@password
end
GO
