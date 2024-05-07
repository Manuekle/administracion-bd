--------------------------------------------------------
-- Archivo creado  - domingo-abril-08-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CLIENTES
--------------------------------------------------------

create table "CLIENTES" (
	"CODIGOCLIENTE"           number(*,0),
	"NOMBRECLIENTE"           varchar2(50 byte),
	"NOMBRECONTACTO"          varchar2(30 byte) default null,
	"APELLIDOCONTACTO"        varchar2(30 byte) default null,
	"TELEFONO"                varchar2(15 byte),
	"FAX"                     varchar2(15 byte),
	"LINEADIRECCION1"         varchar2(50 byte),
	"LINEADIRECCION2"         varchar2(50 byte) default null,
	"CIUDAD"                  varchar2(50 byte),
	"REGION"                  varchar2(50 byte) default null,
	"PAIS"                    varchar2(50 byte) default null,
	"CODIGOPOSTAL"            varchar2(10 byte) default null,
	"CODIGOEMPLEADOREPVENTAS" number(*,0) default null,
	"LIMITECREDITO"           number(15,2) default null
)
segment creation immediate
pctfree 10
pctused 40
initrans 1
maxtrans 255
nocompress
logging
	storage ( initial 65536 next 1048576 minextents 1 maxextents 2147483645 pctincrease 0 freelists 1 freelist groups 1 buffer_pool
	default flash_cache default cell_flash_cache default )
tablespace "USERS";
--------------------------------------------------------
--  DDL for Table DETALLEPEDIDOS
--------------------------------------------------------

create table "DETALLEPEDIDOS" (
	"CODIGOPEDIDO"   number(*,0),
	"CODIGOPRODUCTO" varchar2(15 byte),
	"CANTIDAD"       number(*,0),
	"PRECIOUNIDAD"   number(15,2),
	"NUMEROLINEA"    number(*,0)
)
segment creation immediate
pctfree 10
pctused 40
initrans 1
maxtrans 255
nocompress
logging
	storage ( initial 65536 next 1048576 minextents 1 maxextents 2147483645 pctincrease 0 freelists 1 freelist groups 1 buffer_pool
	default flash_cache default cell_flash_cache default )
tablespace "USERS";
--------------------------------------------------------
--  DDL for Table EMPLEADOS
--------------------------------------------------------

create table "EMPLEADOS" (
	"CODIGOEMPLEADO" number(*,0),
	"NOMBRE"         varchar2(50 byte),
	"APELLIDO1"      varchar2(50 byte),
	"APELLIDO2"      varchar2(50 byte) default null,
	"EXTENSION"      varchar2(10 byte),
	"EMAIL"          varchar2(100 byte),
	"CODIGOOFICINA"  varchar2(10 byte),
	"CODIGOJEFE"     number(*,0) default null,
	"PUESTO"         varchar2(50 byte) default null
)
segment creation immediate
pctfree 10
pctused 40
initrans 1
maxtrans 255
nocompress
logging
	storage ( initial 65536 next 1048576 minextents 1 maxextents 2147483645 pctincrease 0 freelists 1 freelist groups 1 buffer_pool
	default flash_cache default cell_flash_cache default )
tablespace "USERS";
--------------------------------------------------------
--  DDL for Table GAMASPRODUCTOS
--------------------------------------------------------

create table "GAMASPRODUCTOS" (
	"GAMA"             varchar2(50 byte),
	"DESCRIPCIONTEXTO" clob,
	"DESCRIPCIONHTML"  clob,
	"IMAGEN"           blob
)
segment creation immediate
pctfree 10
pctused 40
initrans 1
maxtrans 255
nocompress
logging
	storage ( initial 65536 next 1048576 minextents 1 maxextents 2147483645 pctincrease 0 freelists 1 freelist groups 1 buffer_pool
	default flash_cache default cell_flash_cache default )
tablespace "USERS"
		lob ( "DESCRIPCIONTEXTO" ) store as securefile (
			tablespace "USERS"
			enable storage in row
			chunk 8192
			nocache logging
			nocompress
			keep_duplicates
			storage ( initial 106496 next 1048576 minextents 1 maxextents 2147483645 pctincrease 0 buffer_pool default flash_cache default
			cell_flash_cache default )
		)
		lob ( "DESCRIPCIONHTML" ) store as securefile (
			tablespace "USERS"
			enable storage in row
			chunk 8192
			nocache logging
			nocompress
			keep_duplicates
			storage ( initial 106496 next 1048576 minextents 1 maxextents 2147483645 pctincrease 0 buffer_pool default flash_cache default
			cell_flash_cache default )
		)
		lob ( "IMAGEN" ) store as securefile (
			tablespace "USERS"
			enable storage in row
			chunk 8192
			nocache logging
			nocompress
			keep_duplicates
			storage ( initial 106496 next 1048576 minextents 1 maxextents 2147483645 pctincrease 0 buffer_pool default flash_cache default
			cell_flash_cache default )
		);
--------------------------------------------------------
--  DDL for Table OFICINAS
--------------------------------------------------------

create table "OFICINAS" (
	"CODIGOOFICINA"   varchar2(10 byte),
	"CIUDAD"          varchar2(30 byte),
	"PAIS"            varchar2(50 byte),
	"REGION"          varchar2(50 byte) default null,
	"CODIGOPOSTAL"    varchar2(10 byte),
	"TELEFONO"        varchar2(20 byte),
	"LINEADIRECCION1" varchar2(50 byte),
	"LINEADIRECCION2" varchar2(50 byte) default null
)
segment creation immediate
pctfree 10
pctused 40
initrans 1
maxtrans 255
nocompress
logging
	storage ( initial 65536 next 1048576 minextents 1 maxextents 2147483645 pctincrease 0 freelists 1 freelist groups 1 buffer_pool
	default flash_cache default cell_flash_cache default )
tablespace "USERS";
--------------------------------------------------------
--  DDL for Table PAGOS
--------------------------------------------------------

create table "PAGOS" (
	"CODIGOCLIENTE" number(*,0),
	"FORMAPAGO"     varchar2(40 byte),
	"IDTRANSACCION" varchar2(50 byte),
	"FECHAPAGO"     date,
	"CANTIDAD"      number(15,2)
)
segment creation immediate
pctfree 10
pctused 40
initrans 1
maxtrans 255
nocompress
logging
	storage ( initial 65536 next 1048576 minextents 1 maxextents 2147483645 pctincrease 0 freelists 1 freelist groups 1 buffer_pool
	default flash_cache default cell_flash_cache default )
tablespace "USERS";
--------------------------------------------------------
--  DDL for Table PEDIDOS
--------------------------------------------------------

create table "PEDIDOS" (
	"CODIGOPEDIDO"  number(*,0),
	"FECHAPEDIDO"   date,
	"FECHAESPERADA" date,
	"FECHAENTREGA"  date default null,
	"ESTADO"        varchar2(15 byte),
	"COMENTARIOS"   clob,
	"CODIGOCLIENTE" number(*,0)
)
segment creation immediate
pctfree 10
pctused 40
initrans 1
maxtrans 255
nocompress
logging
	storage ( initial 65536 next 1048576 minextents 1 maxextents 2147483645 pctincrease 0 freelists 1 freelist groups 1 buffer_pool
	default flash_cache default cell_flash_cache default )
tablespace "USERS"
	lob ( "COMENTARIOS" ) store as securefile (
		tablespace "USERS"
		enable storage in row
		chunk 8192
		nocache logging
		nocompress
		keep_duplicates
		storage ( initial 106496 next 1048576 minextents 1 maxextents 2147483645 pctincrease 0 buffer_pool default flash_cache default
		cell_flash_cache default )
	);
--------------------------------------------------------
--  DDL for Table PRODUCTOS
--------------------------------------------------------

create table "PRODUCTOS" (
	"CODIGOPRODUCTO"  varchar2(15 byte),
	"NOMBRE"          varchar2(70 byte),
	"GAMA"            varchar2(50 byte),
	"DIMENSIONES"     varchar2(25 byte),
	"PROVEEDOR"       varchar2(50 byte) default null,
	"DESCRIPCION"     clob,
	"CANTIDADENSTOCK" number(*,0),
	"PRECIOVENTA"     number(15,2),
	"PRECIOPROVEEDOR" number(15,2) default null
)
segment creation immediate
pctfree 10
pctused 40
initrans 1
maxtrans 255
nocompress
logging
	storage ( initial 65536 next 1048576 minextents 1 maxextents 2147483645 pctincrease 0 freelists 1 freelist groups 1 buffer_pool
	default flash_cache default cell_flash_cache default )
tablespace "USERS"
	lob ( "DESCRIPCION" ) store as securefile (
		tablespace "USERS"
		enable storage in row
		chunk 8192
		nocache logging
		nocompress
		keep_duplicates
		storage ( initial 106496 next 1048576 minextents 1 maxextents 2147483645 pctincrease 0 buffer_pool default flash_cache default
		cell_flash_cache default )
	);
REM INSERTING into CLIENTES
   SET DEFINE OFF;
