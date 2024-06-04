DROP PROCEDURE IF EXISTS CITA_GET;
GO

CREATE PROCEDURE CITA_GET
@CitaId UNIQUEIDENTIFIER
AS
BEGIN
   select Id,
    Fecha,
    Duracion,
    CodTipoCita,
    CodEspecialidad,
    Activo,
    Eliminado,
    FechaCreacion,
    FechaModificacion,
    UsuarioCreacion,
    UsuarioModificacion,
    IdAgenda,
    IdPersona,
    COALESCE(CodEstado,'DISPONIBLE') as CodEstado
    FROM [equilibrio-saludable].esdbuser.Cita
    WHERE Id = @CitaId;
END;