USE [master]
GO
/****** Object:  Database [ProyectoTaller]    Script Date: 21/05/2024 01:06:02 p. m. ******/
CREATE DATABASE [ProyectoTaller]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProyectoTaller', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ProyectoTaller.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ProyectoTaller_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ProyectoTaller_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ProyectoTaller] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProyectoTaller].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProyectoTaller] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProyectoTaller] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProyectoTaller] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProyectoTaller] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProyectoTaller] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProyectoTaller] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ProyectoTaller] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProyectoTaller] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProyectoTaller] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProyectoTaller] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProyectoTaller] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProyectoTaller] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProyectoTaller] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProyectoTaller] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProyectoTaller] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ProyectoTaller] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProyectoTaller] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProyectoTaller] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProyectoTaller] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProyectoTaller] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProyectoTaller] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProyectoTaller] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProyectoTaller] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ProyectoTaller] SET  MULTI_USER 
GO
ALTER DATABASE [ProyectoTaller] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProyectoTaller] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProyectoTaller] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProyectoTaller] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProyectoTaller] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ProyectoTaller] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ProyectoTaller] SET QUERY_STORE = OFF
GO
USE [ProyectoTaller]
GO
/****** Object:  UserDefinedFunction [dbo].[CalcularCostoPiezasServicio]    Script Date: 21/05/2024 01:06:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[CalcularCostoPiezasServicio](@Servicio_Id VARCHAR(5))
RETURNS DECIMAL(18, 2)
AS
BEGIN
    DECLARE @CostoTotal DECIMAL(18, 2)
    
    SELECT @CostoTotal = SUM(p.Precio_Unitario)
    FROM Servicio_Piezas sp
    JOIN Piezas p ON sp.Piezas_Id = p.Id
    WHERE sp.Servicio_Id = @Servicio_Id
    
    RETURN ISNULL(@CostoTotal, 0)
END
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 21/05/2024 01:06:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[ID] [varchar](5) NOT NULL,
	[Nombre_Usuario] [varchar](50) NULL,
	[Contraseña] [varchar](50) NULL,
 CONSTRAINT [Admin_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Autos]    Script Date: 21/05/2024 01:06:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Autos](
	[Id] [int] NOT NULL,
	[Marca] [varchar](50) NULL,
	[Modelo] [varchar](50) NULL,
	[Color] [varchar](50) NULL,
	[Tipo] [varchar](50) NULL,
	[Clientes_Id] [varchar](5) NOT NULL,
 CONSTRAINT [Autos_PK] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 21/05/2024 01:06:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[Id] [varchar](5) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Ap_Paterno] [varchar](50) NULL,
	[Ap_Materno] [varchar](50) NULL,
	[Direccion] [varchar](100) NULL,
	[Telefono] [varchar](50) NULL,
	[Frecuente] [varchar](5) NULL,
 CONSTRAINT [Clientes_PK] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Piezas]    Script Date: 21/05/2024 01:06:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Piezas](
	[Id] [varchar](5) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Marca] [varchar](50) NULL,
	[Proveedor] [varchar](50) NULL,
	[Existencias] [int] NULL,
	[Precio_Unitario] [decimal](18, 2) NULL,
 CONSTRAINT [Piezas_PK] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Servicio]    Script Date: 21/05/2024 01:06:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servicio](
	[Id] [varchar](5) NOT NULL,
	[Tipo] [varchar](50) NULL,
	[Modelo_Coche] [varchar](50) NULL,
	[Descripcion] [varchar](250) NULL,
	[Estado_Servicio] [varchar](50) NULL,
	[Costo_Estimado] [decimal](18, 2) NULL,
	[Fecha_Inicio] [date] NULL,
	[Hora] [time](7) NULL,
	[Clientes_Id] [varchar](5) NOT NULL,
	[Autos_Id] [int] NOT NULL,
	[Fecha_Entrega] [date] NULL,
 CONSTRAINT [Servicio_PK] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Servicio_Piezas]    Script Date: 21/05/2024 01:06:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servicio_Piezas](
	[Servicio_Id] [varchar](5) NOT NULL,
	[Piezas_Id] [varchar](5) NOT NULL,
 CONSTRAINT [Servicio_Piezas_PK] PRIMARY KEY CLUSTERED 
(
	[Servicio_Id] ASC,
	[Piezas_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Autos]  WITH CHECK ADD  CONSTRAINT [Autos_Clientes_FK] FOREIGN KEY([Clientes_Id])
REFERENCES [dbo].[Clientes] ([Id])
GO
ALTER TABLE [dbo].[Autos] CHECK CONSTRAINT [Autos_Clientes_FK]
GO
ALTER TABLE [dbo].[Servicio]  WITH CHECK ADD  CONSTRAINT [Servicio_Autos_FK] FOREIGN KEY([Autos_Id])
REFERENCES [dbo].[Autos] ([Id])
GO
ALTER TABLE [dbo].[Servicio] CHECK CONSTRAINT [Servicio_Autos_FK]
GO
ALTER TABLE [dbo].[Servicio]  WITH CHECK ADD  CONSTRAINT [Servicio_Clientes_FK] FOREIGN KEY([Clientes_Id])
REFERENCES [dbo].[Clientes] ([Id])
GO
ALTER TABLE [dbo].[Servicio] CHECK CONSTRAINT [Servicio_Clientes_FK]
GO
ALTER TABLE [dbo].[Servicio_Piezas]  WITH CHECK ADD  CONSTRAINT [Servicio_Piezas_Piezas_FK] FOREIGN KEY([Piezas_Id])
REFERENCES [dbo].[Piezas] ([Id])
GO
ALTER TABLE [dbo].[Servicio_Piezas] CHECK CONSTRAINT [Servicio_Piezas_Piezas_FK]
GO
ALTER TABLE [dbo].[Servicio_Piezas]  WITH CHECK ADD  CONSTRAINT [Servicio_Piezas_Servicio_FK] FOREIGN KEY([Servicio_Id])
REFERENCES [dbo].[Servicio] ([Id])
GO
ALTER TABLE [dbo].[Servicio_Piezas] CHECK CONSTRAINT [Servicio_Piezas_Servicio_FK]
GO
/****** Object:  StoredProcedure [dbo].[ActualizarCostoEstimadoServicio]    Script Date: 21/05/2024 01:06:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarCostoEstimadoServicio]
    @Servicio_Id VARCHAR(5)
AS
BEGIN
    DECLARE @CostoTotal DECIMAL(18, 2)
    
    -- Calcular el costo total de las piezas
    SET @CostoTotal = dbo.CalcularCostoPiezasServicio(@Servicio_Id)
    
    -- Actualizar el costo estimado del servicio
    UPDATE Servicio
    SET Costo_Estimado = @CostoTotal
    WHERE Id = @Servicio_Id
END
GO
USE [master]
GO
ALTER DATABASE [ProyectoTaller] SET  READ_WRITE 
GO