insert into clientes (
	codigocliente,
	nombrecliente,
	nombrecontacto,
	apellidocontacto,
	telefono,
	fax,
	lineadireccion1,
	lineadireccion2,
	ciudad,
	region,
	pais,
	codigopostal,
	codigoempleadorepventas,
	limitecredito
) values (
	1,
	'DGPRODUCTIONS GARDEN',
	'Daniel G',
	'GoldFish',
	'5556901745',
	'5556901746',
	'False Street 52 2 A',
	null,
	'San Francisco',
	null,
	'USA',
	'24006',
	19,
	3000
);
insert into clientes (
	codigocliente,
	nombrecliente,
	nombrecontacto,
	apellidocontacto,
	telefono,
	fax,
	lineadireccion1,
	lineadireccion2,
	ciudad,
	region,
	pais,
	codigopostal,
	codigoempleadorepventas,
	limitecredito
) values (
	3,
	'Gardening Associates',
	'Anne',
	'Wright',
	'5557410345',
	'5557410346',
	'Wall-e Avenue',
	null,
	'Miami',
	'Miami',
	'USA',
	'24010',
	19,
	6000
);
insert into clientes (
	codigocliente,
	nombrecliente,
	nombrecontacto,
	apellidocontacto,
	telefono,
	fax,
	lineadireccion1,
	lineadireccion2,
	ciudad,
	region,
	pais,
	codigopostal,
	codigoempleadorepventas,
	limitecredito
) values (
	4,
	'Gerudo Valley',
	'Link',
	'Flaute',
	'5552323129',
	'5552323128',
	'Oaks Avenue n�22',
	null,
	'New York',
	null,
	'USA',
	'85495',
	22,
	12000
);
insert into clientes (
	codigocliente,
	nombrecliente,
	nombrecontacto,
	apellidocontacto,
	telefono,
	fax,
	lineadireccion1,
	lineadireccion2,
	ciudad,
	region,
	pais,
	codigopostal,
	codigoempleadorepventas,
	limitecredito
) values (
	5,
	'Tendo Garden',
	'Akane',
	'Tendo',
	'55591233210',
	'55591233211',
	'Null Street n�69',
	null,
	'Miami',
	null,
	'USA',
	'696969',
	22,
	600000
);
insert into clientes (
	codigocliente,
	nombrecliente,
	nombrecontacto,
	apellidocontacto,
	telefono,
	fax,
	lineadireccion1,
	lineadireccion2,
	ciudad,
	region,
	pais,
	codigopostal,
	codigoempleadorepventas,
	limitecredito
) values (
	6,
	'Lasas S.A.',
	'Antonio',
	'Lasas',
	'34916540145',
	'34914851312',
	'C/Leganes 15',
	null,
	'Fuenlabrada',
	'Madrid',
	'Spain',
	'28945',
	8,
	154310
);
insert into clientes (
	codigocliente,
	nombrecliente,
	nombrecontacto,
	apellidocontacto,
	telefono,
	fax,
	lineadireccion1,
	lineadireccion2,
	ciudad,
	region,
	pais,
	codigopostal,
	codigoempleadorepventas,
	limitecredito
) values (
	7,
	'Beragua',
	'Jose',
	'Bermejo',
	'654987321',
	'916549872',
	'C/pintor segundo',
	'Getafe',
	'Madrid',
	'Madrid',
	'Espa�a',
	'28942',
	11,
	20000
);
insert into clientes (
	codigocliente,
	nombrecliente,
	nombrecontacto,
	apellidocontacto,
	telefono,
	fax,
	lineadireccion1,
	lineadireccion2,
	ciudad,
	region,
	pais,
	codigopostal,
	codigoempleadorepventas,
	limitecredito
) values (
	8,
	'Club Golf Puerta del hierro',
	'Paco',
	'Lopez',
	'62456810',
	'919535678',
	'C/sinesio delgado',
	'Madrid',
	'Madrid',
	'Madrid',
	'Espa�a',
	'28930',
	11,
	40000
);
insert into clientes (
	codigocliente,
	nombrecliente,
	nombrecontacto,
	apellidocontacto,
	telefono,
	fax,
	lineadireccion1,
	lineadireccion2,
	ciudad,
	region,
	pais,
	codigopostal,
	codigoempleadorepventas,
	limitecredito
) values (
	9,
	'Naturagua',
	'Guillermo',
	'Rengifo',
	'689234750',
	'916428956',
	'C/majadahonda',
	'Boadilla',
	'Madrid',
	'Madrid',
	'Espa�a',
	'28947',
	11,
	32000
);
insert into clientes (
	codigocliente,
	nombrecliente,
	nombrecontacto,
	apellidocontacto,
	telefono,
	fax,
	lineadireccion1,
	lineadireccion2,
	ciudad,
	region,
	pais,
	codigopostal,
	codigoempleadorepventas,
	limitecredito
) values (
	10,
	'DaraDistribuciones',
	'David',
	'Serrano',
	'675598001',
	'916421756',
	'C/azores',
	'Fuenlabrada',
	'Madrid',
	'Madrid',
	'Espa�a',
	'28946',
	11,
	50000
);
insert into clientes (
	codigocliente,
	nombrecliente,
	nombrecontacto,
	apellidocontacto,
	telefono,
	fax,
	lineadireccion1,
	lineadireccion2,
	ciudad,
	region,
	pais,
	codigopostal,
	codigoempleadorepventas,
	limitecredito
) values (
	11,
	'Madrile�a de riegos',
	'Jose',
	'Taca�o',
	'655983045',
	'916689215',
	'C/Laga�as',
	'Fuenlabrada',
	'Madrid',
	'Madrid',
	'Espa�a',
	'28943',
	11,
	20000
);
insert into clientes (
	codigocliente,
	nombrecliente,
	nombrecontacto,
	apellidocontacto,
	telefono,
	fax,
	lineadireccion1,
	lineadireccion2,
	ciudad,
	region,
	pais,
	codigopostal,
	codigoempleadorepventas,
	limitecredito
) values (
	12,
	'Lasas S.A.',
	'Antonio',
	'Lasas',
	'34916540145',
	'34914851312',
	'C/Leganes 15',
	null,
	'Fuenlabrada',
	'Madrid',
	'Spain',
	'28945',
	8,
	154310
);
insert into clientes (
	codigocliente,
	nombrecliente,
	nombrecontacto,
	apellidocontacto,
	telefono,
	fax,
	lineadireccion1,
	lineadireccion2,
	ciudad,
	region,
	pais,
	codigopostal,
	codigoempleadorepventas,
	limitecredito
) values (
	13,
	'Camunas Jardines S.L.',
	'Pedro',
	'Camunas',
	'34914873241',
	'34914871541',
	'C/Virgenes 45',
	'C/Princesas 2 1�B',
	'San Lorenzo del Escorial',
	'Madrid',
	'Spain',
	'28145',
	8,
	16481
);
insert into clientes (
	codigocliente,
	nombrecliente,
	nombrecontacto,
	apellidocontacto,
	telefono,
	fax,
	lineadireccion1,
	lineadireccion2,
	ciudad,
	region,
	pais,
	codigopostal,
	codigoempleadorepventas,
	limitecredito
) values (
	14,
	'Dardena S.A.',
	'Juan',
	'Rodriguez',
	'34912453217',
	'34912484764',
	'C/Nueva York 74',
	null,
	'Madrid',
	'Madrid',
	'Spain',
	'28003',
	8,
	321000
);
insert into clientes (
	codigocliente,
	nombrecliente,
	nombrecontacto,
	apellidocontacto,
	telefono,
	fax,
	lineadireccion1,
	lineadireccion2,
	ciudad,
	region,
	pais,
	codigopostal,
	codigoempleadorepventas,
	limitecredito
) values (
	15,
	'Jardin de Flores',
	'Javier',
	'Villar',
	'654865643',
	'914538776',
	'C/ O�a 34',
	null,
	'Madrid',
	'Madrid',
	'Espa�a',
	'28950',
	30,
	40000
);
insert into clientes (
	codigocliente,
	nombrecliente,
	nombrecontacto,
	apellidocontacto,
	telefono,
	fax,
	lineadireccion1,
	lineadireccion2,
	ciudad,
	region,
	pais,
	codigopostal,
	codigoempleadorepventas,
	limitecredito
) values (
	16,
	'Flores Marivi',
	'Maria',
	'Rodriguez',
	'666555444',
	'912458657',
	'C/Leganes24',
	null,
	'Fuenlabrada',
	'Madrid',
	'Espa�a',
	'28945',
	5,
	1500
);
insert into clientes (
	codigocliente,
	nombrecliente,
	nombrecontacto,
	apellidocontacto,
	telefono,
	fax,
	lineadireccion1,
	lineadireccion2,
	ciudad,
	region,
	pais,
	codigopostal,
	codigoempleadorepventas,
	limitecredito
) values (
	17,
	'Flowers, S.A',
	'Beatriz',
	'Fernandez',
	'698754159',
	'978453216',
	'C/Luis Salquillo4',
	null,
	'Montornes del valles',
	'Barcelona',
	'Espa�a',
	'24586',
	5,
	3500
);
insert into clientes (
	codigocliente,
	nombrecliente,
	nombrecontacto,
	apellidocontacto,
	telefono,
	fax,
	lineadireccion1,
	lineadireccion2,
	ciudad,
	region,
	pais,
	codigopostal,
	codigoempleadorepventas,
	limitecredito
) values (
	18,
	'Naturajardin',
	'Victoria',
	'Cruz',
	'612343529',
	'916548735',
	'Plaza Magall�n 15',
	null,
	'Madrid',
	'Madrid',
	'Espa�a',
	'28011',
	30,
	5050
);
insert into clientes (
	codigocliente,
	nombrecliente,
	nombrecontacto,
	apellidocontacto,
	telefono,
	fax,
	lineadireccion1,
	lineadireccion2,
	ciudad,
	region,
	pais,
	codigopostal,
	codigoempleadorepventas,
	limitecredito
) values (
	19,
	'Golf S.A.',
	'Luis',
	'Martinez',
	'916458762',
	'912354475',
	'C/Estancado',
	null,
	'Santa cruz de Tenerife',
	'Islas Canarias',
	'Espa�a',
	'38297',
	12,
	30000
);
insert into clientes (
	codigocliente,
	nombrecliente,
	nombrecontacto,
	apellidocontacto,
	telefono,
	fax,
	lineadireccion1,
	lineadireccion2,
	ciudad,
	region,
	pais,
	codigopostal,
	codigoempleadorepventas,
	limitecredito
) values (
	20,
	'AYMERICH GOLF MANAGEMENT, SL',
	'Mario',
	'Suarez',
	'964493072',
	'964493063',
	'C/Letardo',
	null,
	'Barcelona',
	'Catalu�a',
	'Espa�a',
	'12320',
	12,
	20000
);
insert into clientes (
	codigocliente,
	nombrecliente,
	nombrecontacto,
	apellidocontacto,
	telefono,
	fax,
	lineadireccion1,
	lineadireccion2,
	ciudad,
	region,
	pais,
	codigopostal,
	codigoempleadorepventas,
	limitecredito
) values (
	21,
	'Aloha',
	'Cristian',
	'Rodrigez',
	'916485852',
	'914489898',
	'C/Roman 3',
	null,
	'Canarias',
	'Canarias',
	'Espa�a',
	'35488',
	12,
	50000
);
insert into clientes (
	codigocliente,
	nombrecliente,
	nombrecontacto,
	apellidocontacto,
	telefono,
	fax,
	lineadireccion1,
	lineadireccion2,
	ciudad,
	region,
	pais,
	codigopostal,
	codigoempleadorepventas,
	limitecredito
) values (
	22,
	'El Prat',
	'Francisco',
	'Camacho',
	'916882323',
	'916493211',
	'Avenida Tibidabo',
	null,
	' Barcelona',
	'Catalu�a',
	'Espa�a',
	'12320',
	12,
	30000
);
insert into clientes (
	codigocliente,
	nombrecliente,
	nombrecontacto,
	apellidocontacto,
	telefono,
	fax,
	lineadireccion1,
	lineadireccion2,
	ciudad,
	region,
	pais,
	codigopostal,
	codigoempleadorepventas,
	limitecredito
) values (
	23,
	'Sotogrande',
	'Maria',
	'Santillana',
	'915576622',
	'914825645',
	'C/Paseo del Parque',
	null,
	'Sotogrande',
	'Cadiz',
	'Espa�a',
	'11310',
	12,
	60000
);
insert into clientes (
	codigocliente,
	nombrecliente,
	nombrecontacto,
	apellidocontacto,
	telefono,
	fax,
	lineadireccion1,
	lineadireccion2,
	ciudad,
	region,
	pais,
	codigopostal,
	codigoempleadorepventas,
	limitecredito
) values (
	24,
	'Vivero Humanes',
	'Federico',
	'Gomez',
	'654987690',
	'916040875',
	'C/Miguel Echegaray 54',
	null,
	'Humanes',
	'Madrid',
	'Espa�a',
	'28970',
	30,
	7430
);
insert into clientes (
	codigocliente,
	nombrecliente,
	nombrecontacto,
	apellidocontacto,
	telefono,
	fax,
	lineadireccion1,
	lineadireccion2,
	ciudad,
	region,
	pais,
	codigopostal,
	codigoempleadorepventas,
	limitecredito
) values (
	25,
	'Fuenla City',
	'Tony',
	'Mu�oz Mena',
	'675842139',
	'915483754',
	'C/Callo 52',
	null,
	'Fuenlabrada',
	'Madrid',
	'Espa�a',
	'28574',
	5,
	4500
);
insert into clientes (
	codigocliente,
	nombrecliente,
	nombrecontacto,
	apellidocontacto,
	telefono,
	fax,
	lineadireccion1,
	lineadireccion2,
	ciudad,
	region,
	pais,
	codigopostal,
	codigoempleadorepventas,
	limitecredito
) values (
	26,
	'Jardines y Mansiones CACTUS SL',
	'Eva Mar�a',
	'S�nchez',
	'916877445',
	'914477777',
	'Pol�gono Industrial Maspalomas, N�52',
	'M�stoles',
	'Madrid',
	'Madrid',
	'Espa�a',
	'29874',
	9,
	76000
);
insert into clientes (
	codigocliente,
	nombrecliente,
	nombrecontacto,
	apellidocontacto,
	telefono,
	fax,
	lineadireccion1,
	lineadireccion2,
	ciudad,
	region,
	pais,
	codigopostal,
	codigoempleadorepventas,
	limitecredito
) values (
	27,
	'Jardiner�as Mat�as SL',
	'Mat�as',
	'San Mart�n',
	'916544147',
	'917897474',
	'C/Francisco Arce, N�44',
	'Bustarviejo',
	'Madrid',
	'Madrid',
	'Espa�a',
	'37845',
	9,
	100500
);
insert into clientes (
	codigocliente,
	nombrecliente,
	nombrecontacto,
	apellidocontacto,
	telefono,
	fax,
	lineadireccion1,
	lineadireccion2,
	ciudad,
	region,
	pais,
	codigopostal,
	codigoempleadorepventas,
	limitecredito
) values (
	28,
	'Agrojardin',
	'Benito',
	'Lopez',
	'675432926',
	'916549264',
	'C/Mar Caspio 43',
	null,
	'Getafe',
	'Madrid',
	'Espa�a',
	'28904',
	30,
	8040
);
insert into clientes (
	codigocliente,
	nombrecliente,
	nombrecontacto,
	apellidocontacto,
	telefono,
	fax,
	lineadireccion1,
	lineadireccion2,
	ciudad,
	region,
	pais,
	codigopostal,
	codigoempleadorepventas,
	limitecredito
) values (
	29,
	'Top Campo',
	'Joseluis',
	'Sanchez',
	'685746512',
	'974315924',
	'C/Ibiza 32',
	null,
	'Humanes',
	'Madrid',
	'Espa�a',
	'28574',
	5,
	5500
);
insert into clientes (
	codigocliente,
	nombrecliente,
	nombrecontacto,
	apellidocontacto,
	telefono,
	fax,
	lineadireccion1,
	lineadireccion2,
	ciudad,
	region,
	pais,
	codigopostal,
	codigoempleadorepventas,
	limitecredito
) values (
	30,
	'Jardineria Sara',
	'Sara',
	'Marquez',
	'675124537',
	'912475843',
	'C/Lima 1',
	null,
	'Fenlabrada',
	'Madrid',
	'Espa�a',
	'27584',
	5,
	7500
);
insert into clientes (
	codigocliente,
	nombrecliente,
	nombrecontacto,
	apellidocontacto,
	telefono,
	fax,
	lineadireccion1,
	lineadireccion2,
	ciudad,
	region,
	pais,
	codigopostal,
	codigoempleadorepventas,
	limitecredito
) values (
	31,
	'Campohermoso',
	'Luis',
	'Jimenez',
	'645925376',
	'916159116',
	'C/Peru 78',
	null,
	'Fuenlabrada',
	'Madrid',
	'Espa�a',
	'28945',
	30,
	3250
);
insert into clientes (
	codigocliente,
	nombrecliente,
	nombrecontacto,
	apellidocontacto,
	telefono,
	fax,
	lineadireccion1,
	lineadireccion2,
	ciudad,
	region,
	pais,
	codigopostal,
	codigoempleadorepventas,
	limitecredito
) values (
	32,
	'france telecom',
	'Fraçois',
	'Toulou',
	'(33)5120578961',
	'(33)5120578961',
	'6 place d Alleray 15ème',
	null,
	'Paris',
	null,
	'France',
	'75010',
	16,
	10000
);
insert into clientes (
	codigocliente,
	nombrecliente,
	nombrecontacto,
	apellidocontacto,
	telefono,
	fax,
	lineadireccion1,
	lineadireccion2,
	ciudad,
	region,
	pais,
	codigopostal,
	codigoempleadorepventas,
	limitecredito
) values (
	33,
	'Mus�e du Louvre',
	'Pierre',
	'Delacroux',
	'(33)0140205050',
	'(33)0140205442',
	'Quai du Louvre',
	null,
	'Paris',
	null,
	'France',
	'75058',
	16,
	30000
);
insert into clientes (
	codigocliente,
	nombrecliente,
	nombrecontacto,
	apellidocontacto,
	telefono,
	fax,
	lineadireccion1,
	lineadireccion2,
	ciudad,
	region,
	pais,
	codigopostal,
	codigoempleadorepventas,
	limitecredito
) values (
	35,
	'Tutifruti S.A',
	'Jacob',
	'Jones',
	'2 9261-2433',
	'2 9283-1695',
	'level 24, St. Martins Tower.-31 Market St.',
	null,
	'Sydney',
	'Nueva Gales del Sur',
	'Australia',
	'2000',
	31,
	10000
);
insert into clientes (
	codigocliente,
	nombrecliente,
	nombrecontacto,
	apellidocontacto,
	telefono,
	fax,
	lineadireccion1,
	lineadireccion2,
	ciudad,
	region,
	pais,
	codigopostal,
	codigoempleadorepventas,
	limitecredito
) values (
	36,
	'FLORES S.L.',
	'Antonio',
	'Romero',
	'654352981',
	'685249700',
	'Avenida Espa�a',
	null,
	'Madrid',
	'Fuenlabrada',
	'Espa�a',
	'29643',
	18,
	6000
);
insert into clientes (
	codigocliente,
	nombrecliente,
	nombrecontacto,
	apellidocontacto,
	telefono,
	fax,
	lineadireccion1,
	lineadireccion2,
	ciudad,
	region,
	pais,
	codigopostal,
	codigoempleadorepventas,
	limitecredito
) values (
	37,
	'THE MAGIC GARDEN',
	'Richard',
	'Mcain',
	'926523468',
	'9364875882',
	'Lihgting Park',
	null,
	'London',
	'London',
	'United Kingdom',
	'65930',
	18,
	10000
);
insert into clientes (
	codigocliente,
	nombrecliente,
	nombrecontacto,
	apellidocontacto,
	telefono,
	fax,
	lineadireccion1,
	lineadireccion2,
	ciudad,
	region,
	pais,
	codigopostal,
	codigoempleadorepventas,
	limitecredito
) values (
	38,
	'El Jardin Viviente S.L',
	'Justin',
	'Smith',
	'2 8005-7161',
	'2 8005-7162',
	'176 Cumberland Street The rocks',
	null,
	'Sydney',
	'Nueva Gales del Sur',
	'Australia',
	'2003',
	31,
	8000
);
REM INSERTING into DETALLEPEDIDOS
   SET DEFINE OFF;
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	1,
	'FR-67',
	10,
	70,
	3
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	1,
	'OR-127',
	40,
	4,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	1,
	'OR-141',
	25,
	4,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	1,
	'OR-241',
	15,
	19,
	4
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	1,
	'OR-99',
	23,
	14,
	5
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	2,
	'FR-4',
	3,
	29,
	6
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	2,
	'FR-40',
	7,
	8,
	7
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	2,
	'OR-140',
	50,
	4,
	3
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	2,
	'OR-141',
	20,
	5,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	2,
	'OR-159',
	12,
	6,
	5
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	2,
	'OR-227',
	67,
	64,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	2,
	'OR-247',
	5,
	462,
	4
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	3,
	'FR-48',
	120,
	9,
	6
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	3,
	'OR-122',
	32,
	5,
	4
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	3,
	'OR-123',
	11,
	5,
	5
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	3,
	'OR-213',
	30,
	266,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	3,
	'OR-217',
	15,
	65,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	3,
	'OR-218',
	24,
	25,
	3
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	4,
	'FR-31',
	12,
	8,
	7
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	4,
	'FR-34',
	42,
	8,
	6
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	4,
	'FR-40',
	42,
	9,
	8
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	4,
	'OR-152',
	3,
	6,
	5
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	4,
	'OR-155',
	4,
	6,
	3
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	4,
	'OR-156',
	17,
	9,
	4
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	4,
	'OR-157',
	38,
	10,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	4,
	'OR-222',
	21,
	59,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	8,
	'FR-106',
	3,
	11,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	8,
	'FR-108',
	1,
	32,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	8,
	'FR-11',
	10,
	100,
	3
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	9,
	'AR-001',
	80,
	1,
	3
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	9,
	'AR-008',
	450,
	1,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	9,
	'FR-106',
	80,
	8,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	9,
	'FR-69',
	15,
	91,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	10,
	'FR-82',
	5,
	70,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	10,
	'FR-91',
	30,
	75,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	10,
	'OR-234',
	5,
	64,
	3
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	11,
	'AR-006',
	180,
	1,
	3
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	11,
	'OR-247',
	80,
	8,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	12,
	'AR-009',
	290,
	1,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	13,
	'11679',
	5,
	14,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	13,
	'21636',
	12,
	14,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	13,
	'FR-11',
	5,
	100,
	3
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	14,
	'FR-100',
	8,
	11,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	14,
	'FR-13',
	13,
	57,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	15,
	'FR-84',
	4,
	13,
	3
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	15,
	'OR-101',
	2,
	6,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	15,
	'OR-156',
	6,
	10,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	15,
	'OR-203',
	9,
	10,
	4
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	16,
	'30310',
	12,
	12,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	16,
	'FR-36',
	10,
	9,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	17,
	'11679',
	5,
	14,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	17,
	'22225',
	5,
	12,
	3
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	17,
	'FR-37',
	5,
	9,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	17,
	'FR-64',
	5,
	22,
	4
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	17,
	'OR-136',
	5,
	18,
	5
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	18,
	'22225',
	4,
	12,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	18,
	'FR-22',
	2,
	4,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	18,
	'OR-159',
	10,
	6,
	3
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	19,
	'30310',
	9,
	12,
	5
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	19,
	'FR-23',
	6,
	8,
	4
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	19,
	'FR-75',
	1,
	32,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	19,
	'FR-84',
	5,
	13,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	19,
	'OR-208',
	20,
	4,
	3
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	20,
	'11679',
	14,
	14,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	20,
	'30310',
	8,
	12,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	21,
	'21636',
	5,
	14,
	3
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	21,
	'FR-18',
	22,
	4,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	21,
	'FR-53',
	3,
	8,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	22,
	'OR-240',
	1,
	6,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	23,
	'AR-002',
	110,
	1,
	4
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	23,
	'FR-107',
	50,
	22,
	3
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	23,
	'FR-85',
	4,
	70,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	23,
	'OR-249',
	30,
	5,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	24,
	'22225',
	3,
	15,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	24,
	'FR-1',
	4,
	7,
	4
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	24,
	'FR-23',
	2,
	7,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	24,
	'OR-241',
	10,
	20,
	3
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	25,
	'FR-77',
	15,
	69,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	25,
	'FR-9',
	4,
	30,
	3
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	25,
	'FR-94',
	10,
	30,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	26,
	'FR-15',
	9,
	25,
	3
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	26,
	'OR-188',
	4,
	25,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	26,
	'OR-218',
	14,
	25,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	27,
	'OR-101',
	22,
	6,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	27,
	'OR-102',
	22,
	6,
	3
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	27,
	'OR-186',
	40,
	6,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	28,
	'FR-11',
	8,
	99,
	3
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	28,
	'OR-213',
	3,
	266,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	28,
	'OR-247',
	1,
	462,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	29,
	'FR-82',
	4,
	70,
	4
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	29,
	'FR-9',
	4,
	28,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	29,
	'FR-94',
	20,
	31,
	5
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	29,
	'OR-129',
	2,
	111,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	29,
	'OR-160',
	10,
	9,
	3
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	30,
	'AR-004',
	10,
	1,
	6
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	30,
	'FR-108',
	2,
	32,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	30,
	'FR-12',
	2,
	19,
	3
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	30,
	'FR-72',
	4,
	31,
	5
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	30,
	'FR-89',
	10,
	45,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	30,
	'OR-120',
	5,
	5,
	4
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	31,
	'AR-009',
	25,
	2,
	3
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	31,
	'FR-102',
	1,
	20,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	31,
	'FR-4',
	6,
	29,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	32,
	'11679',
	1,
	14,
	4
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	32,
	'21636',
	4,
	15,
	5
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	32,
	'22225',
	1,
	15,
	3
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	32,
	'OR-128',
	29,
	100,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	32,
	'OR-193',
	5,
	20,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	33,
	'FR-17',
	423,
	2,
	4
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	33,
	'FR-29',
	120,
	8,
	3
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	33,
	'OR-214',
	212,
	10,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	33,
	'OR-247',
	150,
	462,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	34,
	'FR-3',
	56,
	7,
	4
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	34,
	'FR-7',
	12,
	29,
	3
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	34,
	'OR-172',
	20,
	18,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	34,
	'OR-174',
	24,
	18,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	35,
	'21636',
	12,
	14,
	4
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	35,
	'FR-47',
	55,
	8,
	3
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	35,
	'OR-165',
	3,
	10,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	35,
	'OR-181',
	36,
	10,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	35,
	'OR-225',
	72,
	10,
	5
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	36,
	'30310',
	4,
	12,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	36,
	'FR-1',
	2,
	7,
	3
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	36,
	'OR-147',
	6,
	7,
	4
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	36,
	'OR-203',
	1,
	12,
	5
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	36,
	'OR-99',
	15,
	13,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	37,
	'FR-105',
	4,
	70,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	37,
	'FR-57',
	203,
	8,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	37,
	'OR-176',
	38,
	10,
	3
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	38,
	'11679',
	5,
	14,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	38,
	'21636',
	2,
	14,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	39,
	'22225',
	3,
	12,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	39,
	'30310',
	6,
	12,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	40,
	'AR-001',
	4,
	1,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	40,
	'AR-002',
	8,
	1,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	41,
	'AR-003',
	5,
	1,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	41,
	'AR-004',
	5,
	1,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	42,
	'AR-005',
	3,
	1,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	42,
	'AR-006',
	1,
	1,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	43,
	'AR-007',
	9,
	1,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	44,
	'AR-008',
	5,
	1,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	45,
	'AR-009',
	6,
	1,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	45,
	'AR-010',
	4,
	1,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	46,
	'FR-1',
	4,
	7,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	46,
	'FR-10',
	8,
	7,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	47,
	'FR-100',
	9,
	11,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	47,
	'FR-101',
	5,
	13,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	48,
	'FR-102',
	1,
	18,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	48,
	'FR-103',
	1,
	25,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	48,
	'OR-234',
	50,
	64,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	48,
	'OR-236',
	45,
	49,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	48,
	'OR-237',
	50,
	19,
	3
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	50,
	'OR-225',
	12,
	10,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	50,
	'OR-226',
	15,
	38,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	50,
	'OR-227',
	44,
	64,
	3
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	51,
	'OR-209',
	50,
	10,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	51,
	'OR-210',
	80,
	39,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	51,
	'OR-211',
	70,
	59,
	3
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	53,
	'FR-2',
	1,
	7,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	53,
	'FR-85',
	1,
	70,
	3
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	53,
	'FR-86',
	2,
	11,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	53,
	'OR-116',
	6,
	7,
	4
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	54,
	'11679',
	3,
	14,
	3
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	54,
	'FR-100',
	45,
	10,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	54,
	'FR-18',
	5,
	4,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	54,
	'FR-79',
	3,
	22,
	4
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	54,
	'OR-116',
	8,
	7,
	6
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	54,
	'OR-123',
	3,
	5,
	5
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	54,
	'OR-168',
	2,
	10,
	7
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	55,
	'OR-115',
	9,
	7,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	55,
	'OR-213',
	2,
	266,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	55,
	'OR-227',
	6,
	64,
	5
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	55,
	'OR-243',
	2,
	64,
	4
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	55,
	'OR-247',
	1,
	462,
	3
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	56,
	'OR-129',
	1,
	115,
	5
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	56,
	'OR-130',
	10,
	18,
	6
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	56,
	'OR-179',
	1,
	6,
	3
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	56,
	'OR-196',
	3,
	10,
	4
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	56,
	'OR-207',
	4,
	4,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	56,
	'OR-250',
	3,
	10,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	57,
	'FR-69',
	6,
	91,
	4
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	57,
	'FR-81',
	3,
	49,
	3
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	57,
	'FR-84',
	2,
	13,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	57,
	'FR-94',
	6,
	9,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	58,
	'OR-102',
	65,
	18,
	3
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	58,
	'OR-139',
	80,
	4,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	58,
	'OR-172',
	69,
	15,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	58,
	'OR-177',
	150,
	15,
	4
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	74,
	'FR-67',
	15,
	70,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	74,
	'OR-227',
	34,
	64,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	74,
	'OR-247',
	42,
	8,
	3
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	75,
	'AR-006',
	60,
	1,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	75,
	'FR-87',
	24,
	22,
	3
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	75,
	'OR-157',
	46,
	10,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	76,
	'AR-009',
	250,
	1,
	5
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	76,
	'FR-79',
	40,
	22,
	3
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	76,
	'FR-87',
	24,
	22,
	4
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	76,
	'FR-94',
	35,
	9,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	76,
	'OR-196',
	25,
	10,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	77,
	'22225',
	34,
	12,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	77,
	'30310',
	15,
	12,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	78,
	'FR-53',
	25,
	8,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	78,
	'FR-85',
	56,
	70,
	3
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	78,
	'OR-157',
	42,
	10,
	4
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	78,
	'OR-208',
	30,
	4,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	79,
	'OR-240',
	50,
	6,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	80,
	'FR-11',
	40,
	100,
	3
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	80,
	'FR-36',
	47,
	9,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	80,
	'OR-136',
	75,
	18,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	81,
	'OR-208',
	30,
	4,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	82,
	'OR-227',
	34,
	64,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	83,
	'OR-208',
	30,
	4,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	89,
	'FR-108',
	3,
	32,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	89,
	'FR-3',
	15,
	7,
	6
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	89,
	'FR-42',
	12,
	8,
	4
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	89,
	'FR-66',
	5,
	49,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	89,
	'FR-87',
	4,
	22,
	3
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	89,
	'OR-157',
	8,
	10,
	5
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	90,
	'AR-001',
	19,
	1,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	90,
	'AR-002',
	10,
	1,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	90,
	'AR-003',
	12,
	1,
	3
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	91,
	'FR-100',
	52,
	11,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	91,
	'FR-101',
	14,
	13,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	91,
	'FR-102',
	35,
	18,
	3
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	92,
	'FR-108',
	12,
	23,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	92,
	'FR-11',
	20,
	100,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	92,
	'FR-12',
	30,
	21,
	3
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	93,
	'FR-54',
	25,
	9,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	93,
	'FR-58',
	51,
	11,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	93,
	'FR-60',
	3,
	32,
	3
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	94,
	'11679',
	12,
	14,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	94,
	'FR-11',
	33,
	100,
	3
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	94,
	'FR-4',
	79,
	29,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	95,
	'FR-10',
	9,
	7,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	95,
	'FR-75',
	6,
	32,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	95,
	'FR-82',
	5,
	70,
	3
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	96,
	'FR-43',
	6,
	8,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	96,
	'FR-6',
	16,
	7,
	4
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	96,
	'FR-71',
	10,
	22,
	3
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	96,
	'FR-90',
	4,
	70,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	97,
	'FR-41',
	12,
	8,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	97,
	'FR-54',
	14,
	9,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	97,
	'OR-156',
	10,
	10,
	3
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	98,
	'FR-33',
	14,
	8,
	4
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	98,
	'FR-56',
	16,
	8,
	3
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	98,
	'FR-60',
	8,
	32,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	98,
	'FR-8',
	18,
	6,
	5
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	98,
	'FR-85',
	6,
	70,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	99,
	'OR-157',
	15,
	10,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	99,
	'OR-227',
	30,
	64,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	100,
	'FR-87',
	20,
	22,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	100,
	'FR-94',
	40,
	9,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	101,
	'AR-006',
	50,
	1,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	101,
	'AR-009',
	159,
	1,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	102,
	'22225',
	32,
	12,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	102,
	'30310',
	23,
	12,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	103,
	'FR-53',
	12,
	8,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	103,
	'OR-208',
	52,
	4,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	104,
	'FR-85',
	9,
	70,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	104,
	'OR-157',
	113,
	10,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	105,
	'OR-227',
	21,
	64,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	105,
	'OR-240',
	27,
	6,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	106,
	'AR-009',
	231,
	1,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	106,
	'OR-136',
	47,
	18,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	107,
	'30310',
	143,
	12,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	107,
	'FR-11',
	15,
	100,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	108,
	'FR-53',
	53,
	8,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	108,
	'OR-208',
	59,
	4,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	109,
	'FR-22',
	8,
	4,
	5
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	109,
	'FR-36',
	12,
	9,
	3
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	109,
	'FR-45',
	14,
	8,
	4
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	109,
	'OR-104',
	20,
	10,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	109,
	'OR-119',
	10,
	5,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	109,
	'OR-125',
	3,
	5,
	6
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	109,
	'OR-130',
	2,
	18,
	7
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	110,
	'AR-010',
	6,
	1,
	3
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	110,
	'FR-1',
	14,
	7,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	110,
	'FR-16',
	1,
	45,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	116,
	'21636',
	5,
	14,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	116,
	'AR-001',
	32,
	1,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	116,
	'AR-005',
	18,
	1,
	5
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	116,
	'FR-33',
	13,
	8,
	3
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	116,
	'OR-200',
	10,
	4,
	4
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	117,
	'FR-78',
	2,
	15,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	117,
	'FR-80',
	1,
	32,
	3
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	117,
	'OR-146',
	17,
	4,
	2
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	117,
	'OR-179',
	4,
	6,
	4
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	128,
	'AR-004',
	15,
	1,
	1
);
insert into detallepedidos (
	codigopedido,
	codigoproducto,
	cantidad,
	preciounidad,
	numerolinea
) values (
	128,
	'OR-150',
	18,
	2,
	2
);
REM INSERTING into EMPLEADOS
   SET DEFINE OFF;
