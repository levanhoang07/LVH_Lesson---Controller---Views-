USE [LvhK22CNT3Lesson11Db]
GO
/****** Object:  Table [dbo].[LvhCategory]    Script Date: 7/4/24 09:50:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LvhCategory](
	[LvhID] [int] NOT NULL,
	[LvhCateName] [nvarchar](50) NULL,
	[LvhStatus] [bit] NULL,
 CONSTRAINT [PK_LvhCategory] PRIMARY KEY CLUSTERED 
(
	[LvhID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LvhProduct]    Script Date: 7/4/24 09:50:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LvhProduct](
	[LvhId2210900024] [nvarchar](50) NOT NULL,
	[LvhProName] [nvarchar](50) NULL,
	[LvhQty] [int] NULL,
	[LvhPrice] [float] NULL,
	[LvhCateId] [int] NULL,
	[LvhActive] [bit] NULL,
 CONSTRAINT [PK_LvhProduct] PRIMARY KEY CLUSTERED 
(
	[LvhId2210900024] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[LvhCategory] ([LvhID], [LvhCateName], [LvhStatus]) VALUES (1, N'2210900024', 1)
INSERT [dbo].[LvhCategory] ([LvhID], [LvhCateName], [LvhStatus]) VALUES (2, N'Iphone', 0)
GO
INSERT [dbo].[LvhProduct] ([LvhId2210900024], [LvhProName], [LvhQty], [LvhPrice], [LvhCateId], [LvhActive]) VALUES (N'2210900024', N'Lê VĂn Hoàng', 10, 10000000, 1, 1)
GO
