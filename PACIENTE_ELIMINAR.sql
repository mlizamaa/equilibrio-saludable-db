-- Procedimiento almacenado para eliminar un paciente por su ID
CREATE PROCEDURE PACIENTE_ELIMINAR
    @PacienteId                                                 +
    
AS
BEGIN
     UPDATE Paciente
    SET McaEliminado = 1
    WHERE Id = @PacienteId;

END;