insert into empleados (
	codigoempleado,
	nombre,
	apellido1,
	apellido2,
	extension,
	email,
	codigooficina,
	codigojefe,
	puesto
) values (
	1,
	'Marcos',
	'Maga�a',
	'Perez',
	'3897',
	'marcos@jardineria.es',
	'TAL-ES',
	null,
	'Director General'
);
insert into empleados (
	codigoempleado,
	nombre,
	apellido1,
	apellido2,
	extension,
	email,
	codigooficina,
	codigojefe,
	puesto
) values (
	2,
	'Ruben',
	'L�pez',
	'Martinez',
	'2899',
	'rlopez@jardineria.es',
	'TAL-ES',
	1,
	'Subdirector Marketing'
);
insert into empleados (
	codigoempleado,
	nombre,
	apellido1,
	apellido2,
	extension,
	email,
	codigooficina,
	codigojefe,
	puesto
) values (
	3,
	'Alberto',
	'Soria',
	'Carrasco',
	'2837',
	'asoria@jardineria.es',
	'TAL-ES',
	2,
	'Subdirector Ventas'
);
insert into empleados (
	codigoempleado,
	nombre,
	apellido1,
	apellido2,
	extension,
	email,
	codigooficina,
	codigojefe,
	puesto
) values (
	4,
	'Maria',
	'Sol�s',
	'Jerez',
	'2847',
	'msolis@jardineria.es',
	'TAL-ES',
	2,
	'Secretaria'
);
insert into empleados (
	codigoempleado,
	nombre,
	apellido1,
	apellido2,
	extension,
	email,
	codigooficina,
	codigojefe,
	puesto
) values (
	5,
	'Felipe',
	'Rosas',
	'Marquez',
	'2844',
	'frosas@jardineria.es',
	'TAL-ES',
	3,
	'Representante Ventas'
);
insert into empleados (
	codigoempleado,
	nombre,
	apellido1,
	apellido2,
	extension,
	email,
	codigooficina,
	codigojefe,
	puesto
) values (
	6,
	'Juan Carlos',
	'Ortiz',
	'Serrano',
	'2845',
	'cortiz@jardineria.es',
	'TAL-ES',
	3,
	'Representante Ventas'
);
insert into empleados (
	codigoempleado,
	nombre,
	apellido1,
	apellido2,
	extension,
	email,
	codigooficina,
	codigojefe,
	puesto
) values (
	7,
	'Carlos',
	'Soria',
	'Jimenez',
	'2444',
	'csoria@jardineria.es',
	'MAD-ES',
	3,
	'Director Oficina'
);
insert into empleados (
	codigoempleado,
	nombre,
	apellido1,
	apellido2,
	extension,
	email,
	codigooficina,
	codigojefe,
	puesto
) values (
	8,
	'Mariano',
	'L�pez',
	'Murcia',
	'2442',
	'mlopez@jardineria.es',
	'MAD-ES',
	7,
	'Representante Ventas'
);
insert into empleados (
	codigoempleado,
	nombre,
	apellido1,
	apellido2,
	extension,
	email,
	codigooficina,
	codigojefe,
	puesto
) values (
	9,
	'Lucio',
	'Campoamor',
	'Mart�n',
	'2442',
	'lcampoamor@jardineria.es',
	'MAD-ES',
	7,
	'Representante Ventas'
);
insert into empleados (
	codigoempleado,
	nombre,
	apellido1,
	apellido2,
	extension,
	email,
	codigooficina,
	codigojefe,
	puesto
) values (
	10,
	'Hilario',
	'Rodriguez',
	'Huertas',
	'2444',
	'hrodriguez@jardineria.es',
	'MAD-ES',
	7,
	'Representante Ventas'
);
insert into empleados (
	codigoempleado,
	nombre,
	apellido1,
	apellido2,
	extension,
	email,
	codigooficina,
	codigojefe,
	puesto
) values (
	11,
	'Emmanuel',
	'Maga�a',
	'Perez',
	'2518',
	'manu@jardineria.es',
	'BCN-ES',
	3,
	'Director Oficina'
);
insert into empleados (
	codigoempleado,
	nombre,
	apellido1,
	apellido2,
	extension,
	email,
	codigooficina,
	codigojefe,
	puesto
) values (
	12,
	'Jos� Manuel',
	'Martinez',
	'De la Osa',
	'2519',
	'jmmart@hotmail.es',
	'BCN-ES',
	11,
	'Representante Ventas'
);
insert into empleados (
	codigoempleado,
	nombre,
	apellido1,
	apellido2,
	extension,
	email,
	codigooficina,
	codigojefe,
	puesto
) values (
	13,
	'David',
	'Palma',
	'Aceituno',
	'2519',
	'dpalma@jardineria.es',
	'BCN-ES',
	11,
	'Representante Ventas'
);
insert into empleados (
	codigoempleado,
	nombre,
	apellido1,
	apellido2,
	extension,
	email,
	codigooficina,
	codigojefe,
	puesto
) values (
	14,
	'Oscar',
	'Palma',
	'Aceituno',
	'2519',
	'opalma@jardineria.es',
	'BCN-ES',
	11,
	'Representante Ventas'
);
insert into empleados (
	codigoempleado,
	nombre,
	apellido1,
	apellido2,
	extension,
	email,
	codigooficina,
	codigojefe,
	puesto
) values (
	15,
	'Francois',
	'Fignon',
	null,
	'9981',
	'ffignon@gardening.com',
	'PAR-FR',
	3,
	'Director Oficina'
);
insert into empleados (
	codigoempleado,
	nombre,
	apellido1,
	apellido2,
	extension,
	email,
	codigooficina,
	codigojefe,
	puesto
) values (
	16,
	'Lionel',
	'Narvaez',
	null,
	'9982',
	'lnarvaez@gardening.com',
	'PAR-FR',
	15,
	'Representante Ventas'
);
insert into empleados (
	codigoempleado,
	nombre,
	apellido1,
	apellido2,
	extension,
	email,
	codigooficina,
	codigojefe,
	puesto
) values (
	17,
	'Laurent',
	'Serra',
	null,
	'9982',
	'lserra@gardening.com',
	'PAR-FR',
	15,
	'Representante Ventas'
);
insert into empleados (
	codigoempleado,
	nombre,
	apellido1,
	apellido2,
	extension,
	email,
	codigooficina,
	codigojefe,
	puesto
) values (
	18,
	'Michael',
	'Bolton',
	null,
	'7454',
	'mbolton@gardening.com',
	'SFC-USA',
	3,
	'Director Oficina'
);
insert into empleados (
	codigoempleado,
	nombre,
	apellido1,
	apellido2,
	extension,
	email,
	codigooficina,
	codigojefe,
	puesto
) values (
	19,
	'Walter Santiago',
	'Sanchez',
	'Lopez',
	'7454',
	'wssanchez@gardening.com',
	'SFC-USA',
	18,
	'Representante Ventas'
);
insert into empleados (
	codigoempleado,
	nombre,
	apellido1,
	apellido2,
	extension,
	email,
	codigooficina,
	codigojefe,
	puesto
) values (
	20,
	'Hilary',
	'Washington',
	null,
	'7565',
	'hwashington@gardening.com',
	'BOS-USA',
	3,
	'Director Oficina'
);
insert into empleados (
	codigoempleado,
	nombre,
	apellido1,
	apellido2,
	extension,
	email,
	codigooficina,
	codigojefe,
	puesto
) values (
	21,
	'Marcus',
	'Paxton',
	null,
	'7565',
	'mpaxton@gardening.com',
	'BOS-USA',
	20,
	'Representante Ventas'
);
insert into empleados (
	codigoempleado,
	nombre,
	apellido1,
	apellido2,
	extension,
	email,
	codigooficina,
	codigojefe,
	puesto
) values (
	22,
	'Lorena',
	'Paxton',
	null,
	'7665',
	'lpaxton@gardening.com',
	'BOS-USA',
	20,
	'Representante Ventas'
);
insert into empleados (
	codigoempleado,
	nombre,
	apellido1,
	apellido2,
	extension,
	email,
	codigooficina,
	codigojefe,
	puesto
) values (
	23,
	'Nei',
	'Nishikori',
	null,
	'8734',
	'nnishikori@gardening.com',
	'TOK-JP',
	3,
	'Director Oficina'
);
insert into empleados (
	codigoempleado,
	nombre,
	apellido1,
	apellido2,
	extension,
	email,
	codigooficina,
	codigojefe,
	puesto
) values (
	24,
	'Narumi',
	'Riko',
	null,
	'8734',
	'nriko@gardening.com',
	'TOK-JP',
	23,
	'Representante Ventas'
);
insert into empleados (
	codigoempleado,
	nombre,
	apellido1,
	apellido2,
	extension,
	email,
	codigooficina,
	codigojefe,
	puesto
) values (
	25,
	'Takuma',
	'Nomura',
	null,
	'8735',
	'tnomura@gardening.com',
	'TOK-JP',
	23,
	'Representante Ventas'
);
insert into empleados (
	codigoempleado,
	nombre,
	apellido1,
	apellido2,
	extension,
	email,
	codigooficina,
	codigojefe,
	puesto
) values (
	26,
	'Amy',
	'Johnson',
	null,
	'3321',
	'ajohnson@gardening.com',
	'LON-UK',
	3,
	'Director Oficina'
);
insert into empleados (
	codigoempleado,
	nombre,
	apellido1,
	apellido2,
	extension,
	email,
	codigooficina,
	codigojefe,
	puesto
) values (
	27,
	'Larry',
	'Westfalls',
	null,
	'3322',
	'lwestfalls@gardening.com',
	'LON-UK',
	26,
	'Representante Ventas'
);
insert into empleados (
	codigoempleado,
	nombre,
	apellido1,
	apellido2,
	extension,
	email,
	codigooficina,
	codigojefe,
	puesto
) values (
	28,
	'John',
	'Walton',
	null,
	'3322',
	'jwalton@gardening.com',
	'LON-UK',
	26,
	'Representante Ventas'
);
insert into empleados (
	codigoempleado,
	nombre,
	apellido1,
	apellido2,
	extension,
	email,
	codigooficina,
	codigojefe,
	puesto
) values (
	29,
	'Kevin',
	'Fallmer',
	null,
	'3210',
	'kfalmer@gardening.com',
	'SYD-AU',
	3,
	'Director Oficina'
);
insert into empleados (
	codigoempleado,
	nombre,
	apellido1,
	apellido2,
	extension,
	email,
	codigooficina,
	codigojefe,
	puesto
) values (
	30,
	'Julian',
	'Bellinelli',
	null,
	'3211',
	'jbellinelli@gardening.com',
	'SYD-AU',
	29,
	'Representante Ventas'
);
insert into empleados (
	codigoempleado,
	nombre,
	apellido1,
	apellido2,
	extension,
	email,
	codigooficina,
	codigojefe,
	puesto
) values (
	31,
	'Mariko',
	'Kishi',
	null,
	'3211',
	'mkishi@gardening.com',
	'SYD-AU',
	29,
	'Representante Ventas'
);
REM INSERTING into GAMASPRODUCTOS
   SET DEFINE OFF;
