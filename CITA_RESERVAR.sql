DROP PROCEDURE IF EXISTS CITA_RESERVAR;
GO

CREATE PROCEDURE CITA_RESERVAR
  @CitaId UNIQUEIDENTIFIER,
  @PersonaId UNIQUEIDENTIFIER
AS
BEGIN
   UPDATE [equilibrio-saludable].esdbuser.Cita
   SET  IdPersona = @PersonaId,
        CodEstado = 'RESERVADA',
        FechaModificacion = GETDATE(),
    UsuarioModificacion = 'SYSTEM'
   WHERE Id = @CitaId;

   /*   insert into [equilibrio-saludable].esdbuser.CitaBitacora
     (IdCita,Desscripcion,FechaCreacion,UsuarioCreacion, FechaModificacion, UsuarioModificacion)
     values
     (@CitaId,'RESERVA: ' + CONVERT(VARCHAR(64), @PersonaId),GETDATE(),'SYSTEM', GETDATE(),'SYSTEM');

*/
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
          CodEstado
    FROM [equilibrio-saludable].esdbuser.Cita
    WHERE Id = @CitaId;
END;