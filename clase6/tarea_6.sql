-- promedio
SELECT idUsuario,avg(monto) FROM mcd_sistema.DepositoUsuario group by idUsuario;
-- minimos
select idUsuario,min(monto) as minimo_por_usuario from mcd_sistema.DepositoUsuario group by idUsuario;
-- maximos
select idUsuario,max(monto) as maximo_por_usuario from mcd_sistema.DepositoUsuario group by idUsuario;
-- moda
select id,nombre,max(moda) from
(select d.idUsuario as id,CONCAT(u.nombre,' ',u.apellidoPaterno,' ',u.apellidoMaterno) as nombre,round(sum(d.idUsuario)/d.idUSuario) as moda from DepositoUsuario as d 
join Usuario u on (d.idUsuario = u.idUsuario)
group by d.idUsuario) as tabla_moda;


-- cuartiles
SET @row_number = 0;  
SELECT  id,nombre, moda, row_num, 
(CASE
    WHEN row_num<(66/4)*1 THEN 1
    WHEN row_num<(66/4)*2 THEN 2
    WHEN row_num<(66/4)*3 THEN 3
    ELSE 4
END) as cuartil 
from (SELECT *,
(@row_number:=@row_number + 1) AS row_num

FROM  
(select 
	d.idUsuario as id,
    CONCAT(u.nombre,' ',u.apellidoPaterno,' ',u.apellidoMaterno) as nombre,
    round(sum(d.idUsuario)/d.idUSuario) as moda
    from DepositoUsuario as d 
join Usuario u on (d.idUsuario = u.idUsuario)
group by d.idUsuario order by moda) as tabla_moda) as tabla_cuartiles;