insert into gamasproductos ( gama ) values ( 'Arom�ticas' );
insert into gamasproductos ( gama ) values ( 'Frutales' );
insert into gamasproductos ( gama ) values ( 'Herbaceas' );
insert into gamasproductos ( gama ) values ( 'Herramientas' );
insert into gamasproductos ( gama ) values ( 'Ornamentales' );
REM INSERTING into OFICINAS
   SET DEFINE OFF;
insert into oficinas (
	codigooficina,
	ciudad,
	pais,
	region,
	codigopostal,
	telefono,
	lineadireccion1,
	lineadireccion2
) values (
	'BCN-ES',
	'Barcelona',
	'Espa�a',
	'Barcelona',
	'08019',
	'+34 93 3561182',
	'Avenida Diagonal, 38',
	'3A escalera Derecha'
);
insert into oficinas (
	codigooficina,
	ciudad,
	pais,
	region,
	codigopostal,
	telefono,
	lineadireccion1,
	lineadireccion2
) values (
	'BOS-USA',
	'Boston',
	'EEUU',
	'MA',
	'02108',
	'+1 215 837 0825',
	'1550 Court Place',
	'Suite 102'
);
insert into oficinas (
	codigooficina,
	ciudad,
	pais,
	region,
	codigopostal,
	telefono,
	lineadireccion1,
	lineadireccion2
) values (
	'LON-UK',
	'Londres',
	'Inglaterra',
	'EMEA',
	'EC2N 1HN',
	'+44 20 78772041',
	'52 Old Broad Street',
	'Ground Floor'
);
insert into oficinas (
	codigooficina,
	ciudad,
	pais,
	region,
	codigopostal,
	telefono,
	lineadireccion1,
	lineadireccion2
) values (
	'MAD-ES',
	'Madrid',
	'Espa�a',
	'Madrid',
	'28032',
	'+34 91 7514487',
	'Bulevar Indalecio Prieto, 32',
	null
);
insert into oficinas (
	codigooficina,
	ciudad,
	pais,
	region,
	codigopostal,
	telefono,
	lineadireccion1,
	lineadireccion2
) values (
	'PAR-FR',
	'Paris',
	'Francia',
	'EMEA',
	'75017',
	'+33 14 723 4404',
	'29 Rue Jouffroy d''abbans',
	null
);
insert into oficinas (
	codigooficina,
	ciudad,
	pais,
	region,
	codigopostal,
	telefono,
	lineadireccion1,
	lineadireccion2
) values (
	'SFC-USA',
	'San Francisco',
	'EEUU',
	'CA',
	'94080',
	'+1 650 219 4782',
	'100 Market Street',
	'Suite 300'
);
insert into oficinas (
	codigooficina,
	ciudad,
	pais,
	region,
	codigopostal,
	telefono,
	lineadireccion1,
	lineadireccion2
) values (
	'SYD-AU',
	'Sydney',
	'Australia',
	'APAC',
	'NSW 2010',
	'+61 2 9264 2451',
	'5-11 Wentworth Avenue',
	'Floor #2'
);
insert into oficinas (
	codigooficina,
	ciudad,
	pais,
	region,
	codigopostal,
	telefono,
	lineadireccion1,
	lineadireccion2
) values (
	'TAL-ES',
	'Talavera de la Reina',
	'Espa�a',
	'Castilla-LaMancha',
	'45632',
	'+34 925 867231',
	'Francisco Aguirre, 32',
	'5� piso (exterior)'
);
insert into oficinas (
	codigooficina,
	ciudad,
	pais,
	region,
	codigopostal,
	telefono,
	lineadireccion1,
	lineadireccion2
) values (
	'TOK-JP',
	'Tokyo',
	'Jap�n',
	'Chiyoda-Ku',
	'102-8578',
	'+81 33 224 5000',
	'4-1 Kioicho',
	null
);
REM INSERTING into PAGOS
   SET DEFINE OFF;
