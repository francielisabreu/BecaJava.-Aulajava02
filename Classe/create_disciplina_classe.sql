USE [Aula]
GO

/****** Object:  Table [dbo].[DisciplinaClasse]    Script Date: 27/10/2020 22:35:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DisciplinaClasse](
	[DisciplinaId] [int] NOT NULL,
	[ClasseId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[DisciplinaClasse]  WITH CHECK ADD  CONSTRAINT [FK_DisciplinaClasse_Classe] FOREIGN KEY([ClasseId])
REFERENCES [dbo].[Classe] ([Id])
GO

ALTER TABLE [dbo].[DisciplinaClasse] CHECK CONSTRAINT [FK_DisciplinaClasse_Classe]
GO

ALTER TABLE [dbo].[DisciplinaClasse]  WITH CHECK ADD  CONSTRAINT [FK_DisciplinaClasse_Diciplina] FOREIGN KEY([DisciplinaId])
REFERENCES [dbo].[Diciplina] ([Id])
GO

ALTER TABLE [dbo].[DisciplinaClasse] CHECK CONSTRAINT [FK_DisciplinaClasse_Diciplina]
GO


