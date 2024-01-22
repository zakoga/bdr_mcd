## Descripción de BD
Un cliente tiene una empresa de servicios y requiere de una aplicación poder administrar toda su operación que consiste en lo siguiente:
* Administración de Usuarios
* Gestión de los productos/servicios que vende a sus clientes
* Organización de su infraestructura

Para la Administración de Usuarios, necesita:
* Registro de Usuarios, datos personales, username y contraseña
* Control de Accesos al sistema, menús, pantallas a las que puede tener acceso un usuario
* Forma de Recuperar una contraseña

Para la gestión de los productos/servicios, lo primero es conocer los servicios que vende en estos encontramos:
- Servicio de Ahorro en la aplicación para el tema de inversiones
- Venta de Tiempo Aire
- Pago de Servicios (Agua, Gas, Luz)
En el servicio de Ahorro, cuenta con:
- Tipos de Ahorro que se usarán para que los usuarios puedan hacer sus aportaciones
- Depósito de dinero en las cuentas de ahorro
- Cuenta Bancaria donde se hace el depósito del dinero a ahorrar
- Autorización de los depósitos realizados
- Consulta de Saldos
- Manejo de Polizas de depósitos

En la organización de su infraestructura cuenta con una cartera de clientes que estos se organizan en estructuras jerárquicas como Empresa, División, Planta o Sucursales y los empleados están contenidos dentro de las plantas o sucursales, los empleados en el sistema se requieren representar por un usuario con el cual puedan acceder y poder hacer sus aportaciones hacia sus ahorros, realizar algún pago de servicio o tiempo aire.

Los Datos que se supone que se manejan son los siguientes:
- Usuario
    - Id Usuario integer consecutivo
    - Nombre varchar (30)
    - Apellido Paterno varchar (30)
    - Apellido Materno varchar (30)
    - CURP varchar (20)
    - Correo Electrónico varchar(100)
    - RFC varchar(15)
    - Teléfono varchar(15)
    - Celular varchar(15)
    - UserName varchar(30)
    - Password varchar(15)
    - PasswordTemporal varchar(15)
    - Id Elemento Estructura Empresa integer FK Elemento Estructura Empresa
- Acceso
    - Id Acceso integer consecutivo
    - Id Acceso integer FK Acceso
    - Nombre varchar(30)
    - URL varchar(100)
    - esMenu bit(1)

- PerfilUsuario
    - Id Perfil Usuario integer consecutivo
    - Nombre varchar(30)

- PerfilUsuarioAcceso
    - Id Perfil Usuario Acceso integer consecutivo
    - Id Perfil Usuario Integer FK PerfilUsuario
    - Id Acceso Integer FK Acceso

- UsuarioPerfilUsuario
    - Id UsuarioPerfilUsuario integer
    - Id Perfil Usuario integer FK PerfilUsuario
    - Id Usuario integer FK Usuario

Para la Organización de los clientes:
- Cliente
    - Id Cliente integer consecutivo
    - Nombre varchar(30)
    - RazonSocial varchar(30)
    - Dirección varchar(100)
    - RFC varchar(15)

- Elemento Estructura Empresa
    - Id Elemento Estructura Empresa integer consecutivo
    - Nombre
    - Tipo Elemento Estructura varchar(30) // empresa, planta, sucursal, division

- Ahorro
    - Id Ahorro integer consecutivo
    - Nombre varchar(30)
    - Clave char(5)

- Ahorrro Elemento Estructura Empresa    
    - Id Ahorro Elemento Estructura Empresa integer consecutivo
    - Id Elemento Estructura Empresa integer FK Elemento Estructura Empresa
    - Id Ahorro integer FK Ahorro

- Deposito Usuario
    - Id Deposito Usuario integer 
    - Id Tipo Movimiento Deposito integer FK Tipo Movimiento Deposito
    - Origen Saldo varchar(20) // Deposito Banco o Saldo Ahorro
    - Monto decimal (10,2)
    - Id Ahorro integer FK Ahorro
    - Folio varchar (30) //Codigo de barras del recibo, numero de celular, Folio de la ficha de deposito al banco
    - Id Cuenta Bancaria integer FK Cuenta Bancaria
    - Fecha datetime
    - Estatus varchar(5)

- Cuenta Bancaria
    - Id Cuenta Bancaria integer consecutivo
    - Numero Cuenta Bancaria integer
    - Razon Social varchar (30)
    - Banco varchar (30)

- Poliza
    - Id Poliza integer consecutivo
    - Id Usuario FK integer
    - Monto decimal(10,2)
    - Fecha datetime

- Movimiento Poliza
    - Id Movimiento Poliza integer consecutivo
    - Id Poliza integer FK Poliza
    - Cuenta Contable varchar(50)
    - Monto decimal(10,2)

- Tipo Movimiento Deposito
    - Id Tipo Movimiento Deposito integer consecutivo
    - Clave char (5)
    - Nombre varchar(30) //Deposito Ahorro, Pago Tiempo Aire, Pago de Servicio Agua, Pago Servicio Luz, Pago Servicio Gas



## SGBD Investigada
Elegí MySQL por las siguientes razones:

- Tiene el respaldo de Oracle, empresa pilar en el desarrollo de base de datos.
- Alta Escalabilidad, en caso de querer migrar a AWS y hacer uso de Aurora DB es totalmente compatible, se puede trabajar sin licencia en ambietes de desarrollo, esto reduce costos de infraestructura.
- Es una base de datos Open Source, por lo mismo es de uso gratuito, si se requiere en algún punto hacer una mejora de versión es fácil hacerlo.
- Usa SQL Standard.
- Es una base de datos relacional.
- Fácil instalar y no requiere de grandes capacidades, en el tema de servidores de aplicaciones, para correr el motor de BD.
- Hay mucho soporte en la comunidad, debido a que es open source y tiene mucho tiempo en el mercado esto lo hace, a la par, muy segura.
- Es compatible con la mayoría de los sistemas operativos, incluyendo ya versiones antiguas o descontinuadas, debido al tiempo que lleva en el mercado este producto.
- Cuenta con módulos para el uso en el tema de ciencia de datos, análisis de data warehouses y data lakes (MySQL HeatWave), MySQL Cluster CGE para la escalabilidad con temas de Cloud y servicios de comunicación para arquitecturas más complejas.

https://www.mysql.com
https://aws.amazon.com/es/rds/aurora/
https://es.wikipedia.org/wiki/Oracle_Corporation
