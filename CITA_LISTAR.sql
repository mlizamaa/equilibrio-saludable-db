DROP PROCEDURE IF EXISTS CITA_LISTAR;
GO

CREATE PROCEDURE CITA_LISTAR
@AgendaId UNIQUEIDENTIFIER
AS
BEGIN
    SELECT Id,
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
    codEstado
    FROM [equilibrio-saludable].esdbuser.Cita
    WHERE IdAgenda = @AgendaId
    ORDER BY Fecha ASC;
END;