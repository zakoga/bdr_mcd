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
    -Servicio de Ahorro en la aplicación para el tema de inversiones
    -Venta de Tiempo Aire
    -Pago de Servicios (Agua, Gas, Luz)
En el servicio de Ahorro, cuenta con:
    -Tipos de Ahorro que se usarán para que los usuarios puedan hacer sus aportaciones
    -Depósito de dinero en las cuentas de ahorro
    -Cuenta Bancaria donde se hace el depósito del dinero a ahorrar
    -Autorización de los depósitos realizados
    -Consulta de Saldos
    -Manejo de Polizas de depósito
Organización de su infraestructura, cuenta con una cartera de clientes que estos se organizan en estructuras jerárquicas como Empresa, División, Planta o Sucursales y los empleados están contenidos dentro de las plantas o sucursales, los empleados en el sistema se requieren representar por un usuario con el cual puedan acceder y poder hacer sus aportaciones hacia sus ahorros, realizar algún pago de servicio o tiempo aire.

Los Datos que se supone que se manejan son los siguientes:
    -Usuario
        -Nombre
        -Apellido Paterno
        -Apellido Materno
        -CURP
        -Correo Electrónico
        -RFC
        -Teléfono
        -Celular
        -




## SGBD Investigada
Elegí MySQL por las siguientes razones:

-Tiene el respaldo de Oracle, empresa pilar en el desarrollo de base de datos.
-Alta Escalabilidad, en caso de querer migrar a AWS y hacer uso de Aurora DB es totalmente compatible, se puede trabajar sin licencia en ambietes de desarrollo, esto reduce costos de infraestructura.
-Es una base de datos Open Source, por lo mismo es de uso gratuito, si se requiere en algún punto hacer una mejora de versión es fácil hacerlo.
-Usa SQL Standard.
-Es una base de datos relacional.
-Fácil instalar y no requiere de grandes capacidades, en el tema de servidores de aplicaciones, para correr el motor de BD.
-Hay mucho soporte en la comunidad, debido a que es open source y tiene mucho tiempo en el mercado esto lo hace, a la par, muy segura.
-Es compatible con la mayoría de los sistemas operativos, incluyendo ya versiones antiguas o descontinuadas, debido al tiempo que lleva en el mercado este producto.

https://aws.amazon.com/es/rds/aurora/
https://es.wikipedia.org/wiki/Oracle_Corporation
