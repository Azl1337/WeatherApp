USE [shop]
GO
/****** Object:  Table [dbo].[Managers]    Script Date: 20.05.2023 17:30:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Managers](
	[Managers_Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[FIO] [nvarchar](80) NULL,
	[Salary] [float] NULL,
	[Age] [nchar](2) NULL,
	[Phone] [nchar](11) NULL,
 CONSTRAINT [PK_Managers] PRIMARY KEY CLUSTERED 
(
	[Managers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 20.05.2023 17:30:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Products_Id] [smallint] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](50) NULL,
	[Cost] [smallint] NULL,
	[Volume] [smallint] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Products_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sells]    Script Date: 20.05.2023 17:30:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sells](
	[Sells_Id] [int] IDENTITY(1,1) NOT NULL,
	[Manager_Id] [tinyint] NULL,
	[Product_Id] [smallint] NULL,
	[Count] [int] NULL,
	[Sum] [money] NULL,
	[Date] [date] NULL,
 CONSTRAINT [PK_Sells] PRIMARY KEY CLUSTERED 
(
	[Sells_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Managers] ON 

INSERT [dbo].[Managers] ([Managers_Id], [FIO], [Salary], [Age], [Phone]) VALUES (1, N'Иванов Иван Иванович', 35000, N'32', N'89054175362')
INSERT [dbo].[Managers] ([Managers_Id], [FIO], [Salary], [Age], [Phone]) VALUES (2, N'Сергеев Сергей Сергеевич', 32000, N'25', NULL)
INSERT [dbo].[Managers] ([Managers_Id], [FIO], [Salary], [Age], [Phone]) VALUES (3, N'Антонов Антон Антонович', 40000, N'35', N'89023574869')
INSERT [dbo].[Managers] ([Managers_Id], [FIO], [Salary], [Age], [Phone]) VALUES (4, N'Ильина Инна Иванова', 33500, N'22', NULL)
INSERT [dbo].[Managers] ([Managers_Id], [FIO], [Salary], [Age], [Phone]) VALUES (5, N'Попова Антонина Сергеевна', 45000, N'43', N'89575637283')
SET IDENTITY_INSERT [dbo].[Managers] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Products_Id], [ProductName], [Cost], [Volume]) VALUES (1, N'Тетрадь', 25, 5000)
INSERT [dbo].[Products] ([Products_Id], [ProductName], [Cost], [Volume]) VALUES (2, N'Ручка', 15, 10000)
INSERT [dbo].[Products] ([Products_Id], [ProductName], [Cost], [Volume]) VALUES (3, N'Линейка', 10, 2000)
INSERT [dbo].[Products] ([Products_Id], [ProductName], [Cost], [Volume]) VALUES (4, N'Портфель', 1200, 40)
INSERT [dbo].[Products] ([Products_Id], [ProductName], [Cost], [Volume]) VALUES (5, N'Набор листов А4', 600, 100)
INSERT [dbo].[Products] ([Products_Id], [ProductName], [Cost], [Volume]) VALUES (6, N'Лист А3', 20, 1000)
INSERT [dbo].[Products] ([Products_Id], [ProductName], [Cost], [Volume]) VALUES (7, N'Альбом А4', 50, 100)
INSERT [dbo].[Products] ([Products_Id], [ProductName], [Cost], [Volume]) VALUES (8, N'Раскраска "Пони"', 120, 300)
INSERT [dbo].[Products] ([Products_Id], [ProductName], [Cost], [Volume]) VALUES (9, N'Раскраска "Машинки"', 125, 300)
INSERT [dbo].[Products] ([Products_Id], [ProductName], [Cost], [Volume]) VALUES (10, N'Краски "Гуашь"', 70, 200)
INSERT [dbo].[Products] ([Products_Id], [ProductName], [Cost], [Volume]) VALUES (11, N'Фанера', 300, 100)
INSERT [dbo].[Products] ([Products_Id], [ProductName], [Cost], [Volume]) VALUES (12, N'Фанера Шлифованная', 380, 200)
INSERT [dbo].[Products] ([Products_Id], [ProductName], [Cost], [Volume]) VALUES (13, N'Фанера Нешлифованная', 305, 100)
INSERT [dbo].[Products] ([Products_Id], [ProductName], [Cost], [Volume]) VALUES (14, N'Фанера Крутая', 1800, 20)
INSERT [dbo].[Products] ([Products_Id], [ProductName], [Cost], [Volume]) VALUES (15, N'Фанера Супер', 2000, 50)
INSERT [dbo].[Products] ([Products_Id], [ProductName], [Cost], [Volume]) VALUES (16, N'ОСБ', 500, 40)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Sells] ON 

INSERT [dbo].[Sells] ([Sells_Id], [Manager_Id], [Product_Id], [Count], [Sum], [Date]) VALUES (1, 1, 2, 200, 3000.0000, CAST(N'2021-06-20' AS Date))
INSERT [dbo].[Sells] ([Sells_Id], [Manager_Id], [Product_Id], [Count], [Sum], [Date]) VALUES (2, 3, 12, 50, 19000.0000, CAST(N'2021-06-20' AS Date))
INSERT [dbo].[Sells] ([Sells_Id], [Manager_Id], [Product_Id], [Count], [Sum], [Date]) VALUES (3, 4, 13, 100, 30500.0000, CAST(N'2021-06-21' AS Date))
INSERT [dbo].[Sells] ([Sells_Id], [Manager_Id], [Product_Id], [Count], [Sum], [Date]) VALUES (4, 5, 6, 500, 10000.0000, CAST(N'2021-06-22' AS Date))
INSERT [dbo].[Sells] ([Sells_Id], [Manager_Id], [Product_Id], [Count], [Sum], [Date]) VALUES (5, 2, 11, 50, 15000.0000, CAST(N'2021-06-23' AS Date))
INSERT [dbo].[Sells] ([Sells_Id], [Manager_Id], [Product_Id], [Count], [Sum], [Date]) VALUES (6, 3, 11, 30, 9000.0000, CAST(N'2021-08-22' AS Date))
INSERT [dbo].[Sells] ([Sells_Id], [Manager_Id], [Product_Id], [Count], [Sum], [Date]) VALUES (7, 1, 16, 20, 10000.0000, CAST(N'2021-08-23' AS Date))
INSERT [dbo].[Sells] ([Sells_Id], [Manager_Id], [Product_Id], [Count], [Sum], [Date]) VALUES (8, 2, 16, 10, 5000.0000, CAST(N'2021-08-24' AS Date))
INSERT [dbo].[Sells] ([Sells_Id], [Manager_Id], [Product_Id], [Count], [Sum], [Date]) VALUES (9, 1, 16, 10, 5000.0000, CAST(N'2021-08-24' AS Date))
INSERT [dbo].[Sells] ([Sells_Id], [Manager_Id], [Product_Id], [Count], [Sum], [Date]) VALUES (10, 5, 7, 20, 2000.0000, CAST(N'2021-08-24' AS Date))
SET IDENTITY_INSERT [dbo].[Sells] OFF
GO
ALTER TABLE [dbo].[Sells]  WITH CHECK ADD  CONSTRAINT [FK_Sells_Managers] FOREIGN KEY([Manager_Id])
REFERENCES [dbo].[Managers] ([Managers_Id])
GO
ALTER TABLE [dbo].[Sells] CHECK CONSTRAINT [FK_Sells_Managers]
GO
ALTER TABLE [dbo].[Sells]  WITH CHECK ADD  CONSTRAINT [FK_Sells_Products] FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Products] ([Products_Id])
GO
ALTER TABLE [dbo].[Sells] CHECK CONSTRAINT [FK_Sells_Products]
GO