insert into pagos (
	codigocliente,
	formapago,
	idtransaccion,
	fechapago,
	cantidad
) values (
	1,
	'PayPal',
	'ak-std-000001',
	to_date('10/12/08','DD/MM/RR'),
	2000
);
insert into pagos (
	codigocliente,
	formapago,
	idtransaccion,
	fechapago,
	cantidad
) values (
	1,
	'PayPal',
	'ak-std-000002',
	to_date('12/10/08','DD/MM/RR'),
	2000
);
insert into pagos (
	codigocliente,
	formapago,
	idtransaccion,
	fechapago,
	cantidad
) values (
	3,
	'PayPal',
	'ak-std-000003',
	to_date('16/01/09','DD/MM/RR'),
	5000
);
insert into pagos (
	codigocliente,
	formapago,
	idtransaccion,
	fechapago,
	cantidad
) values (
	3,
	'PayPal',
	'ak-std-000004',
	to_date('16/02/09','DD/MM/RR'),
	5000
);
insert into pagos (
	codigocliente,
	formapago,
	idtransaccion,
	fechapago,
	cantidad
) values (
	3,
	'PayPal',
	'ak-std-000005',
	to_date('19/02/09','DD/MM/RR'),
	926
);
insert into pagos (
	codigocliente,
	formapago,
	idtransaccion,
	fechapago,
	cantidad
) values (
	4,
	'PayPal',
	'ak-std-000006',
	to_date('08/01/07','DD/MM/RR'),
	20000
);
insert into pagos (
	codigocliente,
	formapago,
	idtransaccion,
	fechapago,
	cantidad
) values (
	4,
	'PayPal',
	'ak-std-000007',
	to_date('08/01/07','DD/MM/RR'),
	20000
);
insert into pagos (
	codigocliente,
	formapago,
	idtransaccion,
	fechapago,
	cantidad
) values (
	4,
	'PayPal',
	'ak-std-000008',
	to_date('08/01/07','DD/MM/RR'),
	20000
);
insert into pagos (
	codigocliente,
	formapago,
	idtransaccion,
	fechapago,
	cantidad
) values (
	4,
	'PayPal',
	'ak-std-000009',
	to_date('08/01/07','DD/MM/RR'),
	20000
);
insert into pagos (
	codigocliente,
	formapago,
	idtransaccion,
	fechapago,
	cantidad
) values (
	4,
	'PayPal',
	'ak-std-000010',
	to_date('08/01/07','DD/MM/RR'),
	1849
);
insert into pagos (
	codigocliente,
	formapago,
	idtransaccion,
	fechapago,
	cantidad
) values (
	5,
	'Transferencia',
	'ak-std-000011',
	to_date('18/01/06','DD/MM/RR'),
	23794
);
insert into pagos (
	codigocliente,
	formapago,
	idtransaccion,
	fechapago,
	cantidad
) values (
	7,
	'Cheque',
	'ak-std-000012',
	to_date('13/01/09','DD/MM/RR'),
	2390
);
insert into pagos (
	codigocliente,
	formapago,
	idtransaccion,
	fechapago,
	cantidad
) values (
	9,
	'PayPal',
	'ak-std-000013',
	to_date('06/01/09','DD/MM/RR'),
	929
);
insert into pagos (
	codigocliente,
	formapago,
	idtransaccion,
	fechapago,
	cantidad
) values (
	13,
	'PayPal',
	'ak-std-000014',
	to_date('04/08/08','DD/MM/RR'),
	2246
);
insert into pagos (
	codigocliente,
	formapago,
	idtransaccion,
	fechapago,
	cantidad
) values (
	14,
	'PayPal',
	'ak-std-000015',
	to_date('15/07/08','DD/MM/RR'),
	4160
);
insert into pagos (
	codigocliente,
	formapago,
	idtransaccion,
	fechapago,
	cantidad
) values (
	15,
	'PayPal',
	'ak-std-000016',
	to_date('15/01/09','DD/MM/RR'),
	2081
);
insert into pagos (
	codigocliente,
	formapago,
	idtransaccion,
	fechapago,
	cantidad
) values (
	15,
	'PayPal',
	'ak-std-000035',
	to_date('15/02/09','DD/MM/RR'),
	10000
);
insert into pagos (
	codigocliente,
	formapago,
	idtransaccion,
	fechapago,
	cantidad
) values (
	16,
	'PayPal',
	'ak-std-000017',
	to_date('16/02/09','DD/MM/RR'),
	4399
);
insert into pagos (
	codigocliente,
	formapago,
	idtransaccion,
	fechapago,
	cantidad
) values (
	19,
	'PayPal',
	'ak-std-000018',
	to_date('06/03/09','DD/MM/RR'),
	232
);
insert into pagos (
	codigocliente,
	formapago,
	idtransaccion,
	fechapago,
	cantidad
) values (
	23,
	'PayPal',
	'ak-std-000019',
	to_date('26/03/09','DD/MM/RR'),
	272
);
insert into pagos (
	codigocliente,
	formapago,
	idtransaccion,
	fechapago,
	cantidad
) values (
	26,
	'PayPal',
	'ak-std-000020',
	to_date('18/03/08','DD/MM/RR'),
	18846
);
insert into pagos (
	codigocliente,
	formapago,
	idtransaccion,
	fechapago,
	cantidad
) values (
	27,
	'PayPal',
	'ak-std-000021',
	to_date('08/02/09','DD/MM/RR'),
	10972
);
insert into pagos (
	codigocliente,
	formapago,
	idtransaccion,
	fechapago,
	cantidad
) values (
	28,
	'PayPal',
	'ak-std-000022',
	to_date('13/01/09','DD/MM/RR'),
	8489
);
insert into pagos (
	codigocliente,
	formapago,
	idtransaccion,
	fechapago,
	cantidad
) values (
	30,
	'PayPal',
	'ak-std-000024',
	to_date('16/01/09','DD/MM/RR'),
	7863
);
insert into pagos (
	codigocliente,
	formapago,
	idtransaccion,
	fechapago,
	cantidad
) values (
	35,
	'PayPal',
	'ak-std-000025',
	to_date('10/06/07','DD/MM/RR'),
	3321
);
insert into pagos (
	codigocliente,
	formapago,
	idtransaccion,
	fechapago,
	cantidad
) values (
	38,
	'PayPal',
	'ak-std-000026',
	to_date('26/05/06','DD/MM/RR'),
	1171
);
REM INSERTING into PEDIDOS
   SET DEFINE OFF;
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	1,
	to_date('17/01/06','DD/MM/RR'),
	to_date('19/01/06','DD/MM/RR'),
	to_date('19/01/06','DD/MM/RR'),
	'Entregado',
	5
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	2,
	to_date('23/10/07','DD/MM/RR'),
	to_date('28/10/07','DD/MM/RR'),
	to_date('26/10/07','DD/MM/RR'),
	'Entregado',
	5
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	3,
	to_date('20/06/08','DD/MM/RR'),
	to_date('25/06/08','DD/MM/RR'),
	null,
	'Rechazado',
	5
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	4,
	to_date('20/01/09','DD/MM/RR'),
	to_date('26/01/09','DD/MM/RR'),
	null,
	'Pendiente',
	5
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	8,
	to_date('09/11/08','DD/MM/RR'),
	to_date('14/11/08','DD/MM/RR'),
	to_date('14/11/08','DD/MM/RR'),
	'Entregado',
	1
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	9,
	to_date('22/12/08','DD/MM/RR'),
	to_date('27/12/08','DD/MM/RR'),
	to_date('28/12/08','DD/MM/RR'),
	'Entregado',
	1
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	10,
	to_date('15/01/09','DD/MM/RR'),
	to_date('20/01/09','DD/MM/RR'),
	null,
	'Pendiente',
	3
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	11,
	to_date('20/01/09','DD/MM/RR'),
	to_date('27/01/09','DD/MM/RR'),
	null,
	'Pendiente',
	1
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	12,
	to_date('22/01/09','DD/MM/RR'),
	to_date('27/01/09','DD/MM/RR'),
	null,
	'Pendiente',
	1
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	13,
	to_date('12/01/09','DD/MM/RR'),
	to_date('14/01/09','DD/MM/RR'),
	to_date('15/01/09','DD/MM/RR'),
	'entregado',
	7
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	14,
	to_date('02/01/09','DD/MM/RR'),
	to_date('02/01/09','DD/MM/RR'),
	null,
	'rechazado',
	7
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	15,
	to_date('09/01/09','DD/MM/RR'),
	to_date('12/01/09','DD/MM/RR'),
	to_date('11/01/09','DD/MM/RR'),
	'entregado',
	7
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	16,
	to_date('06/01/09','DD/MM/RR'),
	to_date('07/01/09','DD/MM/RR'),
	to_date('15/01/09','DD/MM/RR'),
	'entregado',
	7
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	17,
	to_date('08/01/09','DD/MM/RR'),
	to_date('09/01/09','DD/MM/RR'),
	to_date('11/01/09','DD/MM/RR'),
	'entregado',
	7
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	18,
	to_date('05/01/09','DD/MM/RR'),
	to_date('06/01/09','DD/MM/RR'),
	to_date('07/01/09','DD/MM/RR'),
	'entregado',
	9
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	19,
	to_date('18/01/09','DD/MM/RR'),
	to_date('12/02/09','DD/MM/RR'),
	null,
	'pendiente',
	9
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	20,
	to_date('20/01/09','DD/MM/RR'),
	to_date('15/02/09','DD/MM/RR'),
	null,
	'pendiente',
	9
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	21,
	to_date('09/01/09','DD/MM/RR'),
	to_date('09/01/09','DD/MM/RR'),
	to_date('09/01/09','DD/MM/RR'),
	'rechazado',
	9
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	22,
	to_date('11/01/09','DD/MM/RR'),
	to_date('11/01/09','DD/MM/RR'),
	to_date('13/01/09','DD/MM/RR'),
	'entregado',
	9
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	23,
	to_date('30/12/08','DD/MM/RR'),
	to_date('10/01/09','DD/MM/RR'),
	null,
	'Rechazado',
	5
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	24,
	to_date('14/07/08','DD/MM/RR'),
	to_date('31/07/08','DD/MM/RR'),
	to_date('25/07/08','DD/MM/RR'),
	'Entregado',
	14
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	25,
	to_date('02/02/09','DD/MM/RR'),
	to_date('08/02/09','DD/MM/RR'),
	null,
	'Rechazado',
	1
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	26,
	to_date('06/02/09','DD/MM/RR'),
	to_date('12/02/09','DD/MM/RR'),
	null,
	'Rechazado',
	3
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	27,
	to_date('07/02/09','DD/MM/RR'),
	to_date('13/02/09','DD/MM/RR'),
	null,
	'Entregado',
	3
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	28,
	to_date('10/02/09','DD/MM/RR'),
	to_date('17/02/09','DD/MM/RR'),
	to_date('20/02/09','DD/MM/RR'),
	'Entregado',
	3
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	29,
	to_date('01/08/08','DD/MM/RR'),
	to_date('01/09/08','DD/MM/RR'),
	to_date('01/09/08','DD/MM/RR'),
	'Rechazado',
	14
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	30,
	to_date('03/08/08','DD/MM/RR'),
	to_date('03/09/08','DD/MM/RR'),
	to_date('31/08/08','DD/MM/RR'),
	'Entregado',
	13
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	31,
	to_date('04/09/08','DD/MM/RR'),
	to_date('30/09/08','DD/MM/RR'),
	to_date('04/10/08','DD/MM/RR'),
	'Rechazado',
	13
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	32,
	to_date('07/01/07','DD/MM/RR'),
	to_date('19/01/07','DD/MM/RR'),
	to_date('27/01/07','DD/MM/RR'),
	'Entregado',
	4
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	33,
	to_date('20/05/07','DD/MM/RR'),
	to_date('28/05/07','DD/MM/RR'),
	null,
	'Rechazado',
	4
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	34,
	to_date('20/06/07','DD/MM/RR'),
	to_date('28/06/08','DD/MM/RR'),
	to_date('28/06/08','DD/MM/RR'),
	'Entregado',
	4
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	35,
	to_date('10/03/08','DD/MM/RR'),
	to_date('20/03/09','DD/MM/RR'),
	null,
	'Rechazado',
	4
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	36,
	to_date('15/10/08','DD/MM/RR'),
	to_date('15/12/08','DD/MM/RR'),
	to_date('10/12/08','DD/MM/RR'),
	'Entregado',
	14
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	37,
	to_date('03/11/08','DD/MM/RR'),
	to_date('13/11/09','DD/MM/RR'),
	null,
	'Pendiente',
	4
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	38,
	to_date('05/03/09','DD/MM/RR'),
	to_date('06/03/09','DD/MM/RR'),
	to_date('07/03/09','DD/MM/RR'),
	'Entregado',
	19
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	39,
	to_date('06/03/09','DD/MM/RR'),
	to_date('07/03/09','DD/MM/RR'),
	to_date('09/03/09','DD/MM/RR'),
	'Pendiente',
	19
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	40,
	to_date('09/03/09','DD/MM/RR'),
	to_date('10/03/09','DD/MM/RR'),
	to_date('13/03/09','DD/MM/RR'),
	'Rechazado',
	19
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	41,
	to_date('12/03/09','DD/MM/RR'),
	to_date('13/03/09','DD/MM/RR'),
	to_date('13/03/09','DD/MM/RR'),
	'Entregado',
	19
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	42,
	to_date('22/03/09','DD/MM/RR'),
	to_date('23/03/09','DD/MM/RR'),
	to_date('27/03/09','DD/MM/RR'),
	'Entregado',
	19
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	43,
	to_date('25/03/09','DD/MM/RR'),
	to_date('26/03/09','DD/MM/RR'),
	to_date('28/03/09','DD/MM/RR'),
	'Pendiente',
	23
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	44,
	to_date('26/03/09','DD/MM/RR'),
	to_date('27/03/09','DD/MM/RR'),
	to_date('30/03/09','DD/MM/RR'),
	'Pendiente',
	23
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	45,
	to_date('01/04/09','DD/MM/RR'),
	to_date('04/03/09','DD/MM/RR'),
	to_date('07/03/09','DD/MM/RR'),
	'Entregado',
	23
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	46,
	to_date('03/04/09','DD/MM/RR'),
	to_date('04/03/09','DD/MM/RR'),
	to_date('05/03/09','DD/MM/RR'),
	'Rechazado',
	23
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	47,
	to_date('15/04/09','DD/MM/RR'),
	to_date('17/03/09','DD/MM/RR'),
	to_date('17/03/09','DD/MM/RR'),
	'Entregado',
	23
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	48,
	to_date('17/03/08','DD/MM/RR'),
	to_date('30/03/08','DD/MM/RR'),
	to_date('29/03/08','DD/MM/RR'),
	'Entregado',
	26
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	50,
	to_date('17/03/08','DD/MM/RR'),
	to_date('09/08/08','DD/MM/RR'),
	null,
	'Pendiente',
	26
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	51,
	to_date('01/10/08','DD/MM/RR'),
	to_date('14/10/08','DD/MM/RR'),
	to_date('14/10/08','DD/MM/RR'),
	'Entregado',
	26
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	52,
	to_date('07/12/08','DD/MM/RR'),
	to_date('21/12/08','DD/MM/RR'),
	null,
	'Pendiente',
	26
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	53,
	to_date('15/10/08','DD/MM/RR'),
	to_date('15/11/08','DD/MM/RR'),
	to_date('09/11/08','DD/MM/RR'),
	'Entregado',
	13
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	54,
	to_date('11/01/09','DD/MM/RR'),
	to_date('11/02/09','DD/MM/RR'),
	null,
	'Pendiente',
	14
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	55,
	to_date('10/12/08','DD/MM/RR'),
	to_date('10/01/09','DD/MM/RR'),
	to_date('11/01/09','DD/MM/RR'),
	'Entregado',
	14
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	56,
	to_date('19/12/08','DD/MM/RR'),
	to_date('20/01/09','DD/MM/RR'),
	null,
	'Rechazado',
	13
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	57,
	to_date('05/01/09','DD/MM/RR'),
	to_date('05/02/09','DD/MM/RR'),
	null,
	'Pendiente',
	13
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	58,
	to_date('24/01/09','DD/MM/RR'),
	to_date('31/01/09','DD/MM/RR'),
	to_date('30/01/09','DD/MM/RR'),
	'Entregado',
	3
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	59,
	to_date('09/11/08','DD/MM/RR'),
	to_date('14/11/08','DD/MM/RR'),
	to_date('14/11/08','DD/MM/RR'),
	'Entregado',
	1
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	60,
	to_date('22/12/08','DD/MM/RR'),
	to_date('27/12/08','DD/MM/RR'),
	to_date('28/12/08','DD/MM/RR'),
	'Entregado',
	1
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	61,
	to_date('15/01/09','DD/MM/RR'),
	to_date('20/01/09','DD/MM/RR'),
	null,
	'Pendiente',
	3
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	62,
	to_date('20/01/09','DD/MM/RR'),
	to_date('27/01/09','DD/MM/RR'),
	null,
	'Pendiente',
	1
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	63,
	to_date('22/01/09','DD/MM/RR'),
	to_date('27/01/09','DD/MM/RR'),
	null,
	'Pendiente',
	1
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	64,
	to_date('24/01/09','DD/MM/RR'),
	to_date('31/01/09','DD/MM/RR'),
	to_date('30/01/09','DD/MM/RR'),
	'Entregado',
	1
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	65,
	to_date('02/02/09','DD/MM/RR'),
	to_date('08/02/09','DD/MM/RR'),
	null,
	'Rechazado',
	1
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	66,
	to_date('06/02/09','DD/MM/RR'),
	to_date('12/02/09','DD/MM/RR'),
	null,
	'Rechazado',
	3
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	67,
	to_date('07/02/09','DD/MM/RR'),
	to_date('13/02/09','DD/MM/RR'),
	null,
	'Entregado',
	3
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	68,
	to_date('10/02/09','DD/MM/RR'),
	to_date('17/02/09','DD/MM/RR'),
	to_date('20/02/09','DD/MM/RR'),
	'Entregado',
	3
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	74,
	to_date('14/01/09','DD/MM/RR'),
	to_date('22/01/09','DD/MM/RR'),
	null,
	'Rechazado',
	15
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	75,
	to_date('11/01/09','DD/MM/RR'),
	to_date('13/01/09','DD/MM/RR'),
	to_date('13/01/09','DD/MM/RR'),
	'Entregado',
	15
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	76,
	to_date('15/11/08','DD/MM/RR'),
	to_date('23/11/08','DD/MM/RR'),
	to_date('23/11/08','DD/MM/RR'),
	'Entregado',
	15
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	77,
	to_date('03/01/09','DD/MM/RR'),
	to_date('08/01/09','DD/MM/RR'),
	null,
	'Pendiente',
	15
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	78,
	to_date('15/12/08','DD/MM/RR'),
	to_date('17/12/08','DD/MM/RR'),
	to_date('17/12/08','DD/MM/RR'),
	'Entregado',
	15
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	79,
	to_date('12/01/09','DD/MM/RR'),
	to_date('13/01/09','DD/MM/RR'),
	to_date('13/01/09','DD/MM/RR'),
	'Entregado',
	28
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	80,
	to_date('25/01/09','DD/MM/RR'),
	to_date('26/01/09','DD/MM/RR'),
	null,
	'Pendiente',
	28
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	81,
	to_date('18/01/09','DD/MM/RR'),
	to_date('24/01/09','DD/MM/RR'),
	null,
	'Rechazado',
	28
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	82,
	to_date('20/01/09','DD/MM/RR'),
	to_date('29/01/09','DD/MM/RR'),
	to_date('29/01/09','DD/MM/RR'),
	'Entregado',
	28
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	83,
	to_date('24/01/09','DD/MM/RR'),
	to_date('28/01/09','DD/MM/RR'),
	null,
	'Entregado',
	28
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	89,
	to_date('05/10/07','DD/MM/RR'),
	to_date('13/12/07','DD/MM/RR'),
	to_date('10/12/07','DD/MM/RR'),
	'Entregado',
	35
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	90,
	to_date('07/02/09','DD/MM/RR'),
	to_date('17/02/08','DD/MM/RR'),
	null,
	'Pendiente',
	27
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	91,
	to_date('18/03/09','DD/MM/RR'),
	to_date('29/03/09','DD/MM/RR'),
	to_date('27/03/09','DD/MM/RR'),
	'Entregado',
	27
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	92,
	to_date('19/04/09','DD/MM/RR'),
	to_date('30/04/09','DD/MM/RR'),
	to_date('03/05/09','DD/MM/RR'),
	'Entregado',
	27
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	93,
	to_date('03/05/09','DD/MM/RR'),
	to_date('30/05/09','DD/MM/RR'),
	to_date('17/05/09','DD/MM/RR'),
	'Entregado',
	27
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	94,
	to_date('18/10/09','DD/MM/RR'),
	to_date('01/11/09','DD/MM/RR'),
	null,
	'Pendiente',
	27
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	95,
	to_date('04/01/08','DD/MM/RR'),
	to_date('19/01/08','DD/MM/RR'),
	to_date('19/01/08','DD/MM/RR'),
	'Entregado',
	35
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	96,
	to_date('20/03/08','DD/MM/RR'),
	to_date('12/04/08','DD/MM/RR'),
	to_date('13/04/08','DD/MM/RR'),
	'Entregado',
	35
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	97,
	to_date('08/10/08','DD/MM/RR'),
	to_date('25/11/08','DD/MM/RR'),
	to_date('25/11/08','DD/MM/RR'),
	'Entregado',
	35
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	98,
	to_date('08/01/09','DD/MM/RR'),
	to_date('13/02/09','DD/MM/RR'),
	null,
	'Pediente',
	35
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	99,
	to_date('15/02/09','DD/MM/RR'),
	to_date('27/02/09','DD/MM/RR'),
	null,
	'Pendiente',
	16
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	100,
	to_date('10/01/09','DD/MM/RR'),
	to_date('15/01/09','DD/MM/RR'),
	to_date('15/01/09','DD/MM/RR'),
	'Entregado',
	16
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	101,
	to_date('07/03/09','DD/MM/RR'),
	to_date('27/03/09','DD/MM/RR'),
	null,
	'Rechazado',
	16
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	102,
	to_date('28/12/08','DD/MM/RR'),
	to_date('08/01/09','DD/MM/RR'),
	to_date('08/01/09','DD/MM/RR'),
	'Entregado',
	16
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	103,
	to_date('15/01/09','DD/MM/RR'),
	to_date('20/01/09','DD/MM/RR'),
	to_date('24/01/09','DD/MM/RR'),
	'Pendiente',
	30
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	104,
	to_date('02/03/09','DD/MM/RR'),
	to_date('06/03/09','DD/MM/RR'),
	to_date('06/03/09','DD/MM/RR'),
	'Entregado',
	30
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	105,
	to_date('14/02/09','DD/MM/RR'),
	to_date('20/02/09','DD/MM/RR'),
	null,
	'Rechazado',
	30
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	106,
	to_date('13/05/09','DD/MM/RR'),
	to_date('15/05/09','DD/MM/RR'),
	to_date('20/05/09','DD/MM/RR'),
	'Pendiente',
	30
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	107,
	to_date('06/04/09','DD/MM/RR'),
	to_date('10/04/09','DD/MM/RR'),
	to_date('10/04/09','DD/MM/RR'),
	'Entregado',
	30
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	108,
	to_date('09/04/09','DD/MM/RR'),
	to_date('15/04/09','DD/MM/RR'),
	to_date('15/04/09','DD/MM/RR'),
	'Entregado',
	16
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	109,
	to_date('25/05/06','DD/MM/RR'),
	to_date('28/07/06','DD/MM/RR'),
	to_date('28/07/06','DD/MM/RR'),
	'Entregado',
	38
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	110,
	to_date('19/03/07','DD/MM/RR'),
	to_date('24/04/07','DD/MM/RR'),
	to_date('24/04/07','DD/MM/RR'),
	'Entregado',
	38
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	111,
	to_date('05/03/08','DD/MM/RR'),
	to_date('30/03/08','DD/MM/RR'),
	to_date('30/03/08','DD/MM/RR'),
	'Entregado',
	36
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	112,
	to_date('05/03/09','DD/MM/RR'),
	to_date('06/04/09','DD/MM/RR'),
	to_date('07/05/09','DD/MM/RR'),
	'Pendiente',
	36
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	113,
	to_date('28/10/08','DD/MM/RR'),
	to_date('09/11/08','DD/MM/RR'),
	to_date('09/01/09','DD/MM/RR'),
	'Rechazado',
	36
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	114,
	to_date('15/01/09','DD/MM/RR'),
	to_date('29/01/09','DD/MM/RR'),
	to_date('31/01/09','DD/MM/RR'),
	'Entregado',
	36
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	115,
	to_date('29/11/08','DD/MM/RR'),
	to_date('26/01/09','DD/MM/RR'),
	to_date('27/02/09','DD/MM/RR'),
	'Pendiente',
	36
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	116,
	to_date('28/06/08','DD/MM/RR'),
	to_date('01/08/08','DD/MM/RR'),
	to_date('01/08/08','DD/MM/RR'),
	'Entregado',
	38
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	117,
	to_date('25/08/08','DD/MM/RR'),
	to_date('01/10/08','DD/MM/RR'),
	null,
	'Rechazado',
	38
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	118,
	to_date('15/02/09','DD/MM/RR'),
	to_date('27/02/09','DD/MM/RR'),
	null,
	'Pendiente',
	16
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	119,
	to_date('10/01/09','DD/MM/RR'),
	to_date('15/01/09','DD/MM/RR'),
	to_date('15/01/09','DD/MM/RR'),
	'Entregado',
	16
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	120,
	to_date('07/03/09','DD/MM/RR'),
	to_date('27/03/09','DD/MM/RR'),
	null,
	'Rechazado',
	16
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	121,
	to_date('28/12/08','DD/MM/RR'),
	to_date('08/01/09','DD/MM/RR'),
	to_date('08/01/09','DD/MM/RR'),
	'Entregado',
	16
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	122,
	to_date('09/04/09','DD/MM/RR'),
	to_date('15/04/09','DD/MM/RR'),
	to_date('15/04/09','DD/MM/RR'),
	'Entregado',
	16
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	123,
	to_date('15/01/09','DD/MM/RR'),
	to_date('20/01/09','DD/MM/RR'),
	to_date('24/01/09','DD/MM/RR'),
	'Pendiente',
	30
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	124,
	to_date('02/03/09','DD/MM/RR'),
	to_date('06/03/09','DD/MM/RR'),
	to_date('06/03/09','DD/MM/RR'),
	'Entregado',
	30
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	125,
	to_date('14/02/09','DD/MM/RR'),
	to_date('20/02/09','DD/MM/RR'),
	null,
	'Rechazado',
	30
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	126,
	to_date('13/05/09','DD/MM/RR'),
	to_date('15/05/09','DD/MM/RR'),
	to_date('20/05/09','DD/MM/RR'),
	'Pendiente',
	30
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	127,
	to_date('06/04/09','DD/MM/RR'),
	to_date('10/04/09','DD/MM/RR'),
	to_date('10/04/09','DD/MM/RR'),
	'Entregado',
	30
);
insert into pedidos (
	codigopedido,
	fechapedido,
	fechaesperada,
	fechaentrega,
	estado,
	codigocliente
) values (
	128,
	to_date('10/11/08','DD/MM/RR'),
	to_date('10/12/08','DD/MM/RR'),
	to_date('29/12/08','DD/MM/RR'),
	'Rechazado',
	38
);
REM INSERTING into PRODUCTOS
   SET DEFINE OFF;
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'11679',
	'Sierra de Poda 400MM',
	'Herramientas',
	'0,258',
	'HiperGarden Tools',
	15,
	14,
	11
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'21636',
	'Pala',
	'Herramientas',
	'0,156',
	'HiperGarden Tools',
	15,
	14,
	13
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'22225',
	'Rastrillo de Jard�n',
	'Herramientas',
	'1,064',
	'HiperGarden Tools',
	15,
	12,
	11
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'30310',
	'Azad�n',
	'Herramientas',
	'0,168',
	'HiperGarden Tools',
	15,
	12,
	11
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'AR-001',
	'Ajedrea',
	'Arom�ticas',
	'15-20',
	'Murcia Seasons',
	140,
	1,
	0
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'AR-002',
	'Lav�ndula Dentata',
	'Arom�ticas',
	'15-20',
	'Murcia Seasons',
	140,
	1,
	0
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'AR-003',
	'Mejorana',
	'Arom�ticas',
	'15-20',
	'Murcia Seasons',
	140,
	1,
	0
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'AR-004',
	'Melissa ',
	'Arom�ticas',
	'15-20',
	'Murcia Seasons',
	140,
	1,
	0
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'AR-005',
	'Mentha Sativa',
	'Arom�ticas',
	'15-20',
	'Murcia Seasons',
	140,
	1,
	0
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-14',
	'Calamondin Mini',
	'Frutales',
	null,
	'Frutales Talavera S.A',
	15,
	10,
	8
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-15',
	'Calamondin Copa ',
	'Frutales',
	null,
	'Frutales Talavera S.A',
	15,
	25,
	20
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-16',
	'Calamondin Copa EXTRA Con FRUTA',
	'Frutales',
	'100-120',
	'Frutales Talavera S.A',
	15,
	45,
	36
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-17',
	'Rosal bajo 1ª -En maceta-inicio brotaci�n',
	'Frutales',
	null,
	'Frutales Talavera S.A',
	15,
	2,
	1
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-18',
	'ROSAL TREPADOR',
	'Frutales',
	null,
	'Frutales Talavera S.A',
	350,
	4,
	3
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-19',
	'Camelia Blanco, Chrysler Rojo, Soraya Naranja, ',
	'Frutales',
	null,
	'NaranjasValencianas.com',
	350,
	4,
	3
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-2',
	'Naranjo -Plant�n joven 1 a�o injerto',
	'Frutales',
	null,
	'NaranjasValencianas.com',
	15,
	6,
	4
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-20',
	'Landora Amarillo, Rose Gaujard bicolor blanco-rojo',
	'Frutales',
	null,
	'Frutales Talavera S.A',
	350,
	4,
	3
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-21',
	'Kordes Perfect bicolor rojo-amarillo, Roundelay rojo fuerte',
	'Frutales',
	null,
	'Frutales Talavera S.A',
	350,
	4,
	3
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-22',
	'Pitimini rojo',
	'Frutales',
	null,
	'Frutales Talavera S.A',
	350,
	4,
	3
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-23',
	'Rosal copa ',
	'Frutales',
	null,
	'Frutales Talavera S.A',
	400,
	8,
	6
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-24',
	'Albaricoquero Corbato',
	'Frutales',
	null,
	'Melocotones de Cieza S.A.',
	400,
	8,
	6
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'AR-006',
	'Petrosilium Hortense (Peregil)',
	'Arom�ticas',
	'15-20',
	'Murcia Seasons',
	140,
	1,
	0
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'AR-007',
	'Salvia Mix',
	'Arom�ticas',
	'15-20',
	'Murcia Seasons',
	140,
	1,
	0
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'AR-008',
	'Thymus Citriodra (Tomillo lim�n)',
	'Arom�ticas',
	'15-20',
	'Murcia Seasons',
	140,
	1,
	0
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'AR-009',
	'Thymus Vulgaris',
	'Arom�ticas',
	'15-20',
	'Murcia Seasons',
	140,
	1,
	0
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'AR-010',
	'Santolina Chamaecyparys',
	'Arom�ticas',
	'15-20',
	'Murcia Seasons',
	140,
	1,
	0
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-1',
	'Expositor C�tricos Mix',
	'Frutales',
	'100-120',
	'Frutales Talavera S.A',
	15,
	7,
	5
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-10',
	'Limonero 2 a�os injerto',
	'Frutales',
	null,
	'NaranjasValencianas.com',
	15,
	7,
	5
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-100',
	'Nectarina',
	'Frutales',
	'8/10',
	'Frutales Talavera S.A',
	50,
	11,
	8
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-101',
	'Nogal',
	'Frutales',
	'8/10',
	'Frutales Talavera S.A',
	50,
	13,
	10
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-102',
	'Olea-Olivos',
	'Frutales',
	'8/10',
	'Frutales Talavera S.A',
	50,
	18,
	14
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-103',
	'Olea-Olivos',
	'Frutales',
	'10/12',
	'Frutales Talavera S.A',
	50,
	25,
	20
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-104',
	'Olea-Olivos',
	'Frutales',
	'12/4',
	'Frutales Talavera S.A',
	50,
	49,
	39
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-105',
	'Olea-Olivos',
	'Frutales',
	'14/16',
	'Frutales Talavera S.A',
	50,
	70,
	56
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-106',
	'Peral',
	'Frutales',
	'8/10',
	'Frutales Talavera S.A',
	50,
	11,
	8
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-107',
	'Peral',
	'Frutales',
	'10/12',
	'Frutales Talavera S.A',
	50,
	22,
	17
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-108',
	'Peral',
	'Frutales',
	'12/14',
	'Frutales Talavera S.A',
	50,
	32,
	25
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-11',
	'Limonero 30/40',
	'Frutales',
	null,
	'NaranjasValencianas.com',
	15,
	100,
	80
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-12',
	'Kunquat ',
	'Frutales',
	null,
	'NaranjasValencianas.com',
	15,
	21,
	16
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-13',
	'Kunquat  EXTRA con FRUTA',
	'Frutales',
	'150-170',
	'NaranjasValencianas.com',
	15,
	57,
	45
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-45',
	'Melocotonero Amarillo de Agosto',
	'Frutales',
	null,
	'Melocotones de Cieza S.A.',
	400,
	8,
	6
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-46',
	'Melocotonero Federica',
	'Frutales',
	null,
	'Melocotones de Cieza S.A.',
	400,
	8,
	6
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-47',
	'Melocotonero Paraguayo',
	'Frutales',
	null,
	'Melocotones de Cieza S.A.',
	400,
	8,
	6
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-48',
	'Nogal Com�n',
	'Frutales',
	null,
	'Frutales Talavera S.A',
	400,
	9,
	7
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-49',
	'Parra Uva de Mesa',
	'Frutales',
	null,
	'Frutales Talavera S.A',
	400,
	8,
	6
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-5',
	'Mandarino -Plant�n joven',
	'Frutales',
	null,
	'Frutales Talavera S.A',
	15,
	6,
	4
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-50',
	'Peral Castell',
	'Frutales',
	null,
	'Frutales Talavera S.A',
	400,
	8,
	6
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-51',
	'Peral Williams',
	'Frutales',
	null,
	'Frutales Talavera S.A',
	400,
	8,
	6
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-52',
	'Peral Conference',
	'Frutales',
	null,
	'Frutales Talavera S.A',
	400,
	8,
	6
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-53',
	'Peral Blanq. de Aranjuez',
	'Frutales',
	null,
	'Frutales Talavera S.A',
	400,
	8,
	6
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-54',
	'N�spero Tanaca',
	'Frutales',
	null,
	'Frutales Talavera S.A',
	400,
	9,
	7
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-63',
	'Cerezo',
	'Frutales',
	'8/10',
	'Jerte Distribuciones S.L.',
	300,
	11,
	8
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-64',
	'Cerezo',
	'Frutales',
	'10/12',
	'Jerte Distribuciones S.L.',
	15,
	22,
	17
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-65',
	'Cerezo',
	'Frutales',
	'12/14',
	'Jerte Distribuciones S.L.',
	200,
	32,
	25
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-66',
	'Cerezo',
	'Frutales',
	'14/16',
	'Jerte Distribuciones S.L.',
	50,
	49,
	39
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-67',
	'Cerezo',
	'Frutales',
	'16/18',
	'Jerte Distribuciones S.L.',
	50,
	70,
	56
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-68',
	'Cerezo',
	'Frutales',
	'18/20',
	'Jerte Distribuciones S.L.',
	50,
	80,
	64
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-69',
	'Cerezo',
	'Frutales',
	'20/25',
	'Jerte Distribuciones S.L.',
	50,
	91,
	72
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-7',
	'Mandarino calibre 8/10',
	'Frutales',
	null,
	'Frutales Talavera S.A',
	15,
	29,
	23
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-70',
	'Ciruelo',
	'Frutales',
	'8/10',
	'Frutales Talavera S.A',
	50,
	11,
	8
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-71',
	'Ciruelo',
	'Frutales',
	'10/12',
	'Frutales Talavera S.A',
	50,
	22,
	17
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-72',
	'Ciruelo',
	'Frutales',
	'12/14',
	'Frutales Talavera S.A',
	50,
	32,
	25
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-73',
	'Granado',
	'Frutales',
	'8/10',
	'Frutales Talavera S.A',
	50,
	13,
	10
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-74',
	'Granado',
	'Frutales',
	'10/12',
	'Frutales Talavera S.A',
	50,
	22,
	17
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-75',
	'Granado',
	'Frutales',
	'12/14',
	'Frutales Talavera S.A',
	50,
	32,
	25
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-76',
	'Granado',
	'Frutales',
	'14/16',
	'Frutales Talavera S.A',
	50,
	49,
	39
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-77',
	'Granado',
	'Frutales',
	'16/18',
	'Frutales Talavera S.A',
	50,
	70,
	56
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-78',
	'Higuera',
	'Frutales',
	'8/10',
	'Frutales Talavera S.A',
	50,
	15,
	12
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-79',
	'Higuera',
	'Frutales',
	'10/12',
	'Frutales Talavera S.A',
	50,
	22,
	17
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-55',
	'Olivo Cipresino',
	'Frutales',
	null,
	'Frutales Talavera S.A',
	400,
	8,
	6
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-56',
	'Nectarina',
	'Frutales',
	null,
	'Frutales Talavera S.A',
	400,
	8,
	6
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-57',
	'Kaki Rojo Brillante',
	'Frutales',
	null,
	'NaranjasValencianas.com',
	400,
	9,
	7
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-58',
	'Albaricoquero',
	'Frutales',
	'8/10',
	'Melocotones de Cieza S.A.',
	200,
	11,
	8
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-59',
	'Albaricoquero',
	'Frutales',
	'10/12',
	'Melocotones de Cieza S.A.',
	200,
	22,
	17
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-6',
	'Mandarino 2 a�os injerto',
	'Frutales',
	null,
	'Frutales Talavera S.A',
	15,
	7,
	5
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-60',
	'Albaricoquero',
	'Frutales',
	'12/14',
	'Melocotones de Cieza S.A.',
	200,
	32,
	25
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-61',
	'Albaricoquero',
	'Frutales',
	'14/16',
	'Melocotones de Cieza S.A.',
	200,
	49,
	39
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-62',
	'Albaricoquero',
	'Frutales',
	'16/18',
	'Melocotones de Cieza S.A.',
	200,
	70,
	56
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-25',
	'Albaricoquero Moniqui',
	'Frutales',
	null,
	'Melocotones de Cieza S.A.',
	400,
	8,
	6
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-26',
	'Albaricoquero Kurrot',
	'Frutales',
	null,
	'Melocotones de Cieza S.A.',
	400,
	8,
	6
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-27',
	'Cerezo Burlat',
	'Frutales',
	null,
	'Jerte Distribuciones S.L.',
	400,
	8,
	6
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-28',
	'Cerezo Picota',
	'Frutales',
	null,
	'Jerte Distribuciones S.L.',
	400,
	8,
	6
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-29',
	'Cerezo Napole�n',
	'Frutales',
	null,
	'Jerte Distribuciones S.L.',
	400,
	8,
	6
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-3',
	'Naranjo 2 a�os injerto',
	'Frutales',
	null,
	'NaranjasValencianas.com',
	15,
	7,
	5
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-30',
	'Ciruelo R. Claudia Verde   ',
	'Frutales',
	null,
	'Frutales Talavera S.A',
	400,
	8,
	6
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-31',
	'Ciruelo Santa Rosa',
	'Frutales',
	null,
	'Frutales Talavera S.A',
	400,
	8,
	6
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-32',
	'Ciruelo Golden Japan',
	'Frutales',
	null,
	'Frutales Talavera S.A',
	400,
	8,
	6
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-33',
	'Ciruelo Friar',
	'Frutales',
	null,
	'Frutales Talavera S.A',
	400,
	8,
	6
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-34',
	'Ciruelo Reina C. De Ollins',
	'Frutales',
	null,
	'Frutales Talavera S.A',
	400,
	8,
	6
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-35',
	'Ciruelo Claudia Negra',
	'Frutales',
	null,
	'Frutales Talavera S.A',
	400,
	8,
	6
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-36',
	'Granado Mollar de Elche',
	'Frutales',
	null,
	'Frutales Talavera S.A',
	400,
	9,
	7
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-37',
	'Higuera Napolitana',
	'Frutales',
	null,
	'Frutales Talavera S.A',
	400,
	9,
	7
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-38',
	'Higuera Verdal',
	'Frutales',
	null,
	'Frutales Talavera S.A',
	400,
	9,
	7
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-39',
	'Higuera Breva',
	'Frutales',
	null,
	'Frutales Talavera S.A',
	400,
	9,
	7
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-4',
	'Naranjo calibre 8/10',
	'Frutales',
	null,
	'NaranjasValencianas.com',
	15,
	29,
	23
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-40',
	'Manzano Starking Delicious',
	'Frutales',
	null,
	'Frutales Talavera S.A',
	400,
	8,
	6
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-41',
	'Manzano Reineta',
	'Frutales',
	null,
	'Frutales Talavera S.A',
	400,
	8,
	6
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-42',
	'Manzano Golden Delicious',
	'Frutales',
	null,
	'Frutales Talavera S.A',
	400,
	8,
	6
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-43',
	'Membrillero Gigante de Wranja',
	'Frutales',
	null,
	'Frutales Talavera S.A',
	400,
	8,
	6
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-44',
	'Melocotonero Spring Crest',
	'Frutales',
	null,
	'Melocotones de Cieza S.A.',
	400,
	8,
	6
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-104',
	'Mimosa Semilla Cyanophylla    ',
	'Ornamentales',
	'200-225',
	'Viveros EL OASIS',
	100,
	10,
	8
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-105',
	'Mimosa Semilla Espectabilis  ',
	'Ornamentales',
	'160-170',
	'Viveros EL OASIS',
	100,
	6,
	4
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-106',
	'Mimosa Semilla Longifolia   ',
	'Ornamentales',
	'200-225',
	'Viveros EL OASIS',
	100,
	10,
	8
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-107',
	'Mimosa Semilla Floribunda 4 estaciones',
	'Ornamentales',
	'120-140',
	'Viveros EL OASIS',
	100,
	6,
	4
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-108',
	'Abelia Floribunda',
	'Ornamentales',
	'35-45',
	'Viveros EL OASIS',
	100,
	5,
	4
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-109',
	'Callistemom (Mix)',
	'Ornamentales',
	'35-45',
	'Viveros EL OASIS',
	100,
	5,
	4
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-110',
	'Callistemom (Mix)',
	'Ornamentales',
	'40-60',
	'Viveros EL OASIS',
	100,
	2,
	1
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-111',
	'Corylus Avellana \"Contorta\"',
	'Ornamentales',
	'35-45',
	'Viveros EL OASIS',
	100,
	5,
	4
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-112',
	'Escallonia (Mix)',
	'Ornamentales',
	'35-45',
	'Viveros EL OASIS',
	120,
	5,
	4
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-113',
	'Evonimus Emerald Gayeti',
	'Ornamentales',
	'35-45',
	'Viveros EL OASIS',
	120,
	5,
	4
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-114',
	'Evonimus Pulchellus',
	'Ornamentales',
	'35-45',
	'Viveros EL OASIS',
	120,
	5,
	4
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-115',
	'Forsytia Intermedia \"Lynwood\"',
	'Ornamentales',
	'35-45',
	'Viveros EL OASIS',
	120,
	7,
	5
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-116',
	'Hibiscus Syriacus  \"Diana\" -Blanco Puro',
	'Ornamentales',
	'35-45',
	'Viveros EL OASIS',
	120,
	7,
	5
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-117',
	'Hibiscus Syriacus  \"Helene\" -Blanco-C.rojo',
	'Ornamentales',
	'35-45',
	'Viveros EL OASIS',
	120,
	7,
	5
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-118',
	'Hibiscus Syriacus \"Pink Giant\" Rosa',
	'Ornamentales',
	'35-45',
	'Viveros EL OASIS',
	120,
	7,
	5
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-119',
	'Laurus Nobilis Arbusto - Ramificado Bajo',
	'Ornamentales',
	'40-50',
	'Viveros EL OASIS',
	120,
	5,
	4
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-120',
	'Lonicera Nitida ',
	'Ornamentales',
	'35-45',
	'Viveros EL OASIS',
	120,
	5,
	4
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-121',
	'Lonicera Nitida \"Maigrum\"',
	'Ornamentales',
	'35-45',
	'Viveros EL OASIS',
	120,
	5,
	4
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-122',
	'Lonicera Pileata',
	'Ornamentales',
	'35-45',
	'Viveros EL OASIS',
	120,
	5,
	4
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-123',
	'Philadelphus \"Virginal\"',
	'Ornamentales',
	'35-45',
	'Viveros EL OASIS',
	120,
	5,
	4
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-124',
	'Prunus pisardii  ',
	'Ornamentales',
	'35-45',
	'Viveros EL OASIS',
	120,
	5,
	4
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-125',
	'Viburnum Tinus \"Eve Price\"',
	'Ornamentales',
	'35-45',
	'Viveros EL OASIS',
	120,
	5,
	4
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-126',
	'Weigelia \"Bristol Ruby\"',
	'Ornamentales',
	'35-45',
	'Viveros EL OASIS',
	120,
	5,
	4
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-127',
	'Camelia japonica',
	'Ornamentales',
	'40-60',
	'Viveros EL OASIS',
	50,
	7,
	5
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-128',
	'Camelia japonica ejemplar',
	'Ornamentales',
	'200-250',
	'Viveros EL OASIS',
	50,
	98,
	78
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-129',
	'Camelia japonica ejemplar',
	'Ornamentales',
	'250-300',
	'Viveros EL OASIS',
	50,
	110,
	88
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-130',
	'Callistemom COPA',
	'Ornamentales',
	'110/120',
	'Viveros EL OASIS',
	50,
	18,
	14
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-131',
	'Leptospermum formado PIRAMIDE',
	'Ornamentales',
	'80-100',
	'Viveros EL OASIS',
	50,
	18,
	14
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-132',
	'Leptospermum COPA',
	'Ornamentales',
	'110/120',
	'Viveros EL OASIS',
	50,
	18,
	14
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-133',
	'Nerium oleander-CALIDAD \"GARDEN\"',
	'Ornamentales',
	'40-45',
	'Viveros EL OASIS',
	50,
	2,
	1
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-134',
	'Nerium Oleander Arbusto GRANDE',
	'Ornamentales',
	'160-200',
	'Viveros EL OASIS',
	100,
	38,
	30
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-135',
	'Nerium oleander COPA  Calibre 6/8',
	'Ornamentales',
	'50-60',
	'Viveros EL OASIS',
	100,
	5,
	4
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-136',
	'Nerium oleander ARBOL Calibre 8/10',
	'Ornamentales',
	'225-250',
	'Viveros EL OASIS',
	100,
	18,
	14
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-137',
	'ROSAL TREPADOR',
	'Ornamentales',
	null,
	'Viveros EL OASIS',
	100,
	4,
	3
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-138',
	'Camelia Blanco, Chrysler Rojo, Soraya Naranja, ',
	'Ornamentales',
	null,
	'Viveros EL OASIS',
	100,
	4,
	3
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-139',
	'Landora Amarillo, Rose Gaujard bicolor blanco-rojo',
	'Ornamentales',
	null,
	'Viveros EL OASIS',
	100,
	4,
	3
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-140',
	'Kordes Perfect bicolor rojo-amarillo, Roundelay rojo fuerte',
	'Ornamentales',
	null,
	'Viveros EL OASIS',
	100,
	4,
	3
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-141',
	'Pitimini rojo',
	'Ornamentales',
	null,
	'Viveros EL OASIS',
	100,
	4,
	3
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-142',
	'Solanum Jazminoide',
	'Ornamentales',
	'150-160',
	'Viveros EL OASIS',
	100,
	2,
	1
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-143',
	'Wisteria Sinensis  azul, rosa, blanca',
	'Ornamentales',
	null,
	'Viveros EL OASIS',
	100,
	9,
	7
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-144',
	'Wisteria Sinensis INJERTADAS DECÓ',
	'Ornamentales',
	'140-150',
	'Viveros EL OASIS',
	100,
	12,
	9
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-145',
	'Bougamvillea Sanderiana Tutor',
	'Ornamentales',
	'80-100',
	'Viveros EL OASIS',
	100,
	2,
	1
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-146',
	'Bougamvillea Sanderiana Tutor',
	'Ornamentales',
	'125-150',
	'Viveros EL OASIS',
	100,
	4,
	3
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-147',
	'Bougamvillea Sanderiana Tutor',
	'Ornamentales',
	'180-200',
	'Viveros EL OASIS',
	100,
	7,
	5
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-148',
	'Bougamvillea Sanderiana Espaldera',
	'Ornamentales',
	'45-50',
	'Viveros EL OASIS',
	100,
	7,
	5
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-149',
	'Bougamvillea Sanderiana Espaldera',
	'Ornamentales',
	'140-150',
	'Viveros EL OASIS',
	100,
	17,
	13
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-150',
	'Bougamvillea roja, naranja',
	'Ornamentales',
	'110-130',
	'Viveros EL OASIS',
	100,
	2,
	1
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-151',
	'Bougamvillea Sanderiana, 3 tut. piramide',
	'Ornamentales',
	null,
	'Viveros EL OASIS',
	100,
	6,
	4
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-152',
	'Expositor �rboles clima continental',
	'Ornamentales',
	'170-200',
	'Viveros EL OASIS',
	100,
	6,
	4
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-153',
	'Expositor �rboles clima mediterr�neo',
	'Ornamentales',
	'170-200',
	'Viveros EL OASIS',
	100,
	6,
	4
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-154',
	'Expositor �rboles borde del mar',
	'Ornamentales',
	'170-200',
	'Viveros EL OASIS',
	100,
	6,
	4
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-155',
	'Acer Negundo  ',
	'Ornamentales',
	'200-225',
	'Viveros EL OASIS',
	100,
	6,
	4
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-156',
	'Acer platanoides  ',
	'Ornamentales',
	'200-225',
	'Viveros EL OASIS',
	100,
	10,
	8
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-157',
	'Acer Pseudoplatanus ',
	'Ornamentales',
	'200-225',
	'Viveros EL OASIS',
	100,
	10,
	8
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-158',
	'Brachychiton Acerifolius  ',
	'Ornamentales',
	'200-225',
	'Viveros EL OASIS',
	100,
	6,
	4
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-159',
	'Brachychiton Discolor  ',
	'Ornamentales',
	'200-225',
	'Viveros EL OASIS',
	100,
	6,
	4
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-160',
	'Brachychiton Rupestris',
	'Ornamentales',
	'170-200',
	'Viveros EL OASIS',
	100,
	10,
	8
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-161',
	'Cassia Corimbosa  ',
	'Ornamentales',
	'200-225',
	'Viveros EL OASIS',
	100,
	6,
	4
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-162',
	'Cassia Corimbosa ',
	'Ornamentales',
	'200-225',
	'Viveros EL OASIS',
	100,
	10,
	8
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-163',
	'Chitalpa Summer Bells   ',
	'Ornamentales',
	'200-225',
	'Viveros EL OASIS',
	80,
	10,
	8
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-164',
	'Erytrina Kafra',
	'Ornamentales',
	'170-180',
	'Viveros EL OASIS',
	80,
	6,
	4
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-165',
	'Erytrina Kafra',
	'Ornamentales',
	'200-225',
	'Viveros EL OASIS',
	80,
	10,
	8
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-166',
	'Eucalyptus Citriodora  ',
	'Ornamentales',
	'170-200',
	'Viveros EL OASIS',
	80,
	6,
	4
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-167',
	'Eucalyptus Ficifolia  ',
	'Ornamentales',
	'170-200',
	'Viveros EL OASIS',
	80,
	6,
	4
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-168',
	'Eucalyptus Ficifolia   ',
	'Ornamentales',
	'200-225',
	'Viveros EL OASIS',
	80,
	10,
	8
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-169',
	'Hibiscus Syriacus  Var. Injertadas 1 Tallo ',
	'Ornamentales',
	'170-200',
	'Viveros EL OASIS',
	80,
	12,
	9
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-170',
	'Lagunaria Patersonii  ',
	'Ornamentales',
	'140-150',
	'Viveros EL OASIS',
	80,
	6,
	4
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-171',
	'Lagunaria Patersonii   ',
	'Ornamentales',
	'200-225',
	'Viveros EL OASIS',
	80,
	10,
	8
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-172',
	'Lagunaria patersonii  calibre 8/10',
	'Ornamentales',
	'200-225',
	'Viveros EL OASIS',
	80,
	18,
	14
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-173',
	'Morus Alba  ',
	'Ornamentales',
	'200-225',
	'Viveros EL OASIS',
	80,
	6,
	4
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-174',
	'Morus Alba  calibre 8/10',
	'Ornamentales',
	'200-225',
	'Viveros EL OASIS',
	80,
	18,
	14
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-175',
	'Platanus Acerifolia   ',
	'Ornamentales',
	'200-225',
	'Viveros EL OASIS',
	80,
	10,
	8
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-176',
	'Prunus pisardii  ',
	'Ornamentales',
	'200-225',
	'Viveros EL OASIS',
	80,
	10,
	8
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-177',
	'Robinia Pseudoacacia Casque Rouge   ',
	'Ornamentales',
	'200-225',
	'Viveros EL OASIS',
	80,
	15,
	12
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-178',
	'Salix Babylonica  Pendula  ',
	'Ornamentales',
	'170-200',
	'Viveros EL OASIS',
	80,
	6,
	4
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-179',
	'Sesbania Punicea   ',
	'Ornamentales',
	'170-200',
	'Viveros EL OASIS',
	80,
	6,
	4
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-180',
	'Tamarix  Ramosissima Pink Cascade   ',
	'Ornamentales',
	'170-200',
	'Viveros EL OASIS',
	80,
	6,
	4
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-181',
	'Tamarix  Ramosissima Pink Cascade   ',
	'Ornamentales',
	'200-225',
	'Viveros EL OASIS',
	80,
	10,
	8
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-182',
	'Tecoma Stands   ',
	'Ornamentales',
	'200-225',
	'Viveros EL OASIS',
	80,
	6,
	4
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-183',
	'Tecoma Stands  ',
	'Ornamentales',
	'200-225',
	'Viveros EL OASIS',
	80,
	10,
	8
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-184',
	'Tipuana Tipu  ',
	'Ornamentales',
	'170-200',
	'Viveros EL OASIS',
	80,
	6,
	4
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-185',
	'Pleioblastus distichus-Bamb� enano',
	'Ornamentales',
	'15-20',
	'Viveros EL OASIS',
	80,
	6,
	4
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-186',
	'Sasa palmata ',
	'Ornamentales',
	'20-30',
	'Viveros EL OASIS',
	80,
	6,
	4
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-187',
	'Sasa palmata ',
	'Ornamentales',
	'40-45',
	'Viveros EL OASIS',
	80,
	10,
	8
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-188',
	'Sasa palmata ',
	'Ornamentales',
	'50-60',
	'Viveros EL OASIS',
	80,
	25,
	20
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-189',
	'Phylostachys aurea',
	'Ornamentales',
	'180-200',
	'Viveros EL OASIS',
	80,
	22,
	17
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-190',
	'Phylostachys aurea',
	'Ornamentales',
	'250-300',
	'Viveros EL OASIS',
	80,
	32,
	25
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-191',
	'Phylostachys Bambusa Spectabilis',
	'Ornamentales',
	'180-200',
	'Viveros EL OASIS',
	80,
	24,
	19
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-192',
	'Phylostachys biseti',
	'Ornamentales',
	'160-170',
	'Viveros EL OASIS',
	80,
	22,
	17
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-193',
	'Phylostachys biseti',
	'Ornamentales',
	'160-180',
	'Viveros EL OASIS',
	80,
	20,
	16
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-194',
	'Pseudosasa japonica (Metake)',
	'Ornamentales',
	'225-250',
	'Viveros EL OASIS',
	80,
	20,
	16
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-195',
	'Pseudosasa japonica (Metake) ',
	'Ornamentales',
	'30-40',
	'Viveros EL OASIS',
	80,
	6,
	4
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-196',
	'Cedrus Deodara ',
	'Ornamentales',
	'80-100',
	'Viveros EL OASIS',
	80,
	10,
	8
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-197',
	'Cedrus Deodara \"Feeling Blue\" Novedad',
	'Ornamentales',
	'rastrero',
	'Viveros EL OASIS',
	80,
	12,
	9
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-198',
	'Juniperus chinensis \"Blue Alps\"',
	'Ornamentales',
	'20-30',
	'Viveros EL OASIS',
	80,
	4,
	3
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-199',
	'Juniperus Chinensis Stricta',
	'Ornamentales',
	'20-30',
	'Viveros EL OASIS',
	80,
	4,
	3
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-200',
	'Juniperus horizontalis Wiltonii',
	'Ornamentales',
	'20-30',
	'Viveros EL OASIS',
	80,
	4,
	3
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-201',
	'Juniperus squamata \"Blue Star\"',
	'Ornamentales',
	'20-30',
	'Viveros EL OASIS',
	80,
	4,
	3
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-202',
	'Juniperus x media Phitzeriana verde',
	'Ornamentales',
	'20-30',
	'Viveros EL OASIS',
	80,
	4,
	3
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-203',
	'Pinus Canariensis',
	'Ornamentales',
	'80-100',
	'Viveros EL OASIS',
	80,
	10,
	8
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-204',
	'Pinus Halepensis',
	'Ornamentales',
	'160-180',
	'Viveros EL OASIS',
	80,
	10,
	8
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-205',
	'Pinus Pinea -Pino Pi�onero',
	'Ornamentales',
	'70-80',
	'Viveros EL OASIS',
	80,
	10,
	8
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-206',
	'Thuja Esmeralda ',
	'Ornamentales',
	'80-100',
	'Viveros EL OASIS',
	80,
	5,
	4
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-207',
	'Tuja Occidentalis Woodwardii',
	'Ornamentales',
	'20-30',
	'Viveros EL OASIS',
	80,
	4,
	3
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-208',
	'Tuja orientalis \"Aurea nana\"',
	'Ornamentales',
	'20-30',
	'Viveros EL OASIS',
	80,
	4,
	3
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-209',
	'Archontophoenix Cunninghamiana',
	'Ornamentales',
	'80 - 100',
	'Viveros EL OASIS',
	80,
	10,
	8
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-210',
	'Beucarnea Recurvata',
	'Ornamentales',
	'130  - 150',
	'Viveros EL OASIS',
	2,
	39,
	31
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-211',
	'Beucarnea Recurvata',
	'Ornamentales',
	'180 - 200',
	'Viveros EL OASIS',
	5,
	59,
	47
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-212',
	'Bismarckia Nobilis',
	'Ornamentales',
	'200 - 220',
	'Viveros EL OASIS',
	4,
	217,
	173
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-213',
	'Bismarckia Nobilis',
	'Ornamentales',
	'240 - 260',
	'Viveros EL OASIS',
	4,
	266,
	212
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-214',
	'Brahea Armata',
	'Ornamentales',
	'45 - 60',
	'Viveros EL OASIS',
	0,
	10,
	8
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-215',
	'Brahea Armata',
	'Ornamentales',
	'120 - 140',
	'Viveros EL OASIS',
	100,
	112,
	89
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-216',
	'Brahea Edulis',
	'Ornamentales',
	'80 - 100',
	'Viveros EL OASIS',
	100,
	19,
	15
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-217',
	'Brahea Edulis',
	'Ornamentales',
	'140 - 160',
	'Viveros EL OASIS',
	100,
	64,
	51
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-218',
	'Butia Capitata',
	'Ornamentales',
	'70 - 90',
	'Viveros EL OASIS',
	100,
	25,
	20
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-219',
	'Butia Capitata',
	'Ornamentales',
	'90 - 110',
	'Viveros EL OASIS',
	100,
	29,
	23
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-220',
	'Butia Capitata',
	'Ornamentales',
	'90 - 120',
	'Viveros EL OASIS',
	100,
	36,
	28
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-221',
	'Butia Capitata',
	'Ornamentales',
	'85 - 105',
	'Viveros EL OASIS',
	100,
	59,
	47
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-222',
	'Butia Capitata',
	'Ornamentales',
	'130 - 150',
	'Viveros EL OASIS',
	100,
	87,
	69
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-223',
	'Chamaerops Humilis',
	'Ornamentales',
	'40 - 45',
	'Viveros EL OASIS',
	100,
	4,
	3
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-224',
	'Chamaerops Humilis',
	'Ornamentales',
	'50 - 60',
	'Viveros EL OASIS',
	100,
	7,
	5
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-225',
	'Chamaerops Humilis',
	'Ornamentales',
	'70 - 90',
	'Viveros EL OASIS',
	100,
	10,
	8
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-226',
	'Chamaerops Humilis',
	'Ornamentales',
	'115 - 130',
	'Viveros EL OASIS',
	100,
	38,
	30
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-227',
	'Chamaerops Humilis',
	'Ornamentales',
	'130 - 150',
	'Viveros EL OASIS',
	100,
	64,
	51
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-228',
	'Chamaerops Humilis \"Cerifera\"',
	'Ornamentales',
	'70 - 80',
	'Viveros EL OASIS',
	100,
	32,
	25
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-229',
	'Chrysalidocarpus Lutescens -ARECA',
	'Ornamentales',
	'130 - 150',
	'Viveros EL OASIS',
	100,
	22,
	17
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-8',
	'Limonero -Plant�n joven',
	'Frutales',
	null,
	'NaranjasValencianas.com',
	15,
	6,
	4
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-80',
	'Higuera',
	'Frutales',
	'12/14',
	'Frutales Talavera S.A',
	50,
	32,
	25
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-81',
	'Higuera',
	'Frutales',
	'14/16',
	'Frutales Talavera S.A',
	50,
	49,
	39
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-82',
	'Higuera',
	'Frutales',
	'16/18',
	'Frutales Talavera S.A',
	50,
	70,
	56
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-83',
	'Higuera',
	'Frutales',
	'18/20',
	'Frutales Talavera S.A',
	50,
	80,
	64
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-84',
	'Kaki',
	'Frutales',
	'8/10',
	'NaranjasValencianas.com',
	50,
	13,
	10
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-85',
	'Kaki',
	'Frutales',
	'16/18',
	'NaranjasValencianas.com',
	50,
	70,
	56
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-86',
	'Manzano',
	'Frutales',
	'8/10',
	'Frutales Talavera S.A',
	50,
	11,
	8
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-87',
	'Manzano',
	'Frutales',
	'10/12',
	'Frutales Talavera S.A',
	50,
	22,
	17
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-88',
	'Manzano',
	'Frutales',
	'12/14',
	'Frutales Talavera S.A',
	50,
	32,
	25
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-89',
	'Manzano',
	'Frutales',
	'14/16',
	'Frutales Talavera S.A',
	50,
	49,
	39
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-9',
	'Limonero calibre 8/10',
	'Frutales',
	null,
	'NaranjasValencianas.com',
	15,
	29,
	23
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-90',
	'N�spero',
	'Frutales',
	'16/18',
	'Frutales Talavera S.A',
	50,
	70,
	56
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-91',
	'N�spero',
	'Frutales',
	'18/20',
	'Frutales Talavera S.A',
	50,
	80,
	64
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-92',
	'Melocotonero',
	'Frutales',
	'8/10',
	'Melocotones de Cieza S.A.',
	50,
	11,
	8
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-93',
	'Melocotonero',
	'Frutales',
	'10/12',
	'Melocotones de Cieza S.A.',
	50,
	22,
	17
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-94',
	'Melocotonero',
	'Frutales',
	'12/14',
	'Melocotones de Cieza S.A.',
	50,
	32,
	25
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-95',
	'Melocotonero',
	'Frutales',
	'14/16',
	'Melocotones de Cieza S.A.',
	50,
	49,
	39
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-96',
	'Membrillero',
	'Frutales',
	'8/10',
	'Frutales Talavera S.A',
	50,
	11,
	8
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-97',
	'Membrillero',
	'Frutales',
	'10/12',
	'Frutales Talavera S.A',
	50,
	22,
	17
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-98',
	'Membrillero',
	'Frutales',
	'12/14',
	'Frutales Talavera S.A',
	50,
	32,
	25
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'FR-99',
	'Membrillero',
	'Frutales',
	'14/16',
	'Frutales Talavera S.A',
	50,
	49,
	39
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-001',
	'Arbustos Mix Maceta',
	'Ornamentales',
	'40-60',
	'Valencia Garden Service',
	25,
	5,
	4
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-100',
	'Mimosa Injerto CLASICA Dealbata ',
	'Ornamentales',
	'100-110',
	'Viveros EL OASIS',
	100,
	12,
	9
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-101',
	'Expositor Mimosa Semilla Mix',
	'Ornamentales',
	'170-200',
	'Viveros EL OASIS',
	100,
	6,
	4
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-102',
	'Mimosa Semilla Bayleyana  ',
	'Ornamentales',
	'170-200',
	'Viveros EL OASIS',
	100,
	6,
	4
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-103',
	'Mimosa Semilla Bayleyana   ',
	'Ornamentales',
	'200-225',
	'Viveros EL OASIS',
	100,
	10,
	8
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-230',
	'Cordyline Australis -DRACAENA',
	'Ornamentales',
	'190 - 210',
	'Viveros EL OASIS',
	100,
	38,
	30
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-231',
	'Cycas Revoluta',
	'Ornamentales',
	'55 - 65',
	'Viveros EL OASIS',
	100,
	15,
	12
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-232',
	'Cycas Revoluta',
	'Ornamentales',
	'80 - 90',
	'Viveros EL OASIS',
	100,
	34,
	27
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-233',
	'Dracaena Drago',
	'Ornamentales',
	'60 - 70',
	'Viveros EL OASIS',
	1,
	13,
	10
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-234',
	'Dracaena Drago',
	'Ornamentales',
	'130 - 150',
	'Viveros EL OASIS',
	2,
	64,
	51
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-235',
	'Dracaena Drago',
	'Ornamentales',
	'150 - 175',
	'Viveros EL OASIS',
	2,
	92,
	73
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-236',
	'Jubaea Chilensis',
	'Ornamentales',
	null,
	'Viveros EL OASIS',
	100,
	49,
	39
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-237',
	'Livistonia Australis',
	'Ornamentales',
	'100 - 125',
	'Viveros EL OASIS',
	50,
	19,
	15
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-238',
	'Livistonia Decipiens',
	'Ornamentales',
	'90 - 110',
	'Viveros EL OASIS',
	50,
	19,
	15
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-239',
	'Livistonia Decipiens',
	'Ornamentales',
	'180 - 200',
	'Viveros EL OASIS',
	50,
	49,
	39
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-240',
	'Phoenix Canariensis',
	'Ornamentales',
	'110 - 130',
	'Viveros EL OASIS',
	50,
	6,
	4
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-241',
	'Phoenix Canariensis',
	'Ornamentales',
	'180 - 200',
	'Viveros EL OASIS',
	50,
	19,
	15
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-242',
	'Rhaphis Excelsa',
	'Ornamentales',
	'80 - 100',
	'Viveros EL OASIS',
	50,
	21,
	16
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-243',
	'Rhaphis Humilis',
	'Ornamentales',
	'150- 170',
	'Viveros EL OASIS',
	50,
	64,
	51
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-244',
	'Sabal Minor',
	'Ornamentales',
	'60 - 75',
	'Viveros EL OASIS',
	50,
	11,
	8
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-245',
	'Sabal Minor',
	'Ornamentales',
	'120 - 140',
	'Viveros EL OASIS',
	50,
	34,
	27
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-246',
	'Trachycarpus Fortunei',
	'Ornamentales',
	'90 - 105',
	'Viveros EL OASIS',
	50,
	18,
	14
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-247',
	'Trachycarpus Fortunei',
	'Ornamentales',
	'250-300',
	'Viveros EL OASIS',
	2,
	462,
	369
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-248',
	'Washingtonia Robusta',
	'Ornamentales',
	'60 - 70',
	'Viveros EL OASIS',
	15,
	3,
	2
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-249',
	'Washingtonia Robusta',
	'Ornamentales',
	'130 - 150',
	'Viveros EL OASIS',
	15,
	5,
	4
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-250',
	'Yucca Jewel',
	'Ornamentales',
	'80 - 105',
	'Viveros EL OASIS',
	15,
	10,
	8
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-251',
	'Zamia Furfuracaea',
	'Ornamentales',
	'90 - 110',
	'Viveros EL OASIS',
	15,
	168,
	134
);
insert into productos (
	codigoproducto,
	nombre,
	gama,
	dimensiones,
	proveedor,
	cantidadenstock,
	precioventa,
	precioproveedor
) values (
	'OR-99',
	'Mimosa DEALBATA Gaulois Astier  ',
	'Ornamentales',
	'200-225',
	'Viveros EL OASIS',
	100,
	14,
	11
);
--------------------------------------------------------
--  Constraints for Table PAGOS
--------------------------------------------------------

