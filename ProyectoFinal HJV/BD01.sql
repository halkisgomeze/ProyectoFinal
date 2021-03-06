/*             
                UNIVERSIDAD DOMINICANA O & M
	            SECCION 0541 - ING. INDUSTRIAL
	               MATERIA BASE DE DATOS
	
	MATRICULA		     NOMBRE COMPLETO
	-----------------------------------------------------
	16-SIIN-1-048        HALKIS GOMEZ E.
	16-SIIN-1-060	   JAILENE RODRIGUEZ
	16-SIIT-1-037	     VILEYSIS FELIX

*/

USE [master]
GO
/****** Object:  Database [HJV01]    Script Date: 4/6/2018 12:19:16 AM ******/
CREATE DATABASE [HJV01]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HJV01', FILENAME = N'C:\Practica\HJV01.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HJV01_log', FILENAME = N'C:\Practica\HJV01_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [HJV01] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HJV01].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HJV01] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HJV01] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HJV01] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HJV01] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HJV01] SET ARITHABORT OFF 
GO
ALTER DATABASE [HJV01] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HJV01] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HJV01] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HJV01] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HJV01] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HJV01] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HJV01] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HJV01] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HJV01] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HJV01] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HJV01] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HJV01] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HJV01] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HJV01] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HJV01] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HJV01] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HJV01] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HJV01] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HJV01] SET  MULTI_USER 
GO
ALTER DATABASE [HJV01] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HJV01] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HJV01] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HJV01] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HJV01] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [HJV01] SET QUERY_STORE = OFF
GO
USE [HJV01]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [HJV01]
GO
/****** Object:  Table [dbo].[Articulos]    Script Date: 4/6/2018 12:19:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articulos](
	[CodArticulo] [tinyint] NOT NULL,
	[Nombre_Articulo] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Articulos] PRIMARY KEY CLUSTERED 
(
	[CodArticulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 4/6/2018 12:19:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[CodCliente] [tinyint] NOT NULL,
	[Nombres] [varchar](20) NOT NULL,
	[Apellido] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[CodCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pedidos]    Script Date: 4/6/2018 12:19:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedidos](
	[NumPedido] [tinyint] NOT NULL,
	[CodCliente] [tinyint] NOT NULL,
	[CodArticulo] [tinyint] NOT NULL,
	[Cantidad] [tinyint] NOT NULL,
 CONSTRAINT [PK_Pedidos] PRIMARY KEY CLUSTERED 
(
	[NumPedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Articulos] ([CodArticulo], [Nombre_Articulo]) VALUES (1, N'Zapatos Negros')
GO
INSERT [dbo].[Articulos] ([CodArticulo], [Nombre_Articulo]) VALUES (2, N'Blusa Azul')
GO
INSERT [dbo].[Articulos] ([CodArticulo], [Nombre_Articulo]) VALUES (3, N'Gorra Roja')
GO
INSERT [dbo].[Articulos] ([CodArticulo], [Nombre_Articulo]) VALUES (4, N'Tenis Blancos')
GO
INSERT [dbo].[Articulos] ([CodArticulo], [Nombre_Articulo]) VALUES (5, N'Reloj Dorado')
GO
INSERT [dbo].[Articulos] ([CodArticulo], [Nombre_Articulo]) VALUES (6, N'Correa de Cuero')
GO
INSERT [dbo].[Articulos] ([CodArticulo], [Nombre_Articulo]) VALUES (7, N'Zapatillas Blancas')
GO
INSERT [dbo].[Articulos] ([CodArticulo], [Nombre_Articulo]) VALUES (8, N'Camisa Verde')
GO
INSERT [dbo].[Articulos] ([CodArticulo], [Nombre_Articulo]) VALUES (9, N'Camisa Amarilla')
GO
INSERT [dbo].[Articulos] ([CodArticulo], [Nombre_Articulo]) VALUES (10, N'Corbata de Colores')
GO
INSERT [dbo].[Clientes] ([CodCliente], [Nombres], [Apellido]) VALUES (1, N'Halkis', N'Gomez E.')
GO
INSERT [dbo].[Clientes] ([CodCliente], [Nombres], [Apellido]) VALUES (2, N'Hadelkis', N'Gomez E.')
GO
INSERT [dbo].[Clientes] ([CodCliente], [Nombres], [Apellido]) VALUES (3, N'Jailene', N'Rodriguez')
GO
INSERT [dbo].[Clientes] ([CodCliente], [Nombres], [Apellido]) VALUES (4, N'Vileysis', N'Felix')
GO
INSERT [dbo].[Clientes] ([CodCliente], [Nombres], [Apellido]) VALUES (5, N'Pedro', N'Picapiedra')
GO
INSERT [dbo].[Clientes] ([CodCliente], [Nombres], [Apellido]) VALUES (6, N'Pablo', N'Marmol')
GO
INSERT [dbo].[Clientes] ([CodCliente], [Nombres], [Apellido]) VALUES (7, N'Doctor', N'Chapatin')
GO
INSERT [dbo].[Clientes] ([CodCliente], [Nombres], [Apellido]) VALUES (8, N'Clark', N'Kent')
GO
INSERT [dbo].[Clientes] ([CodCliente], [Nombres], [Apellido]) VALUES (9, N'Daddy', N'Yankee')
GO
INSERT [dbo].[Clientes] ([CodCliente], [Nombres], [Apellido]) VALUES (10, N'Pablo', N'Piddy')
GO
INSERT [dbo].[Pedidos] ([NumPedido], [CodCliente], [CodArticulo], [Cantidad]) VALUES (1, 1, 10, 2)
GO
INSERT [dbo].[Pedidos] ([NumPedido], [CodCliente], [CodArticulo], [Cantidad]) VALUES (2, 2, 9, 1)
GO
INSERT [dbo].[Pedidos] ([NumPedido], [CodCliente], [CodArticulo], [Cantidad]) VALUES (3, 3, 8, 8)
GO
INSERT [dbo].[Pedidos] ([NumPedido], [CodCliente], [CodArticulo], [Cantidad]) VALUES (4, 4, 7, 3)
GO
INSERT [dbo].[Pedidos] ([NumPedido], [CodCliente], [CodArticulo], [Cantidad]) VALUES (5, 5, 6, 6)
GO
INSERT [dbo].[Pedidos] ([NumPedido], [CodCliente], [CodArticulo], [Cantidad]) VALUES (6, 6, 5, 5)
GO
INSERT [dbo].[Pedidos] ([NumPedido], [CodCliente], [CodArticulo], [Cantidad]) VALUES (7, 7, 4, 4)
GO
INSERT [dbo].[Pedidos] ([NumPedido], [CodCliente], [CodArticulo], [Cantidad]) VALUES (8, 8, 3, 7)
GO
INSERT [dbo].[Pedidos] ([NumPedido], [CodCliente], [CodArticulo], [Cantidad]) VALUES (9, 9, 2, 2)
GO
INSERT [dbo].[Pedidos] ([NumPedido], [CodCliente], [CodArticulo], [Cantidad]) VALUES (10, 10, 1, 2)
GO
ALTER TABLE [dbo].[Pedidos] ADD  CONSTRAINT [DF_Pedidos_Cantidad]  DEFAULT ((0)) FOR [Cantidad]
GO
ALTER TABLE [dbo].[Pedidos]  WITH CHECK ADD  CONSTRAINT [FK_Pedidos_Articulos] FOREIGN KEY([CodArticulo])
REFERENCES [dbo].[Articulos] ([CodArticulo])
GO
ALTER TABLE [dbo].[Pedidos] CHECK CONSTRAINT [FK_Pedidos_Articulos]
GO
ALTER TABLE [dbo].[Pedidos]  WITH CHECK ADD  CONSTRAINT [FK_Pedidos_Clientes] FOREIGN KEY([CodCliente])
REFERENCES [dbo].[Clientes] ([CodCliente])
GO
ALTER TABLE [dbo].[Pedidos] CHECK CONSTRAINT [FK_Pedidos_Clientes]
GO
USE [master]
GO
ALTER DATABASE [HJV01] SET  READ_WRITE 
GO

use HJV01
go

Select P.NumPedido,c.Nombres,c.Apellido,a.Nombre_Articulo,p.Cantidad 
from Pedidos P 
inner join Clientes C on  P.CodCliente=C.CodCliente
inner join Articulos A on P.CodArticulo=a.CodArticulo

