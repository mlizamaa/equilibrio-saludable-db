DROP PROCEDURE IF EXISTS PACIENTE_CREAR;
GO

-- Procedimiento almacenado para crear un nuevo paciente
CREATE PROCEDURE PACIENTE_CREAR
    @Nombre NVARCHAR(128),
    @Apellidos NVARCHAR(128),
    @Rut NVARCHAR(15),
    @Telefono NVARCHAR(20),
    @Email NVARCHAR(128)
AS
BEGIN
    INSERT INTO Paciente (
        Nombre, 
        Apellidos, 
        Rut, 
        Telefono, 
        Email,
        McaEliminado)
    VALUES (
        @Nombre, 
        @Apellidos, 
        @Rut, 
        @Telefono, 
        @Email,
        0);
END;