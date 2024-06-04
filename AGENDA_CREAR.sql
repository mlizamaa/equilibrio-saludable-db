DROP PROCEDURE IF EXISTS AGENDA_CREAR;
go
-- Procedimiento almacenado para eliminar un paciente por su ID
CREATE PROCEDURE AGENDA_CREAR
    @fechaInicio DATETIME,
    @fechaFin DATETIME,
    @horarioInicio  VARCHAR(16),
    @horarioFin VARCHAR(16)
AS
BEGIN
	DECLARE @ID UNIQUEIDENTIFIER = NEWID()
    INSERT INTO [equilibrio-saludable].esdbuser.Agenda
	(	Id, 	
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
		)
VALUES( @ID, 
		@fechaInicio, 
		@fechaFin, 
		@horarioInicio, 
		@horarioFin, 
		GETDATE(), 
		GETDATE(), 
		'SYSTEM', 
		'', 
		1, 
		0);
	
	SELECT Id, 	
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
	FROM Agenda a 
	WHERE Id  = @ID
	
	

END;