create table usuario
(
id int PRIMARY KEY IDENTITY (1, 1),
nombre nvarchar(2000) NOT NULL,
primer_apellido nvarchar(2000) NOT NULL,
segundo_apellido nvarchar(2000),
usuario nvarchar(2000) NOT NULL UNIQUE,
correo nvarchar(2000) NOT NULL UNIQUE,
rol nvarchar(2000) NOT NULL
)
create table consecutivo
(
id int PRIMARY KEY IDENTITY (1, 1),
descripcion nvarchar(2000) NOT NULL,
consecutivo nvarchar(2000) NOT NULL,
prefijo nvarchar(2000),
rango_inicial nvarchar(2000),
rango_final nvarchar(2000),
estado nvarchar(2000),
tipo varchar(2000)
)
create table paises
(
consecutivo nvarchar(2000) PRIMARY KEY,
codigo_pais nvarchar(2000) NOT NULL,
nombre_pais nvarchar(2000) NOT NULL
)
create table aerolineas
(
consecutivo nvarchar(2000) PRIMARY KEY,
nombre_agencia nvarchar(2000) NOT NULL,
imagen_agencia nvarchar(2000) NOT NULL,
codigo_aerolinea nvarchar(2000) NOT NULL
)
create table puertas
(
id int PRIMARY KEY IDENTITY (1, 1),
numero nvarchar(2000) NOT NULL,
detalle nvarchar(2000) NOT NULL,
codigo_aerolinea nvarchar(2000) NOT NULL
)
create table errores
(
codigo int PRIMARY KEY IDENTITY (1, 1),
numero nvarchar(2000) NOT NULL,
fecha nvarchar(2000) NOT NULL,
numero_error nvarchar(2000) NOT NULL,
mensaje_error nvarchar(2000) NOT NULL,
usuario nvarchar(2000) NOT NULL,
FOREIGN KEY (usuario) REFERENCES usuario(usuario)
)
create table bitacora
(
codigo int PRIMARY KEY IDENTITY (1, 1),
numero nvarchar(2000) NOT NULL,
fecha nvarchar(2000) NOT NULL,
codigo_registro nvarchar(2000) NOT NULL,
tipo nvarchar(2000) NOT NULL,
descripcion nvarchar(2000),
usuario nvarchar(2000) NOT NULL,
FOREIGN KEY (usuario) REFERENCES usuario(usuario)
)
create table vuelos
(
consecutivo varchar(2000) PRIMARY KEY,
vuelo nvarchar(2000) NOT NULL,
aerolinea nvarchar(2000) NOT NULL,
procedencia nvarchar(2000) NOT NULL,
fecha nvarchar(2000) NOT NULL,
hora nvarchar(2000) NOT NULL,
estado nvarchar(2000) NOT NULL,
puerta int  NOT NULL,
boletos nvarchar(2000) NOT NULL,
FOREIGN KEY (aerolinea) REFERENCES aerolineas(consecutivo),
FOREIGN KEY (puerta) REFERENCES puertas(id),
)
create table compra
(
compra_id int PRIMARY KEY IDENTITY (1, 1),
usuario nvarchar(2000) NOT NULL,
destino nvarchar(2000) NOT NULL,
boletos nvarchar(2000) NOT NULL,
total nvarchar(2000) NOT NULL,
metodo_pago nvarchar(2000) NOT NULL,
FOREIGN KEY (usuario) REFERENCES usuario(usuario),
FOREIGN KEY (destino) REFERENCES paises(consecutivo),
)
create table reserva
(
compra_id int PRIMARY KEY IDENTITY (1, 1),
usuario nvarchar(2000) NOT NULL,
destino nvarchar(2000) NOT NULL,
boletos nvarchar(2000) NOT NULL,
total nvarchar(2000) NOT NULL,
metodo_pago nvarchar(2000) NOT NULL,
FOREIGN KEY (usuario) REFERENCES usuario(usuario),
FOREIGN KEY (destino) REFERENCES paises(consecutivo),
)