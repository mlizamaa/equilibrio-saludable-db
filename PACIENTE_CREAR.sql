DROP PROCEDURE IF EXISTS PACIENTE_CREAR;
GO

-- Procedimiento almacenado para crear un nuevo paciente
CREATE PROCEDURE PACIENTE_CREAR
    @Nombres NVARCHAR(128),
    @Apellidos NVARCHAR(128),
    @Rut NVARCHAR(15),
    @Telefono NVARCHAR(20),
    @Email NVARCHAR(128)
AS
BEGIN
    DECLARE @PacienteId uniqueidentifier;
    SET @PacienteId = NEWID();
   INSERT INTO [equilibrio-saludable].esdbuser.Persona
        (   
            Id, 
            Nombre, 
            Apellidos, 
            Direccion, 
            Telefono, 
            Email, 
            NroDocumento, 
            Activo, 
            Eliminado, 
            FechaCreacion, 
            FechaModificacion, 
            UsuarioCreacion, 
            UsuarioModificacion)
VALUES( @PacienteId, 
        @Nombres, 
        @Apellidos, 
        '', 
        @Telefono, 
        @Email, 
        @Rut, 
        1, 
        0, 
        GETDATE(), 
        GETDATE(), 
        'SYSTEM', 
        '');

    SELECT Id, 
            Nombre, 
            Apellidos, 
            Direccion, 
            Telefono, 
            Email, 
            NroDocumento, 
            Activo, 
            Eliminado, 
            FechaCreacion, 
            FechaModificacion, 
            UsuarioCreacion, 
            UsuarioModificacion 
    FROM [equilibrio-saludable].esdbuser.Persona 
    WHERE Id = @PacienteId;
   
END;