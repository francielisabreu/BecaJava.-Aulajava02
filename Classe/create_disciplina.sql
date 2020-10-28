USE [Aula]
GO

/****** Object:  Table [dbo].[Diciplina]    Script Date: 27/10/2020 22:34:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Diciplina](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NULL,
	[ProfessorId] [int] NULL,
 CONSTRAINT [PK_Diciplina] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Diciplina]  WITH CHECK ADD  CONSTRAINT [FK_Diciplina_Professor] FOREIGN KEY([Id])
REFERENCES [dbo].[Professor] ([Id])
GO

ALTER TABLE [dbo].[Diciplina] CHECK CONSTRAINT [FK_Diciplina_Professor]
GO


