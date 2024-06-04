DROP PROCEDURE IF EXISTS AGENDA_LISTAR;
GO
-- Procedimiento almacenado para eliminar un paciente por su ID
CREATE PROCEDURE AGENDA_LISTAR
AS
BEGIN
    
	SELECT 	
		Id, 	
		FechaInicio, 
		FechaFin, 
		HorarioInicio, 
		HorarioFin, 
		FechaCreacion, 
		FechaModificacion, 
		UsuarioCreacion, 
		UsuarioModificacion, 
		Activo, 
		Eliminado
	FROM esdbuser.Agenda
	

END;