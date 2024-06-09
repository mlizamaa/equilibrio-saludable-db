declare @IdAgenda uniqueidentifier
set @IdAgenda = (SELECT top 1 Id FROM esdbuser.Agenda order by FechaCreacion desc)
select cita.*
from esdbuser.Agenda age
inner join esdbuser.Cita cita on cita.IdAgenda = age.Id
where age.Id = @IdAgenda
order by cita.Fecha desc

select * from esdbuser.Persona


insert into esdbuser.Persona (Id, Nombre, Apellidos, NroDocumento,Telefono, Email)
values (newid(), 'Juan', 'Perez', '12345678-9',9888776766, 'mail@mail.com')

