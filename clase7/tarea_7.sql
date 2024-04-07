--Parte de las inconsistencias encontradas fue más de la información que al momento de generar los datos, algunos datos no tenían mucho sentido en como estaban relacionados
--por ejemplo que un cliente tuviera una relación con información ligada para otro cliente, este debido a que fue generada por una herramienta que lo hizo bajo ciertos criterios
--donde no corroboraba esta inconsistencia.


-- Subconsulta para obtener los datos de los usuarios que depositan más de 100 pesos
select CONCAT(u.nombre,' ',u.apellidoPaterno,' ',u.apellidoMaterno) as nombre_usuario, pu.nombre as nombre_perfil,a.nombre as nombre_acceso from Usuario u
join UsuarioPerfilUsuario upu on (u.idUsuario = upu.idUsuario)
join PerfilUsuario pu on (upu.idPerfilUsuario=pu.idPerfilUsuario)
join PerfilUsuarioAcceso pua on (pu.idPerfilUsuario = pua.idPerfilUsuario)
join Acceso a on (pua.idAcceso = a.idAcceso)
where CONCAT(u.nombre,' ',u.apellidoPaterno,' ',u.apellidoMaterno) in (
select CONCAT(u.nombre,' ',u.apellidoPaterno,' ',u.apellidoMaterno) from usuario u1
join DepositoUsuario du on (u1.idUsuario = du.idUsuario) 
where du.monto >100);


--Subconsulta para obtener información de las cuentas bancarias que tienen más de dos depositos a la semana
select * from CuentaBancaria cb 
join (
select  cu.banco, count(du.idDepositoUsuario) from DepositoUsuario du
join CuentaBancaria cu on (du.idCuentaBancaria = cu.idCuentaBancaria)
group by cu.banco
having count(du.idDepositoUsuario)>2) as b on (cb.banco = b.banco);


-- Depositos que se hicieron a los ahorros asignados a un cliente en particular
select * from DepositoUsuario d where d.idAhorro in (
select aeee.idAhorro from Cliente cl 
join ElementoEstructuraEmpresa eee on (cl.idCliente = eee.idCliente)
join AhorroElementoEstructuraEmpresa aeee on (eee.idElementoEstructuraEmpresa =aeee.idElementoEstructuraEmpresa)
where cl.nombre = 'Future-proofed encompassing ar'
);

