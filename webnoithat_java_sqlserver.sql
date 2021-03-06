USE [webbangiay]
GO
/****** Object:  Table [dbo].[amount]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[amount](
	[amount_product_id] [varchar](36) NOT NULL,
	[amount] [int] NULL,
	[color] [nvarchar](255) NULL,
	[created_date] [datetime] NULL,
	[image] [varchar](255) NULL,
	[modified_date] [datetime] NULL,
	[product_id] [varchar](36) NULL,
	[size] [int] NULL,
 CONSTRAINT [PK__amount__A1E93A902F8C442D] PRIMARY KEY CLUSTERED 
(
	[amount_product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[news]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[news](
	[news_id] [varchar](36) NOT NULL,
	[created_date] [datetime] NULL,
	[link_image] [varchar](255) NULL,
	[modified_date] [datetime] NULL,
	[news_content] [nvarchar](3000) NULL,
	[news_event] [int] NULL,
	[news_home] [int] NULL,
	[news_hot] [int] NULL,
	[news_product] [int] NULL,
	[news_sale] [int] NULL,
	[news_title] [nvarchar](2550) NULL,
 CONSTRAINT [PK__news__4C27CCD8D46C82E2] PRIMARY KEY CLUSTERED 
(
	[news_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order](
	[order_id] [varchar](36) NOT NULL,
	[address] [varchar](255) NULL,
	[created_date] [datetime2](7) NULL,
	[full_name] [varchar](255) NULL,
	[modified_date] [datetime2](7) NULL,
	[note] [varchar](255) NULL,
	[payment_methods] [int] NULL,
	[phone_number] [varchar](255) NULL,
	[status_order] [int] NULL,
	[user_id] [char](36) NULL,
	[user_name] [varchar](255) NULL,
 CONSTRAINT [PK__order__465962295B5A5FA9] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_detail]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_detail](
	[order_detail_id] [varchar](36) NOT NULL,
	[amount] [int] NULL,
	[order_id] [varchar](36) NULL,
	[price] [float] NULL,
	[product_id] [varchar](36) NULL,
	[product_name] [varchar](255) NULL,
	[size] [int] NULL,
	[color] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[order_detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[product_id] [varchar](36) NOT NULL,
	[created_date] [datetime] NULL,
	[modified_date] [datetime] NULL,
	[product_category_id] [varchar](36) NULL,
	[product_color] [int] NULL,
	[product_description] [nvarchar](4000) NULL,
	[product_description_short] [nvarchar](1000) NULL,
	[product_dimensions] [nvarchar](1000) NULL,
	[product_evaluate] [float] NULL,
	[product_image] [varchar](255) NULL,
	[product_manufacturer] [nvarchar](255) NULL,
	[product_material] [nvarchar](255) NULL,
	[product_name] [nvarchar](255) NULL,
	[product_original_price] [float] NULL,
	[product_sale_price] [float] NULL,
 CONSTRAINT [PK__product__47027DF5AD02D952] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_category]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_category](
	[product_category_id] [varchar](36) NOT NULL,
	[created_date] [datetime] NULL,
	[modified_date] [datetime] NULL,
	[product_category_description] [varchar](255) NULL,
	[product_category_home] [varchar](255) NULL,
	[product_category_image] [varchar](255) NULL,
	[product_category_name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[product_category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[project]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[project](
	[project_id] [varchar](36) NOT NULL,
	[created_date] [datetime] NULL,
	[link_image] [varchar](255) NULL,
	[modified_date] [datetime] NULL,
	[project_content] [nvarchar](4000) NULL,
	[project_home] [int] NULL,
	[project_hot] [int] NULL,
	[project_title] [nvarchar](3000) NULL,
 CONSTRAINT [PK__project__BC799E1FA7F76963] PRIMARY KEY CLUSTERED 
(
	[project_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[recruitment]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[recruitment](
	[recruitment_id] [varchar](36) NOT NULL,
	[created_date] [datetime] NULL,
	[link_image] [varchar](255) NULL,
	[modified_date] [datetime] NULL,
	[recruitment_content] [nvarchar](4000) NULL,
	[recruitment_home] [int] NULL,
	[recruitment_hot] [int] NULL,
	[recruitment_title] [nvarchar](4000) NULL,
 CONSTRAINT [PK__recruitm__CCF7A0AD4B0E3427] PRIMARY KEY CLUSTERED 
(
	[recruitment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[user_id] [varchar](36) NOT NULL,
	[address] [nvarchar](255) NULL,
	[created_date] [datetime] NULL,
	[full_name] [nvarchar](50) NULL,
	[modified_date] [datetime] NULL,
	[password] [nvarchar](50) NULL,
	[phone_number] [varchar](11) NULL,
	[role] [int] NULL,
	[user_name] [varchar](50) NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[amount] ([amount_product_id], [amount], [color], [created_date], [image], [modified_date], [product_id], [size]) VALUES (N'1b4d6f69-167d-420f-94e1-4b0c0f7269b8', 50, N'green', NULL, N'utraboot22a.jpg', NULL, N'4604dbc5-c51c-420b-a5d3-647143f3e3da', 42)
INSERT [dbo].[amount] ([amount_product_id], [amount], [color], [created_date], [image], [modified_date], [product_id], [size]) VALUES (N'1b4d6f69-167d-420f-94e2-4b0c0f7269b8', 50, N'green', NULL, N'utraboot22a.jpg', NULL, N'4604dbc5-c51c-420b-a5d3-647143f3e3da', 41)
INSERT [dbo].[amount] ([amount_product_id], [amount], [color], [created_date], [image], [modified_date], [product_id], [size]) VALUES (N'1b4d6f69-167d-420f-94e3-4b0c0f7269b8', 50, N'white', NULL, N'Adidas-equipment-plus-white-cloud-pink.jpg', NULL, N'4604dbc5-c51c-420b-a5d3-647143f3e3db', 40)
INSERT [dbo].[amount] ([amount_product_id], [amount], [color], [created_date], [image], [modified_date], [product_id], [size]) VALUES (N'1b4d6f69-167d-420f-94e4-4b0c0f7269b8', 50, N'black', NULL, N'Adidas-equipment-plus-white-cloud-pink.jpg', NULL, N'4604dbc5-c51c-420b-a5d3-647143f3e3db', 41)
INSERT [dbo].[amount] ([amount_product_id], [amount], [color], [created_date], [image], [modified_date], [product_id], [size]) VALUES (N'1b4d6f69-167d-420f-94e5-4b0c0f7269b8', 50, N'green', NULL, N'Adidas-equipment-plus-white-cloud-pink.jpg', NULL, N'4604dbc5-c51c-420b-a5d3-647143f3e3db', 42)
INSERT [dbo].[amount] ([amount_product_id], [amount], [color], [created_date], [image], [modified_date], [product_id], [size]) VALUES (N'1b4d6f69-167d-420f-94e6-0b0c0f7269b8', 50, N'black', NULL, N'utraboot22a.jpg', NULL, N'4604dbc5-c51c-420b-a5d3-647143f3e3da', 41)
INSERT [dbo].[amount] ([amount_product_id], [amount], [color], [created_date], [image], [modified_date], [product_id], [size]) VALUES (N'1b4d6f69-167d-420f-94e6-1b0c0f7269b8', 10, N'white', NULL, N'Giay-louis-vuitton-artchlight-trainer-monogram.jpg', NULL, N'1b4d6f69-167d-420f-94e6-bb0c0f7269b8', 40)
INSERT [dbo].[amount] ([amount_product_id], [amount], [color], [created_date], [image], [modified_date], [product_id], [size]) VALUES (N'1b4d6f69-167d-420f-94e6-2b0c0f7269b8', 16, N'black', NULL, N'louis-vuitton-lv-archlight-trainers-shoes--AH5U2BMIBW_PM2_Front view.jpg', CAST(N'2022-02-22T15:10:35.283' AS DateTime), N'1b4d6f69-167d-420f-94e6-bb0c0f7269b8', 41)
INSERT [dbo].[amount] ([amount_product_id], [amount], [color], [created_date], [image], [modified_date], [product_id], [size]) VALUES (N'1b4d6f69-167d-420f-94e6-3b0c0f7269b8', 23, N'green', NULL, N'Giay-louis-vuitton-artchlight-trainer-monogram.jpg', CAST(N'2022-02-22T15:07:51.830' AS DateTime), N'1b4d6f69-167d-420f-94e6-bb0c0f7269b8', 42)
INSERT [dbo].[amount] ([amount_product_id], [amount], [color], [created_date], [image], [modified_date], [product_id], [size]) VALUES (N'1b4d6f69-167d-420f-94e6-4b0c0f7269b1', 50, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[amount] ([amount_product_id], [amount], [color], [created_date], [image], [modified_date], [product_id], [size]) VALUES (N'1b4d6f69-167d-420f-94e6-4b0c0f7269b2', 50, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[amount] ([amount_product_id], [amount], [color], [created_date], [image], [modified_date], [product_id], [size]) VALUES (N'1b4d6f69-167d-420f-94e6-4b0c0f7269b3', 50, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[amount] ([amount_product_id], [amount], [color], [created_date], [image], [modified_date], [product_id], [size]) VALUES (N'1b4d6f69-167d-420f-94e6-4b0c0f7269b4', 50, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[amount] ([amount_product_id], [amount], [color], [created_date], [image], [modified_date], [product_id], [size]) VALUES (N'1b4d6f69-167d-420f-94e6-4b0c0f7269b5', 50, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[amount] ([amount_product_id], [amount], [color], [created_date], [image], [modified_date], [product_id], [size]) VALUES (N'1b4d6f69-167d-420f-94e6-4b0c0f7269b6', 50, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[amount] ([amount_product_id], [amount], [color], [created_date], [image], [modified_date], [product_id], [size]) VALUES (N'1b4d6f69-167d-420f-94e6-4b0c0f7269b7', 50, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[amount] ([amount_product_id], [amount], [color], [created_date], [image], [modified_date], [product_id], [size]) VALUES (N'1b4d6f69-167d-420f-94e6-4b0c0f7269b8', 40, N'green', NULL, N'Giay-louis-vuitton-artchlight-trainer-monogram.jpg', NULL, N'1b4d6f69-167d-420f-94e6-bb0c0f7269b8', 41)
INSERT [dbo].[amount] ([amount_product_id], [amount], [color], [created_date], [image], [modified_date], [product_id], [size]) VALUES (N'1b4d6f69-167d-420f-94e6-5b0c0f7269b8', 10, N'white', NULL, N'puma-abc.jpg', NULL, N'2d60bfe0-77a6-4773-a943-da0807aa71df', 40)
INSERT [dbo].[amount] ([amount_product_id], [amount], [color], [created_date], [image], [modified_date], [product_id], [size]) VALUES (N'1b4d6f69-167d-420f-94e6-6b0c0f7269b8', 10, N'black', NULL, N'Puma1.jpg', NULL, N'2d60bfe0-77a6-4773-a943-da0807aa71df', 41)
INSERT [dbo].[amount] ([amount_product_id], [amount], [color], [created_date], [image], [modified_date], [product_id], [size]) VALUES (N'1b4d6f69-167d-420f-94e6-7b0c0f7269b8', 10, N'green', NULL, N'puma-abc.jpg', NULL, N'2d60bfe0-77a6-4773-a943-da0807aa71df', 42)
INSERT [dbo].[amount] ([amount_product_id], [amount], [color], [created_date], [image], [modified_date], [product_id], [size]) VALUES (N'1b4d6f69-167d-420f-94e6-8b0c0f7269b8', 10, N'green', NULL, N'puma-abc.jpg', NULL, N'2d60bfe0-77a6-4773-a943-da0807aa71df', 41)
INSERT [dbo].[amount] ([amount_product_id], [amount], [color], [created_date], [image], [modified_date], [product_id], [size]) VALUES (N'1b4d6f69-167d-420f-94e6-9b0c0f7269b8', 50, N'white', NULL, N'Adidas_utraboot.jpg', NULL, N'4604dbc5-c51c-420b-a5d3-647143f3e3da', 40)
INSERT [dbo].[amount] ([amount_product_id], [amount], [color], [created_date], [image], [modified_date], [product_id], [size]) VALUES (N'1b4d6f69-167d-420f-94e7-4b0c0f7269b8', 50, N'green', NULL, N'eqtabc.jpg', NULL, N'4604dbc5-c51c-420b-a5d3-647143f3e3db', 41)
INSERT [dbo].[amount] ([amount_product_id], [amount], [color], [created_date], [image], [modified_date], [product_id], [size]) VALUES (N'1b4d6f69-167d-420f-94e8-4b0c0f7269b8', 50, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[amount] ([amount_product_id], [amount], [color], [created_date], [image], [modified_date], [product_id], [size]) VALUES (N'1b4d6f69-167d-420f-94e9-4b0c0f7269b8', 50, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[news] ([news_id], [created_date], [link_image], [modified_date], [news_content], [news_event], [news_home], [news_hot], [news_product], [news_sale], [news_title]) VALUES (N'2174dcd0-b6a4-48cc-93eb-f4393eaa63ec', NULL, N'', NULL, N'abc', 0, 0, 0, 0, 0, N'ABC')
INSERT [dbo].[news] ([news_id], [created_date], [link_image], [modified_date], [news_content], [news_event], [news_home], [news_hot], [news_product], [news_sale], [news_title]) VALUES (N'bba6d0b9-e91e-4b20-94b7-14ba860d21bd', CAST(N'2021-09-19T00:00:00.000' AS DateTime), N'newss1.jpg', NULL, N'Cứ tưởng đi giày dép thì chỉ có đi vào thôi ai ngờ chỉ một chi tiết nhỏ này là làm "cục diện" thay đổi ngay tức khắc. Đôi tất với kiểu dáng khác nhau có thể giúp hack dáng cũng như hoàn thiện outfit thêm vài phần "chanh sả". Không tin bạn cứ xem Rosé diện thì biết nè. Kiểu thứ nhất là đi giày đế bánh mì mix với tất cổ cao. Cách mix này không có gì mới nhưng phải công nhận phối kiểu này độ dễ thương dễ là tăng lên vài bậc, nhất là với những set đồ mang phong cách kẹo ngọt này. ', 1, 1, 1, 1, 0, N'Phải học ngay cách mix giày và tất này thôi vì Rosé BLACKPINK bảo như thế rất sang chảnh!')
INSERT [dbo].[news] ([news_id], [created_date], [link_image], [modified_date], [news_content], [news_event], [news_home], [news_hot], [news_product], [news_sale], [news_title]) VALUES (N'bba6d0b9-e91e-4b20-94b7-14ba860d21be', CAST(N'2021-09-19T00:00:00.000' AS DateTime), N'newss2.jpg', NULL, N'Ra đời từ năm 2010, tiệm chăm sóc giày Dubo được lòng các bạn trẻ Hà Nội. Các dịch vụ của tiệm cũng giống những nơi khác. Dịch vụ vệ sinh giày trong 7 ngày có giá 80k. Nếu muốn nhận nhanh hơn, bạn phải chi khoảng 100k - 150k/đôi nha.Đánh giá của khách cũng cực tốt luôn. Một bạn bình luận: “Đôi giày của mình đã từng bị ố đế và xước da khá nặng do đi không giữ. Tìm mãi không có cách nào hay chỗ nào sửa được, may có đứa bạn chơi giày giới thiệu qua Dubo. Lúc đầu cũng chẳng hy vọng gì nhiều, mà lúc nhận giày về cứ ngỡ ngàng vì tưởng không phải giày của mình. Ai có giày bẩn, giày cũ, cứ mang qua đây đảm bảo không thất vọng”.', 1, 1, 1, 0, 1, N'Điểm danh tiệm giặt giày chất lượng nhất Hà Nội')
INSERT [dbo].[news] ([news_id], [created_date], [link_image], [modified_date], [news_content], [news_event], [news_home], [news_hot], [news_product], [news_sale], [news_title]) VALUES (N'bba6d0b9-e91e-4b20-94b7-14ba860d21bf', CAST(N'2021-09-19T00:00:00.000' AS DateTime), N'newss3.jpg', NULL, N'Trong suy nghĩ của nhiều người, game thủ và streamer vốn là những người thường có phong cách ăn mặc khá giản dị, ít quan tâm tới ngoại hình. Tuy nhiên, cũng có những streamer lại sở hữu cho mình gu ăn mặc sành điệu, đầu tư nhiều hàng hiệu cho thời trang, điển hình như Linh Ngọc Đàm.', 1, 1, 1, 1, 1, N'Bóc giá kho giày hiệu')
GO
INSERT [dbo].[order] ([order_id], [address], [created_date], [full_name], [modified_date], [note], [payment_methods], [phone_number], [status_order], [user_id], [user_name]) VALUES (N'2ab2882c-3abd-407a-b74f-8bdfa283dd0a', N'Hà n?i', CAST(N'2022-02-22T14:42:51.1920000' AS DateTime2), N'dat123456', CAST(N'2022-02-22T14:42:51.1920000' AS DateTime2), NULL, 0, N'128731831', 5, N'0530d44e-34d9-11ec-9f32-b00cd19df262', N'dat123456')
INSERT [dbo].[order] ([order_id], [address], [created_date], [full_name], [modified_date], [note], [payment_methods], [phone_number], [status_order], [user_id], [user_name]) VALUES (N'2ae74f8a-235b-4aea-b800-4deddbdec8c7', N'Hà n?i', CAST(N'2022-02-21T09:29:19.8050000' AS DateTime2), N'dat123456', CAST(N'2022-02-21T09:29:19.8050000' AS DateTime2), NULL, 0, N'128731831', 5, N'0530d44e-34d9-11ec-9f32-b00cd19df262', N'dat123456')
INSERT [dbo].[order] ([order_id], [address], [created_date], [full_name], [modified_date], [note], [payment_methods], [phone_number], [status_order], [user_id], [user_name]) VALUES (N'556fea50-fe1d-4127-8a17-f5747f34e004', N'Hà n?i', CAST(N'2022-02-22T14:42:49.1840000' AS DateTime2), N'dat123456', CAST(N'2022-02-22T14:42:49.1840000' AS DateTime2), NULL, 0, N'128731831', 5, N'0530d44e-34d9-11ec-9f32-b00cd19df262', N'dat123456')
INSERT [dbo].[order] ([order_id], [address], [created_date], [full_name], [modified_date], [note], [payment_methods], [phone_number], [status_order], [user_id], [user_name]) VALUES (N'59c395e7-0f74-4e0c-8404-a2d72ef76a32', N'Hà n?i', CAST(N'2022-02-22T15:10:35.2590000' AS DateTime2), N'dat123456', CAST(N'2022-02-22T15:10:35.2590000' AS DateTime2), NULL, 0, N'128731831', 5, N'0530d44e-34d9-11ec-9f32-b00cd19df262', N'dat123456')
INSERT [dbo].[order] ([order_id], [address], [created_date], [full_name], [modified_date], [note], [payment_methods], [phone_number], [status_order], [user_id], [user_name]) VALUES (N'71059601-0e66-4c56-954b-54c66d161f2a', N'Hà n?i', CAST(N'2022-02-22T15:07:51.8130000' AS DateTime2), N'dat123456', CAST(N'2022-02-22T15:07:51.8130000' AS DateTime2), NULL, 0, N'128731831', 5, N'0530d44e-34d9-11ec-9f32-b00cd19df262', N'dat123456')
INSERT [dbo].[order] ([order_id], [address], [created_date], [full_name], [modified_date], [note], [payment_methods], [phone_number], [status_order], [user_id], [user_name]) VALUES (N'a0c07219-b9d4-4c1c-9667-0594913de5ba', N'Hà n?i', CAST(N'2022-02-22T14:43:01.5620000' AS DateTime2), N'dat123456', CAST(N'2022-02-22T14:43:01.5620000' AS DateTime2), NULL, 0, N'128731831', 5, N'0530d44e-34d9-11ec-9f32-b00cd19df262', N'dat123456')
INSERT [dbo].[order] ([order_id], [address], [created_date], [full_name], [modified_date], [note], [payment_methods], [phone_number], [status_order], [user_id], [user_name]) VALUES (N'd49b7ac3-e582-40c6-8c0d-c475c3c1b648', N'Hà n?i', CAST(N'2022-02-21T09:37:26.0670000' AS DateTime2), N'dat123456', CAST(N'2022-02-21T09:37:26.0670000' AS DateTime2), NULL, 0, N'128731831', 5, N'0530d44e-34d9-11ec-9f32-b00cd19df262', N'dat123456')
GO
INSERT [dbo].[order_detail] ([order_detail_id], [amount], [order_id], [price], [product_id], [product_name], [size], [color]) VALUES (N'10887141-674D-4248-AB63-0D1AADADCEFC', 2, NULL, 3590000, N'1b4d6f69-167d-420f-94e6-bb0c0f7269b8', N'LOUIS VUITTON ARCHLIGHT TRAINER MONOGRAM WHITE', 42, N'white')
INSERT [dbo].[order_detail] ([order_detail_id], [amount], [order_id], [price], [product_id], [product_name], [size], [color]) VALUES (N'837fd752-11f3-4f94-ad07-dfb90f916ca0', 4, N'59c395e7-0f74-4e0c-8404-a2d72ef76a32', 3590000, N'1b4d6f69-167d-420f-94e6-bb0c0f7269b8', N'LOUIS VUITTON ARCHLIGHT TRAINER MONOGRAM WHITE', 41, N'black')
INSERT [dbo].[order_detail] ([order_detail_id], [amount], [order_id], [price], [product_id], [product_name], [size], [color]) VALUES (N'A5B74639-50AE-4275-B8CD-487C69F98B1C', 2, NULL, 3590000, N'1b4d6f69-167d-420f-94e6-bb0c0f7269b8', N'LOUIS VUITTON ARCHLIGHT TRAINER MONOGRAM WHITE', 42, N'green')
INSERT [dbo].[order_detail] ([order_detail_id], [amount], [order_id], [price], [product_id], [product_name], [size], [color]) VALUES (N'a9a13b58-fcac-4e2a-a8ae-961be2fe20ac', 1, N'2ae74f8a-235b-4aea-b800-4deddbdec8c7', 3590000, N'1b4d6f69-167d-420f-94e6-bb0c0f7269b8', N'LOUIS VUITTON ARCHLIGHT TRAINER MONOGRAM WHITE', 40, N'')
INSERT [dbo].[order_detail] ([order_detail_id], [amount], [order_id], [price], [product_id], [product_name], [size], [color]) VALUES (N'efd24024-c03f-493b-9dec-a2d5fb0894e2', 2, N'd49b7ac3-e582-40c6-8c0d-c475c3c1b648', 3590000, N'1b4d6f69-167d-420f-94e6-bb0c0f7269b8', N'LOUIS VUITTON ARCHLIGHT TRAINER MONOGRAM WHITE', 42, N'White')
INSERT [dbo].[order_detail] ([order_detail_id], [amount], [order_id], [price], [product_id], [product_name], [size], [color]) VALUES (N'eff299ab-7c9b-4f3a-b51a-2ec47e25ce62', 5, N'71059601-0e66-4c56-954b-54c66d161f2a', 3590000, N'1b4d6f69-167d-420f-94e6-bb0c0f7269b8', N'LOUIS VUITTON ARCHLIGHT TRAINER MONOGRAM WHITE', 42, N'green')
GO
INSERT [dbo].[product] ([product_id], [created_date], [modified_date], [product_category_id], [product_color], [product_description], [product_description_short], [product_dimensions], [product_evaluate], [product_image], [product_manufacturer], [product_material], [product_name], [product_original_price], [product_sale_price]) VALUES (N'1b4d6f69-167d-420f-94e6-bb0c0f7269b8', CAST(N'2021-09-19T00:00:00.000' AS DateTime), CAST(N'2021-09-19T00:00:00.000' AS DateTime), N'7a7b922a-2ccd-441d-8a38-c89746772fb4', 19314485, N'Lấy cảm hứng từ những đôi giày thể thao bóng rổ cổ điển, LV Trainer sneaker xuất hiện trong show diễn thời trang nam Xuân-Hè 2019 của Louis Vuitton', N'Thiết kế gọn gẽ ôm chân', N'Ôm chân', 1, N'Giay-louis-vuitton-artchlight-trainer-monogram.jpg', N'Louis Vuitton', N'Vải', N'LOUIS VUITTON ARCHLIGHT TRAINER MONOGRAM WHITE', 4600000, 3590000)
INSERT [dbo].[product] ([product_id], [created_date], [modified_date], [product_category_id], [product_color], [product_description], [product_description_short], [product_dimensions], [product_evaluate], [product_image], [product_manufacturer], [product_material], [product_name], [product_original_price], [product_sale_price]) VALUES (N'2d60bfe0-77a6-4773-a943-da0807aa71df', CAST(N'2021-09-19T00:00:00.000' AS DateTime), CAST(N'2021-09-19T00:00:00.000' AS DateTime), N'd12fe84e-558b-4843-9e5f-51310b05feb4', 19314485, N'Sản phẩm này được bảo hành 1 năm bao gồm các lỗi sản xuất, các vấn đề về mối mọt. Đối với các sản phẩm được bọc, bảo hành áp dụng cho khung, đệm và các cơ chế, nếu có.', N'Thiết kế gọn gẽ ôm chân', N'Ôm chân', 1, N'Puma1.jpg', N'Puma', N'Vải', N'PUMA CRACK HERITAGE', 790000, 590000)
INSERT [dbo].[product] ([product_id], [created_date], [modified_date], [product_category_id], [product_color], [product_description], [product_description_short], [product_dimensions], [product_evaluate], [product_image], [product_manufacturer], [product_material], [product_name], [product_original_price], [product_sale_price]) VALUES (N'4604dbc5-c51c-420b-a5d3-647143f3e3da', CAST(N'2021-09-19T00:00:00.000' AS DateTime), CAST(N'2021-09-19T00:00:00.000' AS DateTime), N'33757229-0b61-4e52-8415-752b6387f551', 19314485, N'Sản phẩm này được bảo hành 1 năm bao gồm các lỗi sản xuất, các vấn đề về mối mọt. Đối với các sản phẩm được bọc, bảo hành áp dụng cho khung, đệm và các cơ chế, nếu có.', N'Thiết kế gọn gẽ ôm chân', N'Ôm chân', 1, N'Adidas_utraboot.jpg', N'Adidas', N'Vải', N'ULTRABOOST 22', 1450000, 1200000)
INSERT [dbo].[product] ([product_id], [created_date], [modified_date], [product_category_id], [product_color], [product_description], [product_description_short], [product_dimensions], [product_evaluate], [product_image], [product_manufacturer], [product_material], [product_name], [product_original_price], [product_sale_price]) VALUES (N'4604dbc5-c51c-420b-a5d3-647143f3e3db', CAST(N'2021-09-19T00:00:00.000' AS DateTime), CAST(N'2021-09-19T00:00:00.000' AS DateTime), N'33757229-0b61-4e52-8415-752b6387f551', 19314485, N'Sản phẩm này được bảo hành 1 năm bao gồm các lỗi sản xuất, các vấn đề về mối mọt. Đối với các sản phẩm được bọc, bảo hành áp dụng cho khung, đệm và các cơ chế, nếu có.', N'Thiết kế gọn gẽ ôm chân', N'Ôm chân', 1, N'Adidas-equipment-plus-white-cloud-pink.jpg', N'Adidas', N'Vải', N'ADIDAS EQUIPMENT PLUS WHITE CLOUD PINK', 122222, 111111)
INSERT [dbo].[product] ([product_id], [created_date], [modified_date], [product_category_id], [product_color], [product_description], [product_description_short], [product_dimensions], [product_evaluate], [product_image], [product_manufacturer], [product_material], [product_name], [product_original_price], [product_sale_price]) VALUES (N'4604dbc5-c51c-420b-a5d3-647143f3e3dc', CAST(N'2021-09-19T00:00:00.000' AS DateTime), CAST(N'2021-09-19T00:00:00.000' AS DateTime), N'33757229-0b61-4e52-8415-752b6387f551', 19314485, N'Sản phẩm này được bảo hành 1 năm bao gồm các lỗi sản xuất, các vấn đề về mối mọt. Đối với các sản phẩm được bọc, bảo hành áp dụng cho khung, đệm và các cơ chế, nếu có.', N'Thiết kế gọn gẽ ôm chân', N'Ôm chân', 1, N'Adidas-zx-2k-boost-clear-grey-core-black-granite.jpg', N'Adidas', N'Vải', N'ADIDAS ZX 2K BOOST CLEAR GREY CORE BLACK GRANITE', 122222, 111111)
INSERT [dbo].[product] ([product_id], [created_date], [modified_date], [product_category_id], [product_color], [product_description], [product_description_short], [product_dimensions], [product_evaluate], [product_image], [product_manufacturer], [product_material], [product_name], [product_original_price], [product_sale_price]) VALUES (N'4af5647e-3f57-4d72-960f-6eafca4046a0', CAST(N'2021-09-19T00:00:00.000' AS DateTime), CAST(N'2021-09-19T00:00:00.000' AS DateTime), N'd12fe84e-558b-4843-9e5f-51310b05feb4', 19314485, N'Sản phẩm này được bảo hành 1 năm bao gồm các lỗi sản xuất, các vấn đề về mối mọt. Đối với các sản phẩm được bọc, bảo hành áp dụng cho khung, đệm và các cơ chế, nếu có.', N'Thiết kế gọn gẽ ôm chân', N'Ôm chân', 1, N'Puma-bari-cv.jpg', N'Puma', N'Vải', N'PUMA BARI CV', 1390000, 1090000)
INSERT [dbo].[product] ([product_id], [created_date], [modified_date], [product_category_id], [product_color], [product_description], [product_description_short], [product_dimensions], [product_evaluate], [product_image], [product_manufacturer], [product_material], [product_name], [product_original_price], [product_sale_price]) VALUES (N'4af5647e-3f57-4d72-960f-6eafca4046a1', CAST(N'2021-09-19T00:00:00.000' AS DateTime), CAST(N'2021-09-19T00:00:00.000' AS DateTime), N'd12fe84e-558b-4843-9e5f-51310b05feb4', 19314485, N'Sản phẩm này được bảo hành 1 năm bao gồm các lỗi sản xuất, các vấn đề về mối mọt. Đối với các sản phẩm được bọc, bảo hành áp dụng cho khung, đệm và các cơ chế, nếu có.', N'Thiết kế gọn gẽ ôm chân', N'Ôm chân', 1, N'Puma-R78.jpg', N'Puma', N'Vải', N'PUMA R78', 1390000, 1090000)
INSERT [dbo].[product] ([product_id], [created_date], [modified_date], [product_category_id], [product_color], [product_description], [product_description_short], [product_dimensions], [product_evaluate], [product_image], [product_manufacturer], [product_material], [product_name], [product_original_price], [product_sale_price]) VALUES (N'536e528a-df82-43a2-95e5-9e8c52b49924', CAST(N'2021-09-19T00:00:00.000' AS DateTime), CAST(N'2021-09-19T00:00:00.000' AS DateTime), N'fa6423d6-c959-482c-9d24-bb27e91b946d', 19314485, N'Sản phẩm này được bảo hành 1 năm bao gồm các lỗi sản xuất, các vấn đề về mối mọt. Đối với các sản phẩm được bọc, bảo hành áp dụng cho khung, đệm và các cơ chế, nếu có.', N'Thiết kế gọn gẽ ôm chân', N'Ôm chân', 1, N'Varsace.jpg', N'Varsace', N'Vải', N'MEDUSA STATION ', 1205000, 1010000)
INSERT [dbo].[product] ([product_id], [created_date], [modified_date], [product_category_id], [product_color], [product_description], [product_description_short], [product_dimensions], [product_evaluate], [product_image], [product_manufacturer], [product_material], [product_name], [product_original_price], [product_sale_price]) VALUES (N'701ffd83-dff0-4d98-a8e0-6caa873400bf', CAST(N'2021-09-19T00:00:00.000' AS DateTime), CAST(N'2021-09-19T00:00:00.000' AS DateTime), N'7a7b922a-2ccd-441d-8a38-c89746772fb4', 19314485, N'Lấy cảm hứng từ những đôi giày thể thao bóng rổ cổ điển, LV Trainer sneaker xuất hiện trong show diễn thời trang nam Xuân-Hè 2019 của Louis Vuitton', N'Thiết kế gọn gẽ ôm chân', N'Ôm chân', 1, N'Giay-louis-vuitton-artchlight-trainer-monogram-black.jpg', N'Louis Vuitton', N'Vải', N'LOUIS VUITTON ARCHLIGHT TRAINER MONOGRAM BLACK', 1990000, 1590000)
INSERT [dbo].[product] ([product_id], [created_date], [modified_date], [product_category_id], [product_color], [product_description], [product_description_short], [product_dimensions], [product_evaluate], [product_image], [product_manufacturer], [product_material], [product_name], [product_original_price], [product_sale_price]) VALUES (N'7bc0d460-08f9-4c30-8c02-6bdde1a84fa3', CAST(N'2021-09-19T00:00:00.000' AS DateTime), CAST(N'2021-09-19T00:00:00.000' AS DateTime), N'fa6423d6-c959-482c-9d24-bb27e91b946d', 19314485, N'Sản phẩm này được bảo hành 1 năm bao gồm các lỗi sản xuất, các vấn đề về mối mọt. Đối với các sản phẩm được bọc, bảo hành áp dụng cho khung, đệm và các cơ chế, nếu có.', N'Thiết kế gọn gẽ ôm chân', N'Ôm chân', 1, N'Versace-gnv06.jpg', N'Varsace', N'Vải', N'GNV 06', 2990000, 2260000)
INSERT [dbo].[product] ([product_id], [created_date], [modified_date], [product_category_id], [product_color], [product_description], [product_description_short], [product_dimensions], [product_evaluate], [product_image], [product_manufacturer], [product_material], [product_name], [product_original_price], [product_sale_price]) VALUES (N'7ef663da-5c24-4064-a30c-72fae77b6c52', CAST(N'2021-09-19T00:00:00.000' AS DateTime), CAST(N'2021-09-19T00:00:00.000' AS DateTime), N'728bb108-c820-40f6-9f96-30434a486c02', 19414485, N'Sản phẩm này được bảo hành 1 năm bao gồm các lỗi sản xuất, các vấn đề về mối mọt. Đối với các sản phẩm được bọc, bảo hành áp dụng cho khung, đệm và các cơ chế, nếu có.', N'Thiết kế gọn gẽ ôm chân', N'Ôm chân', 1, N'Giay-gucci-rhyton-new-york-yankees-1-1.jpg', N'Gucci', N'Vải', N'GIÀY GUCCI RHYTON NEW YORK YANKEES', 137000, 115000)
INSERT [dbo].[product] ([product_id], [created_date], [modified_date], [product_category_id], [product_color], [product_description], [product_description_short], [product_dimensions], [product_evaluate], [product_image], [product_manufacturer], [product_material], [product_name], [product_original_price], [product_sale_price]) VALUES (N'a1e584a5-4845-4b9d-8887-c0ef25ce7c5e', CAST(N'2021-09-19T00:00:00.000' AS DateTime), CAST(N'2021-09-19T00:00:00.000' AS DateTime), N'33757229-0b61-4e52-8415-752b6387f551', 19314485, N'Sản phẩm này được bảo hành 1 năm bao gồm các lỗi sản xuất, các vấn đề về mối mọt. Đối với các sản phẩm được bọc, bảo hành áp dụng cho khung, đệm và các cơ chế, nếu có.', N'Thiết kế gọn gẽ ôm chân', N'Ôm chân', 1, N'Adidas-x9000l4.jpg', N'Adidas', N'Vải', N'ADIDAS X9000L4 ', 2700000, 2150000)
INSERT [dbo].[product] ([product_id], [created_date], [modified_date], [product_category_id], [product_color], [product_description], [product_description_short], [product_dimensions], [product_evaluate], [product_image], [product_manufacturer], [product_material], [product_name], [product_original_price], [product_sale_price]) VALUES (N'aa80041c-a5d3-4e49-8132-477554221978', CAST(N'2021-09-19T00:00:00.000' AS DateTime), CAST(N'2021-09-19T00:00:00.000' AS DateTime), N'fa6423d6-c959-482c-9d24-bb27e91b946d', 19314485, N'Sản phẩm này được bảo hành 1 năm bao gồm các lỗi sản xuất, các vấn đề về mối mọt. Đối với các sản phẩm được bọc, bảo hành áp dụng cho khung, đệm và các cơ chế, nếu có.', N'Thiết kế gọn gẽ ôm chân', N'Ôm chân', 1, N'Varsace-bee-cost.jpg', N'Varsace', N'Vải', N'BEE COST', 4220000, 3590000)
INSERT [dbo].[product] ([product_id], [created_date], [modified_date], [product_category_id], [product_color], [product_description], [product_description_short], [product_dimensions], [product_evaluate], [product_image], [product_manufacturer], [product_material], [product_name], [product_original_price], [product_sale_price]) VALUES (N'ae6536c6-45c0-45c5-a7d7-b4aedcc5c1e6', CAST(N'2021-09-19T00:00:00.000' AS DateTime), CAST(N'2021-09-19T00:00:00.000' AS DateTime), N'80796201-d22b-4630-9727-0babfbcfb4e9', 19314485, N'Sản phẩm này được bảo hành 1 năm bao gồm các lỗi sản xuất, các vấn đề về mối mọt. Đối với các sản phẩm được bọc, bảo hành áp dụng cho khung, đệm và các cơ chế, nếu có.', N'Thiết kế gọn gẽ ôm chân', N'Ôm chân', 1, N'Nike-air-jordan-4-bred.jpg', N'Nike', N'Vải', N'NIKE AIR JORDAN 4 ''BRED''', 222222, 11111)
INSERT [dbo].[product] ([product_id], [created_date], [modified_date], [product_category_id], [product_color], [product_description], [product_description_short], [product_dimensions], [product_evaluate], [product_image], [product_manufacturer], [product_material], [product_name], [product_original_price], [product_sale_price]) VALUES (N'ae6536c6-45c0-45c5-a7d7-b4aedcc5c1e7', CAST(N'2021-09-19T00:00:00.000' AS DateTime), CAST(N'2021-09-19T00:00:00.000' AS DateTime), N'80796201-d22b-4630-9727-0babfbcfb4e9', 19314485, N'Sản phẩm này được bảo hành 1 năm bao gồm các lỗi sản xuất, các vấn đề về mối mọt. Đối với các sản phẩm được bọc, bảo hành áp dụng cho khung, đệm và các cơ chế, nếu có.', N'Thiết kế gọn gẽ ôm chân', N'Ôm chân', 1, N'Nike-air-force-1-low-stussy-fossil-black.jpg', N'Nike', N'Vải', N'NIKE AIR FORCE 1 LOW STUSSY FOSSIL BLACK', 222222, 11111)
INSERT [dbo].[product] ([product_id], [created_date], [modified_date], [product_category_id], [product_color], [product_description], [product_description_short], [product_dimensions], [product_evaluate], [product_image], [product_manufacturer], [product_material], [product_name], [product_original_price], [product_sale_price]) VALUES (N'ae6536c6-45c0-45c5-a7d7-b4aedcc5c1e8', CAST(N'2021-09-19T00:00:00.000' AS DateTime), CAST(N'2021-09-19T00:00:00.000' AS DateTime), N'80796201-d22b-4630-9727-0babfbcfb4e9', 19314485, N'Sản phẩm này được bảo hành 1 năm bao gồm các lỗi sản xuất, các vấn đề về mối mọt. Đối với các sản phẩm được bọc, bảo hành áp dụng cho khung, đệm và các cơ chế, nếu có.', N'Thiết kế gọn gẽ ôm chân', N'Ôm chân', 1, N'Nike-air-zoom-pegasus-37-betrue.jpg', N'Nike', N'Vải', N'NIKE AIR ZOOM PEGASUS 37 BETRUE', 222222, 11111)
INSERT [dbo].[product] ([product_id], [created_date], [modified_date], [product_category_id], [product_color], [product_description], [product_description_short], [product_dimensions], [product_evaluate], [product_image], [product_manufacturer], [product_material], [product_name], [product_original_price], [product_sale_price]) VALUES (N'b24ecb98-e9ba-4920-ab89-365c8e12076f', CAST(N'2021-09-19T00:00:00.000' AS DateTime), CAST(N'2021-09-19T00:00:00.000' AS DateTime), N'6bcd08e4-eabe-49f2-ba24-6433a30a924c', 19314485, N'Sản phẩm này được bảo hành 1 năm bao gồm các lỗi sản xuất, các vấn đề về mối mọt. Đối với các sản phẩm được bọc, bảo hành áp dụng cho khung, đệm và các cơ chế, nếu có.', N'Thiết kế gọn gẽ ôm chân', N'Ôm chân', 1, N'Converse-chuck-den-co-thap.jpg', N'Converse', N'Vải', N'CONVERSE CHUCK 1970 BLACK LOW', 1450000, 1200000)
INSERT [dbo].[product] ([product_id], [created_date], [modified_date], [product_category_id], [product_color], [product_description], [product_description_short], [product_dimensions], [product_evaluate], [product_image], [product_manufacturer], [product_material], [product_name], [product_original_price], [product_sale_price]) VALUES (N'cba6df98-bb53-4b66-baed-2f3ccdf05f01', CAST(N'2021-09-19T00:00:00.000' AS DateTime), CAST(N'2021-09-19T00:00:00.000' AS DateTime), N'728bb108-c820-40f6-9f96-30434a486c02', 19414485, N'Sản phẩm này được bảo hành 1 năm bao gồm các lỗi sản xuất, các vấn đề về mối mọt. Đối với các sản phẩm được bọc, bảo hành áp dụng cho khung, đệm và các cơ chế, nếu có.', N'Thiết kế gọn gẽ ôm chân', N'Ôm chân', 1, N'Giay-gucci-rhyton-logo-leather-1-1.jpg', N'Gucci', N'Vải', N'GIÀY GUCCI RHYTON LOGO LEATHER ', 117000, 95000)
INSERT [dbo].[product] ([product_id], [created_date], [modified_date], [product_category_id], [product_color], [product_description], [product_description_short], [product_dimensions], [product_evaluate], [product_image], [product_manufacturer], [product_material], [product_name], [product_original_price], [product_sale_price]) VALUES (N'cba6df98-bb53-4b66-baed-2f3ccdf05f02', CAST(N'2021-09-19T00:00:00.000' AS DateTime), CAST(N'2021-09-19T00:00:00.000' AS DateTime), N'728bb108-c820-40f6-9f96-30434a486c02', 19414485, N'Sản phẩm này được bảo hành 1 năm bao gồm các lỗi sản xuất, các vấn đề về mối mọt. Đối với các sản phẩm được bọc, bảo hành áp dụng cho khung, đệm và các cơ chế, nếu có.', N'Thiết kế gọn gẽ ôm chân', N'Ôm chân', 1, N'Giay-gucci-rhyton-trang-full-1-1.jpg', N'Gucci', N'Vải', N'GIÀY GUCCI RHYTON TRẮNG', 117000, 95000)
INSERT [dbo].[product] ([product_id], [created_date], [modified_date], [product_category_id], [product_color], [product_description], [product_description_short], [product_dimensions], [product_evaluate], [product_image], [product_manufacturer], [product_material], [product_name], [product_original_price], [product_sale_price]) VALUES (N'cea45034-afaf-4df4-88ed-1518034b3899', CAST(N'2021-09-19T00:00:00.000' AS DateTime), CAST(N'2021-09-19T00:00:00.000' AS DateTime), N'7a7b922a-2ccd-441d-8a38-c89746772fb4', 19314485, N'Lấy cảm hứng từ những đôi giày thể thao bóng rổ cổ điển, LV Trainer sneaker xuất hiện trong show diễn thời trang nam Xuân-Hè 2019 của Louis Vuitton', N'Thiết kế gọn gẽ ôm chân', N'Ôm chân', 1, N'Luvuiton.jpg', N'Louis Vuitton', N'Vải', N'LOUIS VUITTON TRAINER', 1850000, 1390000)
GO
INSERT [dbo].[product_category] ([product_category_id], [created_date], [modified_date], [product_category_description], [product_category_home], [product_category_image], [product_category_name]) VALUES (N'33757229-0b61-4e52-8415-752b6387f551', CAST(N'2021-09-19T00:00:00.000' AS DateTime), CAST(N'2021-09-19T00:00:00.000' AS DateTime), N'Giày Adidas', N'1', N'loai-sp-adidas.png', N'Adidas')
INSERT [dbo].[product_category] ([product_category_id], [created_date], [modified_date], [product_category_description], [product_category_home], [product_category_image], [product_category_name]) VALUES (N'6bcd08e4-eabe-49f2-ba24-6433a30a924c', CAST(N'2021-09-19T00:00:00.000' AS DateTime), CAST(N'2021-09-19T00:00:00.000' AS DateTime), N'Giày Converse', N'1', N'loai-sp-converse.jpg', N'Converse')
INSERT [dbo].[product_category] ([product_category_id], [created_date], [modified_date], [product_category_description], [product_category_home], [product_category_image], [product_category_name]) VALUES (N'728bb108-c820-40f6-9f96-30434a486c02', CAST(N'2021-09-19T00:00:00.000' AS DateTime), CAST(N'2021-09-19T00:00:00.000' AS DateTime), N'Giày Gucci', N'1', N'loai-sp-gucci.png', N'Gucci')
INSERT [dbo].[product_category] ([product_category_id], [created_date], [modified_date], [product_category_description], [product_category_home], [product_category_image], [product_category_name]) VALUES (N'7a7b922a-2ccd-441d-8a38-c89746772fb4', CAST(N'2021-09-19T00:00:00.000' AS DateTime), CAST(N'2021-09-19T00:00:00.000' AS DateTime), N'Giày Louis Vuitton', N'1', N'loai-sp-louis-vuitton.jpg', N'Louis Vuitton')
INSERT [dbo].[product_category] ([product_category_id], [created_date], [modified_date], [product_category_description], [product_category_home], [product_category_image], [product_category_name]) VALUES (N'80796201-d22b-4630-9727-0babfbcfb4e9', CAST(N'2021-09-19T00:00:00.000' AS DateTime), CAST(N'2021-09-19T00:00:00.000' AS DateTime), N'Giày Nike', N'1', N'loai-sp-nike.jpg', N'Nike')
INSERT [dbo].[product_category] ([product_category_id], [created_date], [modified_date], [product_category_description], [product_category_home], [product_category_image], [product_category_name]) VALUES (N'd12fe84e-558b-4843-9e5f-51310b05feb4', CAST(N'2021-09-19T00:00:00.000' AS DateTime), CAST(N'2021-09-19T00:00:00.000' AS DateTime), N'Giày Puma', N'1', N'loai-sp-puma.jpg', N'Puma')
INSERT [dbo].[product_category] ([product_category_id], [created_date], [modified_date], [product_category_description], [product_category_home], [product_category_image], [product_category_name]) VALUES (N'fa6423d6-c959-482c-9d24-bb27e91b946d', CAST(N'2021-09-19T00:00:00.000' AS DateTime), CAST(N'2021-09-19T00:00:00.000' AS DateTime), N'Giày Varsace', N'0', N'loai-sp-varsace.png', N'Varsace')
GO
INSERT [dbo].[project] ([project_id], [created_date], [link_image], [modified_date], [project_content], [project_home], [project_hot], [project_title]) VALUES (N'165bf5ba-abc6-422d-80a0-b219e0ee9fc6', CAST(N'2021-09-19T00:00:00.000' AS DateTime), N'project1_new.jpg', NULL, N'Với phiên bản cổ cao sẽ giúp bảo vệ cổ chân & đây là xu hướng phối đồ khá dễ dàng nhờ thiết kế đơn giản, form ôm sát bàn chân giúp bạn vận động, di chuyển dễ dàng hơn.', 1, 0, N'Jordan 1 High')
INSERT [dbo].[project] ([project_id], [created_date], [link_image], [modified_date], [project_content], [project_home], [project_hot], [project_title]) VALUES (N'bba6d0b9-e91e-4b20-94b7-14ba860d21bc', CAST(N'2021-09-19T00:00:00.000' AS DateTime), N'project2_new.jpg', NULL, N'Phiên bản của JD1 cổ thấp theo đánh giá trên thị trường lại được sự yêu mến nhiều hơn so với loại cổ cao. Có thể nguyên nhân là do khi mang sẽ cảm giác mát & dễ chịu hơn (do chỉ che đến mắt cá chân). Đặc biệt là version "Black Toe" lại sử dụng tông màu đỏ & đen, 2 màu "huyền thoại" thường thấy khi các hãng xe nổi tiếng như honda, yamaha,... ra mắt các mẫu xe mới.', 1, 0, N'Jordan 1 Low')
INSERT [dbo].[project] ([project_id], [created_date], [link_image], [modified_date], [project_content], [project_home], [project_hot], [project_title]) VALUES (N'e9a74c05-9db2-46cb-b792-a0c8aed8f314', CAST(N'2021-09-19T00:00:00.000' AS DateTime), N'project3_new.jpg', NULL, N'Nếu bạn đang tìm kiếm một mẫu giày sneaker phục vụ cho quá trình luyện tập thể dục, chạy bộ, tập gym,... của mình thì Ultra Boost 21 này sẽ là gợi ý hoàn hảo dành cho bạn.', 1, 1, N'Adidas Ultra Boost 21')
INSERT [dbo].[project] ([project_id], [created_date], [link_image], [modified_date], [project_content], [project_home], [project_hot], [project_title]) VALUES (N'eb9bf535-2393-44d8-81ef-df06f003ea5b', CAST(N'2021-09-19T00:00:00.000' AS DateTime), N'project4_new.jpg', NULL, N'Trái ngược với phong cách cá tính, chất chơi và đầy cool ngầu của mình, đôi Nike Air Force 1 X Dragon Para Noise không hề phức tạp hay rối rắm, rườm rà trong thiết kế. Ngược lại nó mang đến cảm giác như một “bức tranh cuộc sống”, đầy tính nghệ thuật.', 1, 1, N'Nike Air Force 1 X Dragon Para Noise')
INSERT [dbo].[project] ([project_id], [created_date], [link_image], [modified_date], [project_content], [project_home], [project_hot], [project_title]) VALUES (N'f1852909-5f91-49ba-9b31-7b0b2c145123', CAST(N'2021-09-19T00:00:00.000' AS DateTime), N'project5_new.jpg', NULL, N'“Anh chàng cơ bắp” này đến từ thương hiệu MLB Korea. Với những bạn muốn sở hữu một đôi giày “độn”, mang phong cách hầm hố, chất chơi thì MLB Boston Red Sox Big Ball Chunky P là gợi ý tuyệt vời mà TuloShop muốn chia sẻ đến bạn.', 0, 0, N'MLB Boston Red Sox')
GO
INSERT [dbo].[recruitment] ([recruitment_id], [created_date], [link_image], [modified_date], [recruitment_content], [recruitment_home], [recruitment_hot], [recruitment_title]) VALUES (N'03f4118b-5894-4c4b-bcdf-c70c25def9cd', CAST(N'2021-09-19T00:00:00.000' AS DateTime), N'tuyendung1.png', CAST(N'2021-09-19T00:00:00.000' AS DateTime), N'Mô tả công việc', 1, 1, N'Tuyển dụng nhân viên bán hàng')
INSERT [dbo].[recruitment] ([recruitment_id], [created_date], [link_image], [modified_date], [recruitment_content], [recruitment_home], [recruitment_hot], [recruitment_title]) VALUES (N'6e77f5cf-7614-4e80-a0bd-6b63dfc84e0b', CAST(N'2021-09-19T00:00:00.000' AS DateTime), N'tuyendung2.png', CAST(N'2021-09-19T00:00:00.000' AS DateTime), N'Mô tả công việc', 1, 1, N'TUYỂN DỤNG NHÂN VIÊN HÀNH CHÍNH VĂN PHÒNG')
INSERT [dbo].[recruitment] ([recruitment_id], [created_date], [link_image], [modified_date], [recruitment_content], [recruitment_home], [recruitment_hot], [recruitment_title]) VALUES (N'958c9352-4280-4225-aa5b-2ce270f5d48f', CAST(N'2021-09-19T00:00:00.000' AS DateTime), N'tuyendung3.png', CAST(N'2021-09-19T00:00:00.000' AS DateTime), N'Mô tả công việc', 1, 0, N'TUYỂN DỤNG CÔNG NHÂN SẢN XUẤT')
INSERT [dbo].[recruitment] ([recruitment_id], [created_date], [link_image], [modified_date], [recruitment_content], [recruitment_home], [recruitment_hot], [recruitment_title]) VALUES (N'f70194f3-dbef-4a3c-ba5f-27f20d6fc1dc', CAST(N'2021-09-19T00:00:00.000' AS DateTime), N'tuyendung4.png', CAST(N'2021-09-19T00:00:00.000' AS DateTime), N'Đảm bảo hệ thống Website hoạt động thông suốt.', 0, 0, N'Tuyển dụng nhân viên IT')
GO
INSERT [dbo].[user] ([user_id], [address], [created_date], [full_name], [modified_date], [password], [phone_number], [role], [user_name]) VALUES (N'0530d44e-34d9-11ec-9f32-b00cd19df262', N'Hà nội', CAST(N'2021-10-24T21:45:24.000' AS DateTime), N'dat', CAST(N'2021-12-04T05:22:29.270' AS DateTime), N'123456', N'128731831', 1, N'dat123456')
INSERT [dbo].[user] ([user_id], [address], [created_date], [full_name], [modified_date], [password], [phone_number], [role], [user_name]) VALUES (N'0530d44e-34d9-11ec-9f32-b00cd19df263', N'11', CAST(N'2021-09-19T00:00:00.000' AS DateTime), N'dat', CAST(N'2021-09-19T00:00:00.000' AS DateTime), N'1234567', N'1111111111', 2, N'dat1234567')
GO
/****** Object:  StoredProcedure [dbo].[proc_delete_amount]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_delete_amount]
@_amount_product_id varchar(36)
AS
BEGIN
  IF EXISTS (SELECT
        *
      FROM amount a
      WHERE a.amount_product_id = @_amount_product_id)
	  BEGIN
			DELETE FROM amount 
			WHERE amount_product_id = @_amount_product_id
			SELECT
			  1;
	  END
  ELSE
    SELECT
      0;

END
GO
/****** Object:  StoredProcedure [dbo].[proc_delete_news]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_delete_news]
@_NewsId char(36)
AS
BEGIN
  IF EXISTS (SELECT
        *
      FROM news n
      WHERE n.news_id = @_NewsId)
	  BEGIN
    DELETE
      FROM news
    WHERE news.news_id = @_NewsId;
    SELECT
      1;
	  END
  ELSE
    SELECT
      0;

END
GO
/****** Object:  StoredProcedure [dbo].[proc_delete_order]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_delete_order]
 @_OrderId char(36)
 AS
BEGIN
	BEGIN TRANSACTION
	  IF EXISTS (SELECT
			o.order_id,o.user_name
		  FROM [dbo].[order] o
		  WHERE o.order_id = @_OrderId) 
		  BEGIN
		DELETE FROM [dbo].[order]
		WHERE order_id = @_OrderId;
		DELETE FROM order_detail
		WHERE order_detail.order_id = @_OrderId;
		END

	COMMIT
	return
END
GO
/****** Object:  StoredProcedure [dbo].[proc_delete_product]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_delete_product]
@_ProductId char(36)
AS
BEGIN
  IF EXISTS (SELECT
        *
      FROM product p
      WHERE p.product_id = @_ProductId)
	  BEGIN
    DELETE
      FROM product
    WHERE product.product_id = @_ProductId;
    SELECT
      1;
	  END
  ELSE
    SELECT
      0;
END
GO
/****** Object:  StoredProcedure [dbo].[proc_delete_productcategory]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_delete_productcategory]
@_ProductCategoryId char(36)
AS
BEGIN
  IF EXISTS (SELECT
        *
      FROM product_category p
      WHERE p.product_category_id = @_ProductCategoryId)
	  BEGIN
    DELETE
      FROM product_category
    WHERE product_category.product_category_id = @_ProductCategoryId;

	update product
	set product_category_id = ''
	where product_category_id = @_ProductCategoryId
    SELECT
      1;
	  END
  ELSE
    SELECT
      0;
END

GO
/****** Object:  StoredProcedure [dbo].[proc_delete_project]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_delete_project]
@_ProjectId char(36)
AS
BEGIN
  IF EXISTS (SELECT
        *
      FROM project p
      WHERE p.project_id = @_ProjectId)
	  BEGIN
    DELETE
      FROM project
    WHERE project.project_id = @_ProjectId;
	
    SELECT
      1;
	  END
  ELSE
    SELECT
      0;
END
GO
/****** Object:  StoredProcedure [dbo].[proc_delete_user]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_delete_user]
@_UserId char(36)
AS
BEGIN
  IF EXISTS (SELECT
        *
      FROM  [dbo].[user] 
      WHERE user_id = @_UserId) 
	  BEGIN
    DELETE
      FROM [dbo].[user] 
    WHERE user_id = @_UserId;
    SELECT
      1;
	  END
  ELSE
    SELECT
      0;

END
GO
/****** Object:  StoredProcedure [dbo].[proc_get_all_user]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_get_all_user]
AS
BEGIN
BEGIN TRANSACTION
   SELECT 
    u.user_id,u.address,u.created_date,u.full_name,u.modified_date,u.password,u.phone_number,u.role,u.user_name
  FROM [dbo].[user] u
	COMMIT

	return
END
GO
/****** Object:  StoredProcedure [dbo].[proc_get_amount]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_get_amount]
AS
BEGIN
BEGIN TRANSACTION
   SELECT 
   a.amount,a.amount_product_id,a.color,a.created_date,a.image,a.modified_date,a.product_id,a.size
  FROM amount a
	COMMIT

	return
END
GO
/****** Object:  StoredProcedure [dbo].[proc_get_amount_by_id]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_get_amount_by_id]
	@_product_id varchar(36),
	@_color nvarchar(255),
	@_size int
AS
BEGIN
BEGIN TRANSACTION
  SELECT
    a.amount
  FROM amount a
  WHERE a.product_id = @_product_id and a.color = @_color and a.size = @_size
	
	COMMIT

	return
END
GO
/****** Object:  StoredProcedure [dbo].[proc_get_amount_filter]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_get_amount_filter]
 @PageIndex int,
 @PageSize int,
 @Fil nvarchar(255)
 AS
BEGIN
  DECLARE @start int;
  DECLARE @end int;
  SET @start = ((@PageIndex - 1) * @PageSize);
  SET @end = ((@PageIndex - 1) * @PageSize) + @PageSize;
  SELECT * FROM amount ORDER BY size 
	OFFSET  @start ROWS 
	FETCH NEXT @PageSize ROWS ONLY 
END
GO
/****** Object:  StoredProcedure [dbo].[proc_get_colorproduct_by_id]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_get_colorproduct_by_id]
	@_product_id_ varchar(36)
AS
BEGIN
BEGIN TRANSACTION
   SELECT distinct
    a.color
  FROM amount a
  WHERE a.product_id = @_product_id_
	COMMIT

	return
END
GO
/****** Object:  StoredProcedure [dbo].[proc_get_imgproduct_by_id]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_get_imgproduct_by_id]
	@_product_id_ varchar(36)
AS
BEGIN
BEGIN TRANSACTION
   SELECT distinct
    a.image
  FROM amount a
  WHERE a.product_id = @_product_id_
	COMMIT

	return
END
GO
/****** Object:  StoredProcedure [dbo].[proc_get_news]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_get_news]
AS
BEGIN
BEGIN TRANSACTION
   SELECT 

	n.created_date,n.link_image,n.modified_date,n.news_content,n.news_event,n.news_home,n.news_hot,n.news_id,n.news_product,n.news_sale,n.news_title
  FROM news n
	COMMIT

	return
END
GO
/****** Object:  StoredProcedure [dbo].[proc_get_news_event]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_get_news_event]
AS
BEGIN

  SELECT TOP 6
    *
  FROM news n
  WHERE n.news_event = 1
  ORDER BY n.modified_date DESC

END
GO
/****** Object:  StoredProcedure [dbo].[proc_get_news_home]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_get_news_home]
AS
BEGIN
  SELECT top 3
    *
  FROM news n
  WHERE n.news_home = 1

END
GO
/****** Object:  StoredProcedure [dbo].[proc_get_news_hot]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_get_news_hot]
AS
BEGIN
  SELECT top 6 *
  FROM news n
  WHERE n.news_hot = 1
  ORDER BY n.modified_date DESC
END
GO
/****** Object:  StoredProcedure [dbo].[proc_get_news_product]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_get_news_product]
AS
BEGIN
  SELECT top 6
        n.news_id,n.created_date,n.link_image,n.modified_date,n.news_content,n.news_event,n.news_home,n.news_hot,n.news_product,n.news_sale,n.news_title
  FROM news n
  WHERE n.news_product = 1
  ORDER BY n.modified_date DESC
END
GO
/****** Object:  StoredProcedure [dbo].[proc_get_news_sale]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_get_news_sale]
AS
BEGIN
  SELECT top 6
    *
  FROM news n
  WHERE n.news_sale = 1
  ORDER BY n.modified_date DESC
END
GO
/****** Object:  StoredProcedure [dbo].[proc_get_newss_filter]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_get_newss_filter]
 @PageIndex int,
 @PageSize int, 
 @Fil nvarchar(255)
 AS
BEGIN
  DECLARE @start int;
  DECLARE @end int;
  SET @start = ((@PageIndex - 1) * @PageSize);
  SET @end = ((@PageIndex - 1) * @PageSize) + @PageSize;
  SELECT
        n.news_id,n.created_date,n.link_image,n.modified_date,n.news_content,n.news_event,n.news_home,n.news_hot,n.news_product,n.news_sale,n.news_title
  FROM news n
  WHERE (@Fil IS NULL)
  OR (n.news_title LIKE CONCAT('%', @Fil, '%'))
  ORDER BY n.modified_date DESC
  	OFFSET  @start ROWS 
	FETCH NEXT @PageSize ROWS ONLY 
END
GO
/****** Object:  StoredProcedure [dbo].[proc_get_orderDetails_filter]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_get_orderDetails_filter]
@PageIndex int, @PageSize int, @Fil nvarchar(255)
AS
BEGIN
  DECLARE @start int;
 
  SET @start = ((@PageIndex - 1) * @PageSize);
  SELECT
    *
  FROM order_detail o
  WHERE (@Fil IS NULL)
  OR (o.product_name LIKE CONCAT('%', @Fil, '%')
  OR o.product_name IS NULL)
  ORDER BY o.price ASC
  OFFSET  @start ROWS 
	FETCH NEXT @PageSize ROWS ONLY 
END
GO
/****** Object:  StoredProcedure [dbo].[proc_get_orders_by_user]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_get_orders_by_user]
	@UserId varchar(36)
AS
BEGIN
  SELECT
    o.address,o.created_date,o.full_name,o.modified_date,o.note,o.order_id,o.payment_methods,o.phone_number,o.status_order,o.user_id,o.user_name
  FROM [dbo].[order] o
  WHERE o.user_id = @UserId;
END
GO
/****** Object:  StoredProcedure [dbo].[proc_get_orders_filter]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_get_orders_filter]
	@PageIndex int,
	@PageSize int,
	@Fil nvarchar(255)
AS
BEGIN
  DECLARE @start int;
  DECLARE @end int;
  SET @start = ((@PageIndex - 1) * @PageSize);
  SELECT
      o.address,o.created_date,o.full_name,o.modified_date,o.note,o.order_id,o.payment_methods,o.phone_number,o.status_order,o.user_id,o.user_name
  FROM [dbo].[order] o
  WHERE (@Fil IS NULL)
  OR (o.full_name LIKE CONCAT('%', @Fil, '%'))
  ORDER BY o.status_order DESC
  OFFSET  @start ROWS 
	FETCH NEXT @PageSize ROWS ONLY 
END
GO
/****** Object:  StoredProcedure [dbo].[proc_get_orders_history_id]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_get_orders_history_id]
@UserId char(36),
@PageIndex int,
@PageSize int
AS
BEGIN
  DECLARE @start int;
  DECLARE @odID char(36);
  SET @START = ((@PageIndex - 1) * @PageSize);
  SET @odID = (SELECT
      o.order_id
    FROM [dbo].[order] o
    WHERE o.user_id = @UserId);

  SELECT
    *
  FROM order_detail od
    INNER JOIN [dbo].[order] o
      ON od.order_id = @odID
	  ORDER BY od.amount ASC
     OFFSET  @start ROWS 
   FETCH NEXT @PageSize ROWS ONLY 

END
GO
/****** Object:  StoredProcedure [dbo].[proc_get_product_category]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_get_product_category]
AS
BEGIN
BEGIN TRANSACTION
   SELECT 
	p.created_date,p.modified_date,p.product_category_description,p.product_category_home,p.product_category_id,p.product_category_image,p.product_category_name
  FROM product_category p
	COMMIT

	return
END
GO
/****** Object:  StoredProcedure [dbo].[proc_get_productCategory_home]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_get_productCategory_home]
AS
BEGIN
  SELECT top 6
    pc.created_date,pc.modified_date,pc.product_category_description,pc.product_category_home,pc.product_category_id,pc.product_category_image,pc.product_category_name
  FROM product_category pc
  WHERE pc.product_category_home = 1

END
GO
/****** Object:  StoredProcedure [dbo].[proc_get_productCategorys_filter]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[proc_get_productCategorys_filter]
	@PageIndex int,
	@PageSize int,
	@Fil nvarchar(255)
AS
BEGIN
  DECLARE @start int;
  SET @start = ((@PageIndex - 1) * @PageSize);
  
  SELECT
    *
  FROM product_category p
  WHERE (@Fil IS NULL)
  OR (p.product_category_name LIKE CONCAT('%', @Fil, '%'))
  ORDER BY p.modified_date DESC
    OFFSET  @start ROWS 
	FETCH NEXT @PageSize ROWS ONLY 
END
GO
/****** Object:  StoredProcedure [dbo].[proc_get_products_filter]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_get_products_filter]
	@PageIndex int,
	@PageSize int,
	@Fil nvarchar(255),
	@SortStatus int,
	@FieldSort varchar(30),
	@CategoryId char(36),
	@Price float
AS
BEGIN
  DECLARE @start int;
  DECLARE @end int;
  SET @start = ((@PageIndex - 1) * @PageSize);
  IF (@CategoryId = '')
	BEGIN
    IF (@SortStatus = 1)
		BEGIN
		  SELECT
			p.created_date,p.modified_date,p.product_category_id,p.product_color,p.product_description,p.product_description_short,p.product_dimensions,p.product_evaluate,p.product_id,p.product_image,p.product_manufacturer,p.product_material,p.product_name,p.product_original_price,p.product_sale_price
		  FROM product p
		  WHERE (@Fil IS NULL)
		  OR (p.product_name LIKE CONCAT('%', @Fil, '%')) 
		  ORDER BY p.product_sale_price DESC
		  OFFSET  @start ROWS 
		  FETCH NEXT @PageSize ROWS ONLY 
	  END
    ELSE IF (@SortStatus = 2) 
		BEGIN
		  SELECT
			p.created_date,p.modified_date,p.product_category_id,p.product_color,p.product_description,p.product_description_short,p.product_dimensions,p.product_evaluate,p.product_id,p.product_image,p.product_manufacturer
		  FROM product p
		  WHERE (@Fil IS NULL)
		  OR (p.product_name LIKE CONCAT('%', @Fil, '%')) 
		  ORDER BY p.product_sale_price ASC
		  OFFSET  @start ROWS 
		  FETCH NEXT @PageSize ROWS ONLY 
		END
	ELSE
		BEGIN
		  SELECT
			p.created_date,p.modified_date,p.product_category_id,p.product_color,p.product_description,p.product_description_short,p.product_dimensions,p.product_evaluate,p.product_id,p.product_image,p.product_manufacturer
		  FROM product p
		  WHERE (@Fil IS NULL)
		  OR (p.product_name LIKE CONCAT('%', @Fil, '%')) 
		  ORDER BY p.product_sale_price ASC
		  OFFSET  @start ROWS 
			FETCH NEXT @PageSize ROWS ONLY 
		END
	END
	else 
	BEGIN
    IF (@SortStatus = 1)
		BEGIN
		  SELECT
			p.created_date,p.modified_date,p.product_category_id,p.product_color,p.product_description,p.product_description_short,p.product_dimensions,p.product_evaluate,p.product_id,p.product_image,p.product_manufacturer,p.product_material,p.product_name,p.product_original_price,p.product_sale_price
		  FROM product p
		  WHERE (@Fil IS NULL)
		  OR (p.product_name LIKE CONCAT('%', @Fil, '%')) and p.product_category_id = @CategoryId
		  ORDER BY p.product_sale_price DESC
		  OFFSET  @start ROWS 
		  FETCH NEXT @PageSize ROWS ONLY 
	  END
    ELSE IF (@SortStatus = 2) 
		BEGIN
		  SELECT
			p.created_date,p.modified_date,p.product_category_id,p.product_color,p.product_description,p.product_description_short,p.product_dimensions,p.product_evaluate,p.product_id,p.product_image,p.product_manufacturer
		  FROM product p
		  WHERE (@Fil IS NULL)
		  OR (p.product_name LIKE CONCAT('%', @Fil, '%')) and p.product_category_id = @CategoryId
		  ORDER BY p.product_sale_price ASC
		  OFFSET  @start ROWS 
		  FETCH NEXT @PageSize ROWS ONLY 
		END
	ELSE
		BEGIN
		  SELECT
			p.created_date,p.modified_date,p.product_category_id,p.product_color,p.product_description,p.product_description_short,p.product_dimensions,p.product_evaluate,p.product_id,p.product_image,p.product_manufacturer
		  FROM product p
		  WHERE (@Fil IS NULL)
		  OR (p.product_name LIKE CONCAT('%', @Fil, '%')) and p.product_category_id = @CategoryId
		  ORDER BY p.product_sale_price ASC
		  OFFSET  @start ROWS 
			FETCH NEXT @PageSize ROWS ONLY 
		END
	END
END
  
GO
/****** Object:  StoredProcedure [dbo].[proc_get_products_top_selling]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_get_products_top_selling]
AS
BEGIN
  SELECT top 3
    p.*
  FROM product p
    JOIN order_detail o
      ON p.product_id = o.product_id 
END
GO
/****** Object:  StoredProcedure [dbo].[proc_get_project]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_get_project]
AS
BEGIN
BEGIN TRANSACTION
   SELECT 

   p.created_date,p.link_image,p.modified_date,p.project_content,p.project_home,p.project_hot,p.project_id,p.project_title
  FROM project p
	COMMIT

	return
END
GO
/****** Object:  StoredProcedure [dbo].[proc_get_project_home]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_get_project_home]
AS
BEGIN
  SELECT top 4
    p.created_date,p.link_image,p.modified_date,p.project_content,p.project_home,p.project_hot,p.project_id,p.project_title
  FROM project p
  WHERE p.project_home = 1

END
GO
/****** Object:  StoredProcedure [dbo].[proc_get_project_hot]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_get_project_hot]
AS
BEGIN
  SELECT top 4
    p.created_date,p.link_image,p.modified_date,p.project_content,p.project_home,p.project_hot,p.project_id,p.project_title
  FROM project p
  WHERE p.project_hot = 1

END
GO
/****** Object:  StoredProcedure [dbo].[proc_get_projects_filter]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_get_projects_filter]
	@PageIndex int,
	@PageSize int,
	@Fil nvarchar(255)
AS
BEGIN
  DECLARE @start int;
  SET @start = ((@PageIndex - 1) * @PageSize);


  SELECT
        p.created_date,p.link_image,p.modified_date,p.project_content,p.project_home,p.project_hot,p.project_id,p.project_title
  FROM project p
  WHERE (@Fil IS NULL)
  OR (p.project_title LIKE CONCAT('%', @Fil, '%'))
  ORDER BY p.modified_date DESC
   OFFSET  @start ROWS 
   FETCH NEXT @PageSize ROWS ONLY 
END
GO
/****** Object:  StoredProcedure [dbo].[proc_get_recruitment_home]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  PROCEDURE [dbo].[proc_get_recruitment_home]
AS
BEGIN
  SELECT top 3
    r.created_date,r.link_image,r.modified_date,r.recruitment_content,r.recruitment_home,r.recruitment_hot,r.recruitment_id,r.recruitment_title
  FROM recruitment r
  WHERE r.recruitment_home = 1
  ORDER BY r.modified_date DESC
END
GO
/****** Object:  StoredProcedure [dbo].[proc_get_recruitment_hot]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[proc_get_recruitment_hot]
AS
BEGIN
  SELECT top 3
    r.created_date,r.link_image,r.modified_date,r.recruitment_content,r.recruitment_home,r.recruitment_hot,r.recruitment_id,r.recruitment_title
  FROM recruitment r
  WHERE r.recruitment_hot = 1
  ORDER BY r.modified_date DESC
END
GO
/****** Object:  StoredProcedure [dbo].[proc_get_recruitments_filter]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_get_recruitments_filter]
	@PageIndex int,
	@PageSize int,
	@Fil nvarchar(255)
AS
BEGIN
  DECLARE @start int;
  SET @START = ((@PageIndex - 1) * @PageSize);

  SELECT
     r.created_date,r.link_image,r.modified_date,r.recruitment_content,r.recruitment_home,r.recruitment_hot,r.recruitment_id,r.recruitment_title
  FROM recruitment r
  WHERE (@Fil IS NULL)
  OR (r.recruitment_title LIKE CONCAT('%', @Fil, '%'))
  ORDER BY r.modified_date DESC
    OFFSET  @start ROWS 
   FETCH NEXT @PageSize ROWS ONLY 
END
GO
/****** Object:  StoredProcedure [dbo].[proc_get_sizeproduct_by_id]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_get_sizeproduct_by_id]
	@_product_id_ varchar(36)
AS
BEGIN
BEGIN TRANSACTION
   SELECT distinct
    a.size
  FROM amount a
  WHERE a.product_id = @_product_id_
	COMMIT

	return
END
GO
/****** Object:  StoredProcedure [dbo].[proc_get_user_by_username]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_get_user_by_username] 
@userName varchar(255)
AS
BEGIN
  SELECT top 1
    u.address,u.created_date,u.full_name,u.modified_date,u.password,u.phone_number,u.role,u.user_id,u.user_name
  FROM [dbo].[user] u
  WHERE u.user_name = @userName 
END
GO
/****** Object:  StoredProcedure [dbo].[proc_get_users_filter]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_get_users_filter]
@PageIndex int, 
@PageSize int, 
@Fil nvarchar(255)
AS
BEGIN
  DECLARE @start int;
  SET @start = ((@PageIndex - 1) * @PageSize);

  SELECT
       u.address,u.created_date,u.full_name,u.modified_date,u.password,u.phone_number,u.role,u.user_id,u.user_name
  FROM [dbo].[user] u
  WHERE (@Fil IS NULL)
  OR (u.user_name LIKE CONCAT('%', @Fil, '%')
  OR u.full_name LIKE CONCAT('%', @Fil, '%')
  OR u.address LIKE CONCAT('%', @Fil, '%'))
  ORDER BY u.modified_date DESC
      OFFSET  @start ROWS 
   FETCH NEXT @PageSize ROWS ONLY 
END
GO
/****** Object:  StoredProcedure [dbo].[proc_insert_amount]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_insert_amount]
@_product_id varchar(36), 
@_size int, 
@_image varchar(255), 
@_color nvarchar(255), 
@_amount int
AS
BEGIN
  insert into amount(amount_product_id,product_id,size,color,amount,image,created_date,modified_date)
  values (NEWID(),@_product_id,@_size,@_color,@_amount,@_image,GETDATE(),GETDATE())
  SELECT
    1;
END
GO
/****** Object:  StoredProcedure [dbo].[proc_insert_news]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_insert_news]
@_NewsTitle nvarchar(2550), 
@_NewsContent nvarchar(3000), 
@_LinkImage varchar(255), 
@_NewsHot int, 
@_NewsProduct int, 
@_NewsSale int, 
@_NewsEvent int, 
@_NewsHome int
AS
BEGIN
  INSERT INTO news (news_id, news_title, news_content, link_image, news_hot, news_product, news_sale, news_event, news_home, created_date, modified_date)
    VALUES (newid(), @_NewsTitle, @_NewsContent, @_LinkImage, @_NewsHot, @_NewsProduct, @_NewsSale, @_NewsEvent, @_NewsHome, GETDATE(), GETDATE());
  SELECT
    1;
END
GO
/****** Object:  StoredProcedure [dbo].[proc_insert_order_payment]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_insert_order_payment]
@UserId char(36), 
@UserName varchar(255), 
@FullName varchar(255), 
@Address varchar(255), 
@PhoneNumber varchar(255), 
@PaymentMethods int, 
@Note varchar(255),
@StatusOrder int
AS
BEGIN
 
  INSERT INTO [dbo].[order] (user_id, order_id, created_date, modified_date, full_name, address, phone_number, payment_methods, note, user_name, status_order)
    VALUEs ( @UserId , NEWID(), GETDATE(), GETDATE(), @FullName, @Address, @PhoneNumber, @PaymentMethods, @Note, @UserName, @StatusOrder)

END
GO
/****** Object:  StoredProcedure [dbo].[proc_insert_product]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_insert_product]
@_ProductName nvarchar(255), 
@_ProductDimensions nvarchar(1000), 
@_ProductMaterial nvarchar(255), 
@_ProductManufacturer nvarchar(255), 
@_ProductColor int, 
@_ProductOriginalPrice float, 
@_ProductSalePrice float, 
@_ProductDescriptionShort nvarchar(1000), 
@_ProductDescription nvarchar(4000), 
@_ProductEvaluate float, 
@_ProductCategoryId char(36), 
@_ProductImage varchar(255)
AS
BEGIN
	BEGIN TRANSACTION
  INSERT INTO product (product_id, product_name, product_dimensions, product_material, product_manufacturer, product_color, product_original_price, product_sale_price, product_description_short, product_description, product_evaluate, product_category_id, product_image, created_date, modified_date)
    VALUES (NEWID(), @_ProductName, @_ProductDimensions, @_ProductMaterial, @_ProductManufacturer, @_ProductColor,
	@_ProductOriginalPrice, @_ProductSalePrice, @_ProductDescriptionShort, @_ProductDescription, @_ProductEvaluate, @_ProductCategoryId, @_ProductImage, GETDATE(), GETDATE());
  SELECT
    1;
		COMMIT

	return
END
GO
/****** Object:  StoredProcedure [dbo].[proc_insert_productcategory]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_insert_productcategory]
@_ProductCategoryName varchar(255), 
@_ProductCategoryDescription varchar(255), 
@_ProductCategoryImage varchar(255), 
@_ProductCategoryHome int
AS
BEGIN
  INSERT INTO product_category(product_category_id, product_category_name, product_category_description, product_category_image, product_category_home, created_date, modified_date)
    VALUES (NEWID(), @_ProductCategoryName, @_ProductCategoryDescription, @_ProductCategoryImage, @_ProductCategoryHome, GETDATE(), GETDATE());
  SELECT
    1;
END
GO
/****** Object:  StoredProcedure [dbo].[proc_insert_project]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_insert_project]
@_ProjectTitle nvarchar(3000),
@_ProjectContent nvarchar(4000),
@_LinkImage varchar(255), 
@_ProjectHome int,
@_ProjectHot int
AS
BEGIN
  INSERT INTO project (project_id, project_title, project_content, link_image, project_home,project_hot, created_date, modified_date)
    VALUES (NEWID(), @_ProjectTitle, @_ProjectContent, @_LinkImage, @_ProjectHome,@_ProjectHot, GETDATE(), GETDATE());
  SELECT
    1;
END
GO
/****** Object:  StoredProcedure [dbo].[proc_insert_recruitment]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_insert_recruitment]
@_RecruitmentTitle nvarchar(4000),
@_RecruitmentContent nvarchar(4000), 
@_LinkImage varchar(255)
AS
BEGIN
  INSERT INTO recruitment (recruitment_id, recruitment_title, recruitment_content, link_image, created_date, modified_date)
    VALUES (newid(), @_RecruitmentTitle, @_RecruitmentContent, @_LinkImage, GETDATE(), GETDATE());
  SELECT
    1;
END
GO
/****** Object:  StoredProcedure [dbo].[proc_insert_user]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_insert_user]
@UserName varchar(255),
@Password varchar(255),
@FullName nvarchar(255), 
@Address nvarchar(255), 
@PhoneNumber nvarchar(100),
@Role int
AS
BEGIN
  INSERT INTO [dbo].[user] (user_id, user_name, password, full_name, address, phone_number,role, created_date, modified_date)
    VALUES (newid(), @UserName, @Password, @FullName, @Address, @PhoneNumber,@Role, GETDATE(), GETDATE());
  SELECT
    1;
END
GO
/****** Object:  StoredProcedure [dbo].[proc_update_amount]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_update_amount]
@_amount_product_id varchar(36), 
@_product_id varchar(36), 
@_size int, 
@_image varchar(255), 
@_color nvarchar(255), 
@_amount int
AS
BEGIN
  update amount
  set product_id = @_product_id,
  size = @_size,
  image = @_image,
  color = @_color,
  amount = @_amount
  where amount_product_id = @_amount_product_id
  SELECT
    1;
END
GO
/****** Object:  StoredProcedure [dbo].[proc_update_news]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_update_news]
@_NewsId char(36),
@_NewsTitle varchar(255), 
@_NewsContent varchar(5000), 
@_LinkImage varchar(255), 
@_NewsHot int, 
@_NewsProduct int, 
@_NewsSale int, 
@_NewsEvent int, 
@_NewsHome int
AS
BEGIN
  UPDATE news 
  SET 
      news_title = @_NewsTitle,
      news_content = @_NewsContent,
      link_image = @_LinkImage,
      news_hot = @_NewsHot,
      news_product = @_NewsProduct,
      news_sale = @_NewsSale,
      news_event = @_NewsEvent,
      news_home = @_NewsHome,
      modified_date = GETDATE()
  WHERE news_id = @_NewsId;
  SELECT
    1;
END
GO
/****** Object:  StoredProcedure [dbo].[proc_update_order]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_update_order]
@_UserName varchar(255),
@_OrderId char(36),
@_StatusOrder int
AS
BEGIN
  UPDATE [dbo].[order] 
  SET status_order = @_StatusOrder,
      user_name = @_UserName,
     modified_date = GETDATE()
  WHERE order_id = @_OrderId   ;
  SELECT
    1;
END
GO
/****** Object:  StoredProcedure [dbo].[proc_update_product]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_update_product]
@_ProductId char(36), 
@_ProductName nvarchar(255), 
@_ProductDimensions nvarchar(1000), 
@_ProductMaterial nvarchar(255), 
@_ProductManufacturer nvarchar(255), 
@_ProductColor int, 
@_ProductOriginalPrice float, 
@_ProductSalePrice float, 
@_ProductDescriptionShort nvarchar(1000), 
@_ProductDescription nvarchar(4000), 
@_ProductEvaluate float, 
@_ProductCategoryId char(36), 
@_ProductImage varchar(255)
AS
BEGIN
  UPDATE product
  SET
      product_name = @_ProductName,
      product_dimensions = @_ProductDimensions,
      product_material = @_ProductMaterial,
      product_manufacturer = @_ProductManufacturer,
      product_color = @_ProductColor,
      product_original_price = @_ProductOriginalPrice,
      product_sale_price = @_ProductSalePrice,
      product_description_short = @_ProductDescriptionShort,
      product_description = @_ProductDescription,
      product_evaluate = @_ProductEvaluate,
      product_category_id = @_ProductCategoryId,
      product_image = @_ProductImage,
      modified_date = GETDATE()
  WHERE product_id = @_ProductId;
  SELECT
    1;
END
GO
/****** Object:  StoredProcedure [dbo].[proc_update_productcategory]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_update_productcategory]
@_ProductCategoryId varchar(36),
@_ProductCategoryName varchar(255), 
@_ProductCategoryDescription varchar(255), 
@_ProductCategoryImage varchar(255), 
@_ProductCategoryHome int
AS
BEGIN
  UPDATE product_category
  SET product_category_name = @_ProductCategoryName,
      product_category_description = @_ProductCategoryDescription,
      product_category_image = @_ProductCategoryImage,
      product_category_home = @_ProductCategoryHome,
      modified_date = GETDATE()
  WHERE product_category_id = @_ProductCategoryId;
  SELECT
    1;
END
GO
/****** Object:  StoredProcedure [dbo].[proc_update_project]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_update_project]
@_ProjectId varchar(36),
@_ProjectTitle nvarchar(3000),
@_ProjectContent nvarchar(4000),
@_LinkImage varchar(255), 
@_ProjectHome int,
@_ProjectHot int
AS
BEGIN
  UPDATE project
  set project_title = @_ProjectTitle,
	project_content = @_ProjectContent,
	link_image = @_LinkImage,
	project_home = @_ProjectHome,
	project_hot = @_ProjectHot
	Where project_id = @_ProjectId
  SELECT
    1;
END
GO
/****** Object:  StoredProcedure [dbo].[proc_update_recruitment]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_update_recruitment]
@_RecruitmentId char(36),
@_RecruitmentTitle nvarchar(4000),
@_RecruitmentContent nvarchar(4000),
@_LinkImage varchar(255)
AS
BEGIN
  UPDATE recruitment 
  SET recruitment_title = @_RecruitmentTitle,
      recruitment_content = @_RecruitmentContent,
      link_image = @_LinkImage,
      modified_date = GETDATE()
  WHERE recruitment_id = @_RecruitmentId;
  SELECT
    1;
END
GO
/****** Object:  StoredProcedure [dbo].[proc_update_user]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_update_user]
@_UserId char(36),
@_UserName varchar(255),
@_Password varchar(255),
@_FullName nvarchar(255),
@_Address nvarchar(255), 
@_PhoneNumber nvarchar(100)
AS
BEGIN
  UPDATE [dbo].[user] 
  SET user_name = @_UserName,
      password = @_Password,
      full_name = @_FullName,
      address = @_Address,
      phone_number = @_PhoneNumber,
      modified_date = GETDATE()
  WHERE user_id = @_UserId;
  SELECT
    1;
END
GO
/****** Object:  StoredProcedure [dbo].[roc_delete_recruitment]    Script Date: 03/15/2022 10:09:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[roc_delete_recruitment]
@_RecruitmentId varchar(255)
AS
BEGIN
  IF EXISTS (SELECT
        *
      FROM recruitment r
      WHERE r.recruitment_id = @_RecruitmentId)
	  BEGIN
    DELETE
      FROM recruitment
    WHERE recruitment.recruitment_id = @_RecruitmentId;
    SELECT
      1;
	  END
  ELSE
    SELECT
      0;

END
GO
