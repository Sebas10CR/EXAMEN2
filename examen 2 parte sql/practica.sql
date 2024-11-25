CREATE TABLE Usuarios
(
UsuarioID INT PRIMARY KEY IDENTITY(1,1),
Nombre varchar(100)not null,
CorreoElectronico varchar(50)not null,
Telefono varchar(10)not null,

)

CREATE TABLE Tecnicos
(
TecnicoID INT PRIMARY KEY IDENTITY(1,1),
Nombre varchar(100)not null,
Especialidad varchar(50)not null,

)

CREATE TABLE Equipos
(
EquipoID INT PRIMARY KEY IDENTITY(1,1),
TipoEquipo varchar(50)not null,
Modelo varchar(50)not null,
UsuarioID INT FOREIGN KEY REFERENCES Usuarios(UsuarioID),
)
CREATE TABLE Reparaciones
(
ReparacionID INT PRIMARY KEY IDENTITY(1,1),
EquipoID INT FOREIGN KEY REFERENCES Equipos(EquipoID),
FechaSolicitud DATE not null,
Estado varchar(50) not null,
)
CREATE TABLE DetallesReparacion
(
DetalleID INT PRIMARY KEY IDENTITY(1,1),
ReparacionID INT FOREIGN KEY REFERENCES Reparaciones(ReparacionID),
Descripcion TEXT not null,
FechaInicio DATE not null,
FechaFin DATE not null,
)
CREATE TABLE Asignaciones
(
AsignacionID INT PRIMARY KEY IDENTITY(1,1),
ReparacionID INT FOREIGN KEY REFERENCES Reparaciones(ReparacionID),
TecnicoID INT FOREIGN KEY REFERENCES Tecnicos(TecnicoID),
FechaAsignacion DATE,
)



--Mantenimiento Usuarios
---Agregar
create procedure IngresarUsuario
@Nombre varchar (100),
@CorreoElectronico varchar (50),
@Telefono varchar(10)

as
begin
insert into Usuarios values (@nombre, @CorreoElectronico, @Telefono)
end

---Borrar
create procedure BorrarUsuario
@UsuarioID int

as
begin
delete Usuarios where UsuarioID=@UsuarioID
end

---Consultar
create procedure ConsultaUsuarios
as
begin
select *from Usuarios
end

---Modificar
create procedure ModificarUsuario
@UsuarioID int,
@Nombre varchar (100),
@CorreoElectronico varchar (50),
@Telefono varchar (10)

as
begin
update Usuarios set nombre =@nombre, CorreoElectronico=@CorreoElectronico, Telefono=@Telefono where UsuarioID =@UsuarioID
end

--Mantenimiento Tecnicos
---Agregar
create procedure IngresarTecnico
@Nombre varchar (100),
@Especialidad varchar (50)

as
begin
insert into Tecnicos values (@nombre, @Especialidad)
end

---Borrar
create procedure BorrarTecnico
@TecnicoID int

as
begin
delete Tecnicos where TecnicoID=@TecnicoID
end

---Consultar
create procedure ConsultarTecnicos
as
begin
select *from Tecnicos
end

---Modificar
create procedure ModificarTecnico
@TecnicoID int,
@Nombre varchar (100),
@Especialidad varchar (50)

as
begin
update Tecnicos set nombre =@nombre, Especialidad=@Especialidad where TecnicoID=@TecnicoID
end

--Mantenimiento Equipos
---Agregar
create procedure IngresarEquipo
@TipoEquipo varchar (50),
@Modelo varchar (50),
@UsuarioID int

as
begin
insert into Equipos values (@TipoEquipo, @Modelo, @UsuarioID)
end

---Borrar
create procedure BorrarEquipo
@EquipoID int

as
begin
delete Equipos where EquipoID=@EquipoID
end

---Consultar
create procedure ConsultarEquipo
as
begin
select *from Equipos
end

---Modificar
create procedure ModificarEquipo
@EquipoID int,
@TipoEquipo varchar (100),
@Modelo varchar (50),
@UsuarioID int
as
begin
update Equipos set TipoEquipo =@TipoEquipo, Modelo=@Modelo, UsuarioID=@UsuarioID where EquipoID=@EquipoID
end