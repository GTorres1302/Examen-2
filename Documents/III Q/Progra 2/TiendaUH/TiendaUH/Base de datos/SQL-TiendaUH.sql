CREATE DATABASE TiendaUH
GO

USE TiendaUH
GO

CREATE TABLE Usuarios
(
	idUsuario INT IDENTITY(1,1),
	nombre VARCHAR(30) NOT NULL,
	correoElectronico VARCHAR(60) NOT NULL,
	telefono VARCHAR(8) NOT NULL,
	CONSTRAINT pk_idUsuario PRIMARY KEY (idUsuario)
)
GO

CREATE TABLE Tecnicos
(
	idTecnico INT IDENTITY(1,1),
	nombre VARCHAR(30) NOT NULL,
	especialidad VARCHAR(40) NOT NULL,
	CONSTRAINT pk_idTecnico PRIMARY KEY (idTecnico)
)
GO

CREATE TABLE Equipos 
(
	idEquipo INT IDENTITY(1,1),
	tipoEquipo VARCHAR(50) NOT NULL,
	modelo VARCHAR(50) NOT NULL,
	usuarioID INT,
	CONSTRAINT fk_usuarioID FOREIGN KEY (usuarioID) REFERENCES Usuarios (idUsuario),
	CONSTRAINT pk_idEquipo PRIMARY KEY (idEquipo)
)
GO

CREATE TABLE Reparaciones
(
	idReparacion INT IDENTITY(1,1),
	equipoID INT,
	fechaSolicitud DATETIME NOT NULL CONSTRAINT df_fechaSolicitud DEFAULT GETDATE(),
	estado VARCHAR(30) NOT NULL,
	CONSTRAINT fk_equipoID FOREIGN KEY (equipoID) REFERENCES Equipos (idEquipo),
	CONSTRAINT pk_idReparacion PRIMARY KEY (idReparacion)
)
GO

CREATE TABLE tecnicoAsignaciones
(
	idAsignacion INT IDENTITY(1,1),
	reparacionID INT,
	tecnicoID INT,
	fechaAsignacion DATETIME NOT NULL CONSTRAINT df_fechaAsignacion DEFAULT GETDATE(),
	CONSTRAINT fk_reparacionID FOREIGN KEY (reparacionID) REFERENCES Reparaciones (idReparacion),
	CONSTRAINT fk_tecnicoID FOREIGN KEY (tecnicoID) REFERENCES Tecnicos (idTecnico),
	CONSTRAINT pk_idAsignacion PRIMARY KEY (idAsignacion)
)
GO

CREATE TABLE detallesReparacion
(
	idDetalle INT IDENTITY(1,1),
	reparacionID1 INT,
	descripcion VARCHAR(50) NOT NULL,
	fechaInicio DATETIME NOT NULL CONSTRAINT df_fechaInicio DEFAULT GETDATE(),
	fechaFin DATETIME NOT NULL CONSTRAINT df_fechaFin DEFAULT GETDATE(),
	CONSTRAINT fk_reparacionID1 FOREIGN KEY (reparacionID1) REFERENCES Reparaciones (idReparacion),
	CONSTRAINT pk_idDetalle PRIMARY KEY (idDetalle)
)
GO
