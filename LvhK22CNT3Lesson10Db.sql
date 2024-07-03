USE [LvhK22CNT3Lesson10]
GO
/****** Object:  Table [dbo].[LvhAccount]    Script Date: 7/3/24 09:09:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LvhAccount](
	[LvhId] [int] NOT NULL,
	[LvhUserName] [nvarchar](50) NULL,
	[LvhPassword] [nvarchar](50) NULL,
	[LvhFullName] [nvarchar](50) NULL,
	[LvhEmail] [nvarchar](50) NULL,
	[LvhPhone] [nvarchar](50) NULL,
	[LvhActive] [bit] NULL,
 CONSTRAINT [PK_LvhAccount] PRIMARY KEY CLUSTERED 
(
	[LvhId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[LvhAccount] ([LvhId], [LvhUserName], [LvhPassword], [LvhFullName], [LvhEmail], [LvhPhone], [LvhActive]) VALUES (24, N'hoang78900', N'hoang123', N'Lê Văn Hoàng', N'levanhoang742004@gmail.com', N'098221212680', 1)
GO
