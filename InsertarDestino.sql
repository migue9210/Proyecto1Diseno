USE [TURISTEAR_CR]
GO
/****** Object:  StoredProcedure [dbo].[InsertarDestino]    Script Date: 06/21/2014 21:32:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[InsertarDestino]
(
@Nombre nvarchar(50),
@Descripcion nvarchar(200),
@Cali int,
@Url nchar(50)
)
as set nocount on


declare @new_idDesti int


/*Arreglar es @new_idDirec*/

set @new_idDesti = (select MAX(dbo.DESTINO.ID_DESTINO) from [dbo].DESTINO) +1 
insert into [DESTINO] values ( @new_idDesti, 2, @Nombre, @Descripcion, @Cali, @Url)
set nocount off

EXECUTE dbo.InsertarDestino 'Tapanti', 'Bosque nuboso', 5, 'https://tapanti.com';
