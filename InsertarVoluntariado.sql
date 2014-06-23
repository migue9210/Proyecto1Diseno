USE [TURISTEAR_CR]
GO
/****** Object:  StoredProcedure [dbo].[InsertarDestino]    Script Date: 06/21/2014 22:38:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Alter procedure [dbo].[InsertarVoluntariado]
(
@ID_DESTINO INT,
@ID_TIPO_VOLUNTARIADO INT,
@HORAS_SEMANALES INT,
@DESCRIPCION VARCHAR(500),
@PERFIL_VOLUNTARIADO VARCHAR(500),
@VACANTES INT,
@ENCARGADO VARCHAR(50)
)
as set nocount on
declare @new_idVoluntariado int
set @new_idVoluntariado = (select MAX(dbo.VOLUNTARIADO.ID_VOLUNTARIADO) from VOLUNTARIADO) +1 
insert into VOLUNTARIADO values ( @new_idVoluntariado, @ID_DESTINO, @ID_TIPO_VOLUNTARIADO, @HORAS_SEMANALES, @DESCRIPCION, @PERFIL_VOLUNTARIADO, @VACANTES, @ENCARGADO)
set nocount off