alter table "PAGOS" modify (
	"CODIGOCLIENTE" not null enable
);
alter table "PAGOS" modify (
	"FORMAPAGO" not null enable
);
alter table "PAGOS" modify (
	"IDTRANSACCION" not null enable
);
alter table "PAGOS" modify (
	"FECHAPAGO" not null enable
);
alter table "PAGOS" modify (
	"CANTIDAD" not null enable
);
alter table "PAGOS"
	add primary key ( "CODIGOCLIENTE",
	                  "IDTRANSACCION" )
		using index pctfree 10 initrans 2 maxtrans 255 compute statistics
			storage ( initial 65536 next 1048576 minextents 1 maxextents 2147483645 pctincrease 0 freelists 1 freelist groups 1 buffer_pool
			default flash_cache default cell_flash_cache default )
		tablespace "USERS"
	enable;
--------------------------------------------------------
--  Constraints for Table OFICINAS
--------------------------------------------------------

alter table "OFICINAS" modify (
	"CODIGOOFICINA" not null enable
);
alter table "OFICINAS" modify (
	"CIUDAD" not null enable
);
alter table "OFICINAS" modify (
	"PAIS" not null enable
);
alter table "OFICINAS" modify (
	"CODIGOPOSTAL" not null enable
);
alter table "OFICINAS" modify (
	"TELEFONO" not null enable
);
alter table "OFICINAS" modify (
	"LINEADIRECCION1" not null enable
);
alter table "OFICINAS"
	add primary key ( "CODIGOOFICINA" )
		using index pctfree 10 initrans 2 maxtrans 255 compute statistics
			storage ( initial 65536 next 1048576 minextents 1 maxextents 2147483645 pctincrease 0 freelists 1 freelist groups 1 buffer_pool
			default flash_cache default cell_flash_cache default )
		tablespace "USERS"
	enable;
