USE [TRANSFERMARKT]
GO
/****** Object:  Table [dbo].[Agent]    Script Date: 12.11.2019 18:39:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agent](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ImieINazwisko] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[czas]    Script Date: 12.11.2019 18:39:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[czas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Rok] [int] NOT NULL,
	[Miesiac] [int] NOT NULL,
	[Dzien] [int] NOT NULL,
	[DzienOkienka] [varchar](20) NULL,
	[PrzynaleznoscDaty] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dzien]    Script Date: 12.11.2019 18:39:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dzien](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DokladnaData] [datetime] NULL,
	[Rok] [numeric](18, 0) NULL,
	[Miesiac] [varchar](10) NULL,
	[Dzien] [numeric](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Klub]    Script Date: 12.11.2019 18:39:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Klub](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nazwa] [varchar](max) NULL,
	[Kraj] [varchar](max) NULL,
	[Budżet] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kontrakt]    Script Date: 12.11.2019 18:39:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kontrakt](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AgentId] [int] NULL,
	[ZawodnikId] [int] NULL,
	[prowizjaAgenta] [int] NULL,
	[pesjaMiesieczna] [int] NULL,
	[DataStartu] [int] NULL,
	[DataZakonczenia] [int] NULL,
	[WartoscKontraktu] [numeric](18, 0) NULL,
	[iloscMiesiecy] [numeric](18, 0) NULL,
	[Zmienna] [numeric](18, 0) NULL,
	[CzyZmiennaWyplacona] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Smieci]    Script Date: 12.11.2019 18:39:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Smieci](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TypPlatnosci] [varchar](20) NULL,
	[DlugoscPobytuWKlubie] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransferZawodnika]    Script Date: 12.11.2019 18:39:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransferZawodnika](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DataTransferuId] [int] NULL,
	[SmieciId] [int] NULL,
	[KlubSprzedajacyId] [int] NULL,
	[KlubKupujacyId] [int] NULL,
	[KwotaTransferu] [int] NULL,
	[ZawodnikId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WartoscZawodnika]    Script Date: 12.11.2019 18:39:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WartoscZawodnika](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[WartoscRynkowa] [int] NULL,
	[DataWystawienia] [int] NULL,
	[ZawodnikId] [int] NULL,
	[wspolczynnikZmianyWartosci] [numeric](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Zawodnik]    Script Date: 12.11.2019 18:39:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zawodnik](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Pozycja] [varchar](50) NULL,
	[KlubId] [int] NULL,
	[AgentId] [int] NULL,
	[PrzedzialWiekowy] [varchar](20) NULL,
	[ImieINazwisko] [varchar](50) NULL,
	[StatusWKlubie] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Kontrakt]  WITH CHECK ADD FOREIGN KEY([AgentId])
REFERENCES [dbo].[Agent] ([Id])
GO
ALTER TABLE [dbo].[Kontrakt]  WITH CHECK ADD FOREIGN KEY([DataStartu])
REFERENCES [dbo].[Dzien] ([Id])
GO
ALTER TABLE [dbo].[Kontrakt]  WITH CHECK ADD FOREIGN KEY([DataZakonczenia])
REFERENCES [dbo].[Dzien] ([Id])
GO
ALTER TABLE [dbo].[Kontrakt]  WITH CHECK ADD FOREIGN KEY([ZawodnikId])
REFERENCES [dbo].[Zawodnik] ([Id])
GO
ALTER TABLE [dbo].[TransferZawodnika]  WITH CHECK ADD FOREIGN KEY([DataTransferuId])
REFERENCES [dbo].[czas] ([Id])
GO
ALTER TABLE [dbo].[TransferZawodnika]  WITH CHECK ADD FOREIGN KEY([KlubKupujacyId])
REFERENCES [dbo].[Klub] ([Id])
GO
ALTER TABLE [dbo].[TransferZawodnika]  WITH CHECK ADD FOREIGN KEY([KlubSprzedajacyId])
REFERENCES [dbo].[Klub] ([Id])
GO
ALTER TABLE [dbo].[TransferZawodnika]  WITH CHECK ADD FOREIGN KEY([SmieciId])
REFERENCES [dbo].[Smieci] ([Id])
GO
ALTER TABLE [dbo].[TransferZawodnika]  WITH CHECK ADD FOREIGN KEY([ZawodnikId])
REFERENCES [dbo].[Zawodnik] ([Id])
GO
ALTER TABLE [dbo].[WartoscZawodnika]  WITH CHECK ADD FOREIGN KEY([DataWystawienia])
REFERENCES [dbo].[Dzien] ([Id])
GO
ALTER TABLE [dbo].[WartoscZawodnika]  WITH CHECK ADD FOREIGN KEY([ZawodnikId])
REFERENCES [dbo].[Zawodnik] ([Id])
GO
ALTER TABLE [dbo].[Zawodnik]  WITH CHECK ADD FOREIGN KEY([AgentId])
REFERENCES [dbo].[Agent] ([Id])
GO
ALTER TABLE [dbo].[Zawodnik]  WITH CHECK ADD FOREIGN KEY([KlubId])
REFERENCES [dbo].[Klub] ([Id])
GO
