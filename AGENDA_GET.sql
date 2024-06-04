DROP PROCEDURE IF EXISTS AGENDA_GET;
GO

CREATE PROCEDURE AGENDA_GET
@ID UNIQUEIDENTIFIER
AS
BEGIN

SELECT Id, 
    FechaInicio, 
    FechaFin, 
    Activo, 
    Eliminado, 
    FechaCreacion, 
    FechaModificacion, 
    UsuarioCreacion, 
    UsuarioModificacion 
FROM [equilibrio-saludable].esdbuser."Agenda"
WHERE Id = @ID;
END;