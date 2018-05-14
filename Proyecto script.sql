create database ProyectoFinalAplicada1
go
use ProyectoFinalAplicada1
go
Create Table Usuarios
(
	IdUsuario int primary key identity(1,1),
	Nombre varchar(30),
	Clave varchar(8),
	NombreUsuario varchar(max),
	Fecha date,
	Comentario varchar(max)


);


set dateformat dmy;
insert into Usuarios values('Albert Lopez','123456','root','30/03/2018','Developer')

select * from Usuarios
go

Create Table Productoes
(
	Idproducto int primary key identity(1,1),
	Descripcion varchar(max),
	Precio money,
	DepartamentoId int,
	Cantidad int

);

select * from Productoes
go
create table Departamentoes
(
	DepartamentoId int primary key identity(1,1),
	Nombre varchar(max)

);

drop  table Departamentoes

insert into Departamentoes values('Liquido')

insert into Departamentoes values('Ropa')
SELECT * FROM Departamentoes
truncate table Departamentoes
go

create table Clientes 
(
	IdCliente int primary key identity(1,1),
	Nombre varchar(30),
	Direccion varchar(max),
	Cedula varchar(15),
	Telefono varchar(15)

);

select * from Clientes
go

create table Facturas
(
	FacturaId int primary key identity(1,1),
	Monto money,
	UsuarioId int,
	ClienteId int,
	Fecha date,
	Descripcion varchar(max),
	FormaDePago varchar(max),
	Devuelta money,
	EfectivoRecibido money
);
select * from Facturas
select * from facturas
 drop table Facturas

go

create table FacturaDetalles
(
	Id int primary key identity(1,1),
	FacturaId int,
	ProductoId int,
	Cantidad int,
	Precio decimal,
	Descripcion varchar(max)

)

truncate table FacturaDetalle

select *from FacturaDetalles
select * from facturas



go


create view Facturaciones as 
select c.Id,c.FacturaId,c.ProductoId,c.Cantidad,c.Precio,c.Descripcion, co.Monto,co.UsuarioId,co.ClienteId,co.Fecha, co.FormaDePago,co.Devuelta,co.EfectivoRecibido 
from FacturaDetalles c 
inner join Facturas co on co.FacturaId=c.FacturaId

select * from Facturaciones-