DROP PROCEDURE IF EXISTS PACIENTE_ACTUALIZAR;
GO
-- Procedimiento almacenado para actualizar la información de un paciente
CREATE PROCEDURE PACIENTE_ACTUALIZAR
    @PacienteId INT,
    @Nombre NVARCHAR(128),
    @Apellidos NVARCHAR(128),
    @Rut NVARCHAR(15),
    @Telefono NVARCHAR(20),
    @Email NVARCHAR(128)
AS
BEGIN
    UPDATE Paciente
    SET Nombre = @Nombre,
        Apellidos = @Apellidos,
        Rut = @Rut,
        Telefono = @Telefono,
        Email = @Email
    WHERE Id = @PacienteId;
END;