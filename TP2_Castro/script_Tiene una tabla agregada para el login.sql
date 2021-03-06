CREATE DATABASE CATALOGO_DB
GO
USE [CATALOGO_DB]
GO
/****** Object:  Table [dbo].[ARTICULOS]    Script Date: 27/04/2020 17:26:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ARTICULOS](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](50) NULL,
	[Nombre] [varchar](50) NULL,
	[Descripcion] [varchar](150) NULL,
	[IdMarca] [int] NULL,
	[IdCategoria] [int] NULL,
	[ImagenUrl] [varchar](1000) NULL,
	[Precio] [money] NULL,
 CONSTRAINT [PK_ARTICULOS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CATEGORIAS]    Script Date: 27/04/2020 17:26:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CATEGORIAS](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_CATEGORIAS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MARCAS]    Script Date: 27/04/2020 17:26:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MARCAS](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_MARCAS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[USUARIOS]    Script Date: 27/04/2020 17:26:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[USUARIOS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Usuario] [varchar](20) NOT NULL,
	[Clave] [varchar](20) NOT NULL,
	[estado] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ARTICULOS] ON 

INSERT [dbo].[ARTICULOS] ([Id], [Codigo], [Nombre], [Descripcion], [IdMarca], [IdCategoria], [ImagenUrl], [Precio]) VALUES (1, N'S01', N'Galaxy S10', N'Una canoa cara', 1, 1, N'https://images.samsung.com/is/image/samsung/co-galaxy-s10-sm-g970-sm-g970fzyjcoo-frontcanaryyellow-thumb-149016542', 69.9990)
INSERT [dbo].[ARTICULOS] ([Id], [Codigo], [Nombre], [Descripcion], [IdMarca], [IdCategoria], [ImagenUrl], [Precio]) VALUES (2, N'M03', N'Moto G Play 7ma Gen', N'Ya siete de estos?', 5, 1, N'https://www.motorola.cl/arquivos/moto-g7-play-img-product.png?v=636862863804700000', 15699.0000)
INSERT [dbo].[ARTICULOS] ([Id], [Codigo], [Nombre], [Descripcion], [IdMarca], [IdCategoria], [ImagenUrl], [Precio]) VALUES (3, N'S99', N'Play 4', N'Ya no se cuantas versiones hay', 3, 3, N'https://www.euronics.cz/image/product/800x800/532620.jpg', 35000.0000)
INSERT [dbo].[ARTICULOS] ([Id], [Codigo], [Nombre], [Descripcion], [IdMarca], [IdCategoria], [ImagenUrl], [Precio]) VALUES (4, N'S56', N'Bravia 55', N'Alta tele', 3, 2, N'https://intercompras.com/product_thumb_keepratio_2.php?img=images/product/SONY_KDL-55W950A.jpg&w=650&h=450', 49500.0000)
INSERT [dbo].[ARTICULOS] ([Id], [Codigo], [Nombre], [Descripcion], [IdMarca], [IdCategoria], [ImagenUrl], [Precio]) VALUES (5, N'A23', N'Apple TV', N'lindo loro', 2, 3, N'https://cnnespanol2.files.wordpress.com/2015/12/gadgets-mc3a1s-populares-apple-tv-2015-18.jpg?quality=100&strip=info&w=460&h=260&crop=1', 7850.0000)
SET IDENTITY_INSERT [dbo].[ARTICULOS] OFF
SET IDENTITY_INSERT [dbo].[CATEGORIAS] ON 

INSERT [dbo].[CATEGORIAS] ([Id], [Descripcion]) VALUES (1, N'Celulares')
INSERT [dbo].[CATEGORIAS] ([Id], [Descripcion]) VALUES (2, N'Televisores')
INSERT [dbo].[CATEGORIAS] ([Id], [Descripcion]) VALUES (3, N'Media')
INSERT [dbo].[CATEGORIAS] ([Id], [Descripcion]) VALUES (4, N'Audio')
SET IDENTITY_INSERT [dbo].[CATEGORIAS] OFF
SET IDENTITY_INSERT [dbo].[MARCAS] ON 

INSERT [dbo].[MARCAS] ([Id], [Descripcion]) VALUES (1, N'Samsung')
INSERT [dbo].[MARCAS] ([Id], [Descripcion]) VALUES (2, N'Apple')
INSERT [dbo].[MARCAS] ([Id], [Descripcion]) VALUES (3, N'Sony')
INSERT [dbo].[MARCAS] ([Id], [Descripcion]) VALUES (4, N'Huawei')
INSERT [dbo].[MARCAS] ([Id], [Descripcion]) VALUES (5, N'Motorola')
SET IDENTITY_INSERT [dbo].[MARCAS] OFF
SET IDENTITY_INSERT [dbo].[USUARIOS] ON 

INSERT [dbo].[USUARIOS] ([ID], [Usuario], [Clave], [estado]) VALUES (1, N'Fravega', N'123', 0)
INSERT [dbo].[USUARIOS] ([ID], [Usuario], [Clave], [estado]) VALUES (2, N'Garbarino', N'456', 0)
INSERT [dbo].[USUARIOS] ([ID], [Usuario], [Clave], [estado]) VALUES (3, N'Musimundo', N'789', 0)
SET IDENTITY_INSERT [dbo].[USUARIOS] OFF
