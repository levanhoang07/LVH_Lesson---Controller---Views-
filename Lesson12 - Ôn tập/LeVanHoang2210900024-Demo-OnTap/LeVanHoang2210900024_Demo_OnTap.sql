USE [LeVanHoang2210900024_Demo_OnTap]
GO
/****** Object:  Table [dbo].[LVH_SACH]    Script Date: 7/11/24 10:06:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LVH_SACH](
	[Lvh_MaSach] [char](5) NOT NULL,
	[Lvh_TenSach] [nvarchar](50) NULL,
	[Lvh_SoTrang] [int] NULL,
	[Lvh_NamXB] [int] NULL,
	[Lvh_MaTG] [char](5) NULL,
	[Lvh_TrangThai] [bit] NULL,
 CONSTRAINT [PK_LVH_SACH] PRIMARY KEY CLUSTERED 
(
	[Lvh_MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LVH_TACGIA]    Script Date: 7/11/24 10:06:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LVH_TACGIA](
	[Lvh_MaTG] [char](5) NOT NULL,
	[Lvh_TenTacGia] [nvarchar](50) NULL,
 CONSTRAINT [PK_Lvh_TacGia] PRIMARY KEY CLUSTERED 
(
	[Lvh_MaTG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[LVH_SACH] ([Lvh_MaSach], [Lvh_TenSach], [Lvh_SoTrang], [Lvh_NamXB], [Lvh_MaTG], [Lvh_TrangThai]) VALUES (N'S0001', N'Lê Văn Hoàng', 24444, 2020, N'TG001', 1)
INSERT [dbo].[LVH_SACH] ([Lvh_MaSach], [Lvh_TenSach], [Lvh_SoTrang], [Lvh_NamXB], [Lvh_MaTG], [Lvh_TrangThai]) VALUES (N'S0002', N'Thu Hương', 3434343, 2015, N'TG001', 0)
GO
INSERT [dbo].[LVH_TACGIA] ([Lvh_MaTG], [Lvh_TenTacGia]) VALUES (N'TG001', N'Lê Văn Hoàng')
INSERT [dbo].[LVH_TACGIA] ([Lvh_MaTG], [Lvh_TenTacGia]) VALUES (N'TG002', N'Đinh Thị Thu Hương')
GO
ALTER TABLE [dbo].[LVH_SACH]  WITH CHECK ADD  CONSTRAINT [FK_LVH_SACH_LVH_TACGIA] FOREIGN KEY([Lvh_MaTG])
REFERENCES [dbo].[LVH_TACGIA] ([Lvh_MaTG])
GO
ALTER TABLE [dbo].[LVH_SACH] CHECK CONSTRAINT [FK_LVH_SACH_LVH_TACGIA]
GO
