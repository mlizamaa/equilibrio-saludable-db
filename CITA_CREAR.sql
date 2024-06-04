DROP PROCEDURE IF EXISTS esdbuser.CITA_CREAR;
GO

CREATE PROCEDURE esdbuser.CITA_CREAR
	@fecha datetime,
	@duracion int,
	@codTipoCita int,
	@codEspecialidad int,
	@IdAgenda uniqueidentifier
AS 
BEGIN
DECLARE @GUID uniqueidentifier;
SET @GUID = NEWID();

INSERT INTO [equilibrio-saludable].esdbuser.Cita
(   Id, 
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
    IdAgenda)
VALUES(@GUID, 
    @FECHA, 
    @duracion, 
    @codTipoCita , 
    @codEspecialidad, 
    1, 
    0, 
    GETDATE(), 
    GETDATE(), 
    'SYSTEM', 
    null, 
    @IdAgenda);

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
    IdAgenda
FROM [equilibrio-saludable].esdbuser.Cita
WHERE Id = @GUID;
END;