--------------------------------------------------------
--  Constraints for Table EMPLEADOS
--------------------------------------------------------

alter table "EMPLEADOS" modify (
	"CODIGOEMPLEADO" not null enable
);
alter table "EMPLEADOS" modify (
	"NOMBRE" not null enable
);
alter table "EMPLEADOS" modify (
	"APELLIDO1" not null enable
);
alter table "EMPLEADOS" modify (
	"EXTENSION" not null enable
);
alter table "EMPLEADOS" modify (
	"EMAIL" not null enable
);
alter table "EMPLEADOS" modify (
	"CODIGOOFICINA" not null enable
);
alter table "EMPLEADOS"
	add primary key ( "CODIGOEMPLEADO" )
		using index pctfree 10 initrans 2 maxtrans 255 compute statistics
			storage ( initial 65536 next 1048576 minextents 1 maxextents 2147483645 pctincrease 0 freelists 1 freelist groups 1 buffer_pool
			default flash_cache default cell_flash_cache default )
		tablespace "USERS"
	enable;
--------------------------------------------------------
--  Constraints for Table CLIENTES
--------------------------------------------------------

alter table "CLIENTES" modify (
	"CODIGOCLIENTE" not null enable
);
alter table "CLIENTES" modify (
	"NOMBRECLIENTE" not null enable
);
alter table "CLIENTES" modify (
	"TELEFONO" not null enable
);
alter table "CLIENTES" modify (
	"FAX" not null enable
);
alter table "CLIENTES" modify (
	"LINEADIRECCION1" not null enable
);
alter table "CLIENTES" modify (
	"CIUDAD" not null enable
);
alter table "CLIENTES"
	add primary key ( "CODIGOCLIENTE" )
		using index pctfree 10 initrans 2 maxtrans 255 compute statistics
			storage ( initial 65536 next 1048576 minextents 1 maxextents 2147483645 pctincrease 0 freelists 1 freelist groups 1 buffer_pool
			default flash_cache default cell_flash_cache default )
		tablespace "USERS"
	enable;
--------------------------------------------------------
--  Constraints for Table DETALLEPEDIDOS
--------------------------------------------------------

alter table "DETALLEPEDIDOS" modify (
	"CODIGOPEDIDO" not null enable
);
alter table "DETALLEPEDIDOS" modify (
	"CODIGOPRODUCTO" not null enable
);
alter table "DETALLEPEDIDOS" modify (
	"CANTIDAD" not null enable
);
alter table "DETALLEPEDIDOS" modify (
	"PRECIOUNIDAD" not null enable
);
alter table "DETALLEPEDIDOS" modify (
	"NUMEROLINEA" not null enable
);
alter table "DETALLEPEDIDOS"
	add primary key ( "CODIGOPEDIDO",
	                  "CODIGOPRODUCTO" )
		using index pctfree 10 initrans 2 maxtrans 255 compute statistics
			storage ( initial 65536 next 1048576 minextents 1 maxextents 2147483645 pctincrease 0 freelists 1 freelist groups 1 buffer_pool
			default flash_cache default cell_flash_cache default )
		tablespace "USERS"
	enable;
--------------------------------------------------------
--  Constraints for Table PRODUCTOS
--------------------------------------------------------

alter table "PRODUCTOS" modify (
	"CODIGOPRODUCTO" not null enable
);
alter table "PRODUCTOS" modify (
	"NOMBRE" not null enable
);
alter table "PRODUCTOS" modify (
	"GAMA" not null enable
);
alter table "PRODUCTOS" modify (
	"CANTIDADENSTOCK" not null enable
);
alter table "PRODUCTOS" modify (
	"PRECIOVENTA" not null enable
);
alter table "PRODUCTOS"
	add primary key ( "CODIGOPRODUCTO" )
		using index pctfree 10 initrans 2 maxtrans 255 compute statistics
			storage ( initial 65536 next 1048576 minextents 1 maxextents 2147483645 pctincrease 0 freelists 1 freelist groups 1 buffer_pool
			default flash_cache default cell_flash_cache default )
		tablespace "USERS"
	enable;
--------------------------------------------------------
--  Constraints for Table PEDIDOS
--------------------------------------------------------

alter table "PEDIDOS" modify (
	"CODIGOPEDIDO" not null enable
);
alter table "PEDIDOS" modify (
	"FECHAPEDIDO" not null enable
);
alter table "PEDIDOS" modify (
	"FECHAESPERADA" not null enable
);
alter table "PEDIDOS" modify (
	"ESTADO" not null enable
);
alter table "PEDIDOS" modify (
	"CODIGOCLIENTE" not null enable
);
alter table "PEDIDOS"
	add primary key ( "CODIGOPEDIDO" )
		using index pctfree 10 initrans 2 maxtrans 255 compute statistics
			storage ( initial 65536 next 1048576 minextents 1 maxextents 2147483645 pctincrease 0 freelists 1 freelist groups 1 buffer_pool
			default flash_cache default cell_flash_cache default )
		tablespace "USERS"
	enable;
--------------------------------------------------------
--  Constraints for Table GAMASPRODUCTOS
--------------------------------------------------------

alter table "GAMASPRODUCTOS" modify (
	"GAMA" not null enable
);
alter table "GAMASPRODUCTOS"
	add primary key ( "GAMA" )
		using index pctfree 10 initrans 2 maxtrans 255 compute statistics
			storage ( initial 65536 next 1048576 minextents 1 maxextents 2147483645 pctincrease 0 freelists 1 freelist groups 1 buffer_pool
			default flash_cache default cell_flash_cache default )
		tablespace "USERS"
	enable;
--------------------------------------------------------
--  Ref Constraints for Table CLIENTES
--------------------------------------------------------

alter table "CLIENTES"
	add constraint "CLIENTES_EMPLEADOSFK" foreign key ( "CODIGOEMPLEADOREPVENTAS" )
		references "EMPLEADOS" ( "CODIGOEMPLEADO" )
	enable;
--------------------------------------------------------
--  Ref Constraints for Table DETALLEPEDIDOS
--------------------------------------------------------

alter table "DETALLEPEDIDOS"
	add constraint "DETALLEPEDIDOS_PEDIDOFK" foreign key ( "CODIGOPEDIDO" )
		references "PEDIDOS" ( "CODIGOPEDIDO" )
	enable;
alter table "DETALLEPEDIDOS"
	add constraint "DETALLEPEDIDOS_PRODUCTOFK" foreign key ( "CODIGOPRODUCTO" )
		references "PRODUCTOS" ( "CODIGOPRODUCTO" )
	enable;
--------------------------------------------------------
--  Ref Constraints for Table EMPLEADOS
--------------------------------------------------------

alter table "EMPLEADOS"
	add constraint "EMPLEADOS_OFICINASFK" foreign key ( "CODIGOOFICINA" )
		references "OFICINAS" ( "CODIGOOFICINA" )
	enable;
alter table "EMPLEADOS"
	add constraint "EMPLEADOS_EMPLEADOSFK" foreign key ( "CODIGOJEFE" )
		references "EMPLEADOS" ( "CODIGOEMPLEADO" )
	enable;
--------------------------------------------------------
--  Ref Constraints for Table PAGOS
--------------------------------------------------------

alter table "PAGOS"
	add constraint "PAGOS_CLIENTEFK" foreign key ( "CODIGOCLIENTE" )
		references "CLIENTES" ( "CODIGOCLIENTE" )
	enable;
--------------------------------------------------------
--  Ref Constraints for Table PEDIDOS
--------------------------------------------------------

alter table "PEDIDOS"
	add constraint "PEDIDOS_CLIENTE" foreign key ( "CODIGOCLIENTE" )
		references "CLIENTES" ( "CODIGOCLIENTE" )
	enable;
--------------------------------------------------------
--  Ref Constraints for Table PRODUCTOS
--------------------------------------------------------

alter table "PRODUCTOS"
	add constraint "PRODUCTOS_GAMAFK" foreign key ( "GAMA" )
		references "GAMASPRODUCTOS" ( "GAMA" )
	enable;