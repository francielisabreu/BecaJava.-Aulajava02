USE [Aula]
GO

/****** Object:  Table [dbo].[Aluno]    Script Date: 27/10/2020 22:29:35 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Aluno](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Matricula] [varchar](50) NULL,
	[Nome] [varchar](100) NULL,
	[Idade] [int] NULL,
	[DataNascimento] [datetime] NULL,
	[ClasseId] [int] NULL,
 CONSTRAINT [PK_Aluno] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Aluno]  WITH CHECK ADD  CONSTRAINT [FK_Aluno_Aluno] FOREIGN KEY([Id])
REFERENCES [dbo].[Aluno] ([Id])
GO

ALTER TABLE [dbo].[Aluno] CHECK CONSTRAINT [FK_Aluno_Aluno]
GO


