create database Aerolineas
go
use Aerolineas

go
create table Clientes(
		ID int primary key identity,
		Nombre varchar (40)

)
go
create table Empleados(
		Nombre varchar (40) primary key,
		Apellido varchar (40),
		Cargo varchar (40)		
)

go
create table Destinos(
		ID int primary key identity (1000,1),
		Avion varchar(40),
		Aerolinea varchar (40),
		Destino varchar(40),
		Piloto varchar (40)	
		
)
go
create table Boletos(
ID int primary key identity,
ID_Cliente int,
Piloto varchar (40),
ID_Destino int
)
go

alter table Boletos add foreign key (ID_Cliente) references Clientes(ID)
alter table Boletos add foreign key (Piloto) references Empleados(Nombre)
alter table Boletos add foreign key (ID_Destino) references Destinos(ID)

