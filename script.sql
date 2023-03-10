USE [master]
GO
/****** Object:  Database [DBVentaAngular]    Script Date: 3/03/2023 02:26:10 ******/
CREATE DATABASE [DBVentaAngular]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBVentaAngular', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DBVentaAngular.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DBVentaAngular_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DBVentaAngular_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DBVentaAngular] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBVentaAngular].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBVentaAngular] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBVentaAngular] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBVentaAngular] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBVentaAngular] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBVentaAngular] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBVentaAngular] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DBVentaAngular] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBVentaAngular] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBVentaAngular] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBVentaAngular] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBVentaAngular] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBVentaAngular] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBVentaAngular] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBVentaAngular] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBVentaAngular] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DBVentaAngular] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBVentaAngular] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBVentaAngular] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBVentaAngular] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBVentaAngular] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBVentaAngular] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBVentaAngular] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBVentaAngular] SET RECOVERY FULL 
GO
ALTER DATABASE [DBVentaAngular] SET  MULTI_USER 
GO
ALTER DATABASE [DBVentaAngular] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBVentaAngular] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBVentaAngular] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBVentaAngular] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DBVentaAngular] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DBVentaAngular] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DBVentaAngular', N'ON'
GO
ALTER DATABASE [DBVentaAngular] SET QUERY_STORE = OFF
GO
USE [DBVentaAngular]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 3/03/2023 02:26:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[idCategoria] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NULL,
	[esActivo] [bit] NULL,
	[fechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleVenta]    Script Date: 3/03/2023 02:26:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleVenta](
	[idDetalleVenta] [int] IDENTITY(1,1) NOT NULL,
	[idVenta] [int] NULL,
	[idProducto] [int] NULL,
	[cantidad] [int] NULL,
	[precio] [decimal](10, 2) NULL,
	[total] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[idDetalleVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NumeroDocumento]    Script Date: 3/03/2023 02:26:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NumeroDocumento](
	[idNumeroDocumento] [int] IDENTITY(1,1) NOT NULL,
	[ultimo_Numero] [int] NOT NULL,
	[fechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idNumeroDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 3/03/2023 02:26:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[idProducto] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NULL,
	[idCategoria] [int] NULL,
	[stock] [int] NULL,
	[precio] [decimal](10, 2) NULL,
	[esActivo] [bit] NULL,
	[fechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rol]    Script Date: 3/03/2023 02:26:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rol](
	[idRol] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NULL,
	[esActivo] [bit] NULL,
	[fechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 3/03/2023 02:26:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[nombreApellidos] [varchar](100) NULL,
	[correo] [varchar](40) NULL,
	[idRol] [int] NULL,
	[clave] [varchar](40) NULL,
	[esActivo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 3/03/2023 02:26:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[idVenta] [int] IDENTITY(1,1) NOT NULL,
	[numeroDocumento] [varchar](40) NULL,
	[tipoPago] [varchar](50) NULL,
	[fechaRegistro] [datetime] NULL,
	[total] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[idVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categoria] ON 

INSERT [dbo].[Categoria] ([idCategoria], [descripcion], [esActivo], [fechaRegistro]) VALUES (1, N'Laptops', 1, CAST(N'2023-03-02T02:53:27.467' AS DateTime))
INSERT [dbo].[Categoria] ([idCategoria], [descripcion], [esActivo], [fechaRegistro]) VALUES (2, N'Monitores', 1, CAST(N'2023-03-02T02:53:27.467' AS DateTime))
INSERT [dbo].[Categoria] ([idCategoria], [descripcion], [esActivo], [fechaRegistro]) VALUES (3, N'Teclados', 1, CAST(N'2023-03-02T02:53:27.467' AS DateTime))
INSERT [dbo].[Categoria] ([idCategoria], [descripcion], [esActivo], [fechaRegistro]) VALUES (4, N'Auriculares', 1, CAST(N'2023-03-02T02:53:27.467' AS DateTime))
INSERT [dbo].[Categoria] ([idCategoria], [descripcion], [esActivo], [fechaRegistro]) VALUES (5, N'Memorias', 1, CAST(N'2023-03-02T02:53:27.467' AS DateTime))
INSERT [dbo].[Categoria] ([idCategoria], [descripcion], [esActivo], [fechaRegistro]) VALUES (6, N'Accesorios', 1, CAST(N'2023-03-02T02:53:27.470' AS DateTime))
SET IDENTITY_INSERT [dbo].[Categoria] OFF
GO
SET IDENTITY_INSERT [dbo].[DetalleVenta] ON 

INSERT [dbo].[DetalleVenta] ([idDetalleVenta], [idVenta], [idProducto], [cantidad], [precio], [total]) VALUES (1, 1, 1, 2, CAST(2500.00 AS Decimal(10, 2)), CAST(5000.00 AS Decimal(10, 2)))
INSERT [dbo].[DetalleVenta] ([idDetalleVenta], [idVenta], [idProducto], [cantidad], [precio], [total]) VALUES (2, 2, 1, 5, CAST(2500.00 AS Decimal(10, 2)), CAST(12500.00 AS Decimal(10, 2)))
INSERT [dbo].[DetalleVenta] ([idDetalleVenta], [idVenta], [idProducto], [cantidad], [precio], [total]) VALUES (3, 2, 5, 4, CAST(1400.00 AS Decimal(10, 2)), CAST(5600.00 AS Decimal(10, 2)))
INSERT [dbo].[DetalleVenta] ([idDetalleVenta], [idVenta], [idProducto], [cantidad], [precio], [total]) VALUES (4, 2, 13, 2, CAST(200.00 AS Decimal(10, 2)), CAST(400.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[DetalleVenta] OFF
GO
SET IDENTITY_INSERT [dbo].[NumeroDocumento] ON 

INSERT [dbo].[NumeroDocumento] ([idNumeroDocumento], [ultimo_Numero], [fechaRegistro]) VALUES (1, 2, CAST(N'2023-03-03T02:20:37.263' AS DateTime))
SET IDENTITY_INSERT [dbo].[NumeroDocumento] OFF
GO
SET IDENTITY_INSERT [dbo].[Producto] ON 

INSERT [dbo].[Producto] ([idProducto], [nombre], [idCategoria], [stock], [precio], [esActivo], [fechaRegistro]) VALUES (1, N'laptop samsung book pro', 1, 13, CAST(2500.00 AS Decimal(10, 2)), 1, CAST(N'2023-03-02T02:53:27.487' AS DateTime))
INSERT [dbo].[Producto] ([idProducto], [nombre], [idCategoria], [stock], [precio], [esActivo], [fechaRegistro]) VALUES (2, N'laptop lenovo idea pad', 1, 30, CAST(2200.00 AS Decimal(10, 2)), 1, CAST(N'2023-03-02T02:53:27.487' AS DateTime))
INSERT [dbo].[Producto] ([idProducto], [nombre], [idCategoria], [stock], [precio], [esActivo], [fechaRegistro]) VALUES (3, N'laptop asus zenbook duo', 1, 30, CAST(2100.00 AS Decimal(10, 2)), 1, CAST(N'2023-03-02T02:53:27.487' AS DateTime))
INSERT [dbo].[Producto] ([idProducto], [nombre], [idCategoria], [stock], [precio], [esActivo], [fechaRegistro]) VALUES (4, N'monitor teros gaming te-2', 2, 25, CAST(1050.00 AS Decimal(10, 2)), 1, CAST(N'2023-03-02T02:53:27.487' AS DateTime))
INSERT [dbo].[Producto] ([idProducto], [nombre], [idCategoria], [stock], [precio], [esActivo], [fechaRegistro]) VALUES (5, N'monitor samsung curvo', 2, 11, CAST(1400.00 AS Decimal(10, 2)), 1, CAST(N'2023-03-02T02:53:27.487' AS DateTime))
INSERT [dbo].[Producto] ([idProducto], [nombre], [idCategoria], [stock], [precio], [esActivo], [fechaRegistro]) VALUES (6, N'monitor huawei gamer', 2, 10, CAST(1350.00 AS Decimal(10, 2)), 1, CAST(N'2023-03-02T02:53:27.487' AS DateTime))
INSERT [dbo].[Producto] ([idProducto], [nombre], [idCategoria], [stock], [precio], [esActivo], [fechaRegistro]) VALUES (7, N'teclado seisen gamer', 3, 10, CAST(800.00 AS Decimal(10, 2)), 1, CAST(N'2023-03-02T02:53:27.487' AS DateTime))
INSERT [dbo].[Producto] ([idProducto], [nombre], [idCategoria], [stock], [precio], [esActivo], [fechaRegistro]) VALUES (8, N'teclado antryx gamer', 3, 10, CAST(1000.00 AS Decimal(10, 2)), 1, CAST(N'2023-03-02T02:53:27.487' AS DateTime))
INSERT [dbo].[Producto] ([idProducto], [nombre], [idCategoria], [stock], [precio], [esActivo], [fechaRegistro]) VALUES (9, N'teclado logitech', 3, 10, CAST(1000.00 AS Decimal(10, 2)), 1, CAST(N'2023-03-02T02:53:27.487' AS DateTime))
INSERT [dbo].[Producto] ([idProducto], [nombre], [idCategoria], [stock], [precio], [esActivo], [fechaRegistro]) VALUES (10, N'auricular logitech gamer', 4, 15, CAST(800.00 AS Decimal(10, 2)), 1, CAST(N'2023-03-02T02:53:27.487' AS DateTime))
INSERT [dbo].[Producto] ([idProducto], [nombre], [idCategoria], [stock], [precio], [esActivo], [fechaRegistro]) VALUES (11, N'auricular hyperx gamer', 4, 20, CAST(680.00 AS Decimal(10, 2)), 1, CAST(N'2023-03-02T02:53:27.487' AS DateTime))
INSERT [dbo].[Producto] ([idProducto], [nombre], [idCategoria], [stock], [precio], [esActivo], [fechaRegistro]) VALUES (12, N'auricular redragon rgb', 4, 25, CAST(950.00 AS Decimal(10, 2)), 1, CAST(N'2023-03-02T02:53:27.487' AS DateTime))
INSERT [dbo].[Producto] ([idProducto], [nombre], [idCategoria], [stock], [precio], [esActivo], [fechaRegistro]) VALUES (13, N'memoria kingston rgb', 5, 8, CAST(200.00 AS Decimal(10, 2)), 1, CAST(N'2023-03-02T02:53:27.487' AS DateTime))
INSERT [dbo].[Producto] ([idProducto], [nombre], [idCategoria], [stock], [precio], [esActivo], [fechaRegistro]) VALUES (14, N'ventilador cooler master', 6, 20, CAST(200.00 AS Decimal(10, 2)), 1, CAST(N'2023-03-02T02:53:27.487' AS DateTime))
INSERT [dbo].[Producto] ([idProducto], [nombre], [idCategoria], [stock], [precio], [esActivo], [fechaRegistro]) VALUES (15, N'mini ventilador lenono', 6, 15, CAST(200.00 AS Decimal(10, 2)), 1, CAST(N'2023-03-02T02:53:27.487' AS DateTime))
SET IDENTITY_INSERT [dbo].[Producto] OFF
GO
SET IDENTITY_INSERT [dbo].[Rol] ON 

INSERT [dbo].[Rol] ([idRol], [descripcion], [esActivo], [fechaRegistro]) VALUES (1, N'Administrador', 1, CAST(N'2023-03-02T02:53:27.447' AS DateTime))
INSERT [dbo].[Rol] ([idRol], [descripcion], [esActivo], [fechaRegistro]) VALUES (2, N'Empleado', 1, CAST(N'2023-03-02T02:53:27.447' AS DateTime))
SET IDENTITY_INSERT [dbo].[Rol] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([idUsuario], [nombreApellidos], [correo], [idRol], [clave], [esActivo]) VALUES (1, N'jose smith', N'admin@example.com', 1, N'12345', 1)
INSERT [dbo].[Usuario] ([idUsuario], [nombreApellidos], [correo], [idRol], [clave], [esActivo]) VALUES (2, N'luis smith', N'employe@example.com', 2, N'12345', 1)
INSERT [dbo].[Usuario] ([idUsuario], [nombreApellidos], [correo], [idRol], [clave], [esActivo]) VALUES (3, N'kev', N'123@gmail.com', 2, N'12345', NULL)
SET IDENTITY_INSERT [dbo].[Usuario] OFF
GO
SET IDENTITY_INSERT [dbo].[Venta] ON 

INSERT [dbo].[Venta] ([idVenta], [numeroDocumento], [tipoPago], [fechaRegistro], [total]) VALUES (1, N'0001', N'Efectivo', CAST(N'2023-03-02T03:03:55.130' AS DateTime), CAST(5000.00 AS Decimal(10, 2)))
INSERT [dbo].[Venta] ([idVenta], [numeroDocumento], [tipoPago], [fechaRegistro], [total]) VALUES (2, N'0002', N'Efectivo', CAST(N'2023-03-03T02:20:37.427' AS DateTime), CAST(18500.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[Venta] OFF
GO
ALTER TABLE [dbo].[Categoria] ADD  DEFAULT (getdate()) FOR [fechaRegistro]
GO
ALTER TABLE [dbo].[NumeroDocumento] ADD  DEFAULT (getdate()) FOR [fechaRegistro]
GO
ALTER TABLE [dbo].[Producto] ADD  DEFAULT (getdate()) FOR [fechaRegistro]
GO
ALTER TABLE [dbo].[Rol] ADD  DEFAULT (getdate()) FOR [fechaRegistro]
GO
ALTER TABLE [dbo].[Venta] ADD  DEFAULT (getdate()) FOR [fechaRegistro]
GO
ALTER TABLE [dbo].[DetalleVenta]  WITH CHECK ADD FOREIGN KEY([idProducto])
REFERENCES [dbo].[Producto] ([idProducto])
GO
ALTER TABLE [dbo].[DetalleVenta]  WITH CHECK ADD FOREIGN KEY([idVenta])
REFERENCES [dbo].[Venta] ([idVenta])
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD FOREIGN KEY([idCategoria])
REFERENCES [dbo].[Categoria] ([idCategoria])
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD FOREIGN KEY([idRol])
REFERENCES [dbo].[Rol] ([idRol])
GO
USE [master]
GO
ALTER DATABASE [DBVentaAngular] SET  READ_WRITE 
GO
