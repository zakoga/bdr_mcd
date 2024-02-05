# Tarea 3 Modelo Relacional, Diagrama Entidad-Relacion y Algebra Relacional

## Modelo Relacional
![Modelo Relacional](/imagenes/modelo_relacional.png)
## Diagrama Entidad-Relacion
![Diagrama Entidad-Relacion](/imagenes/DER_tarea3.png)

### Algebra Relacional
***π*** u . idusuario, upu . idperfilusuario, pua . idacceso
 (***ρ*** usuario ***⋈*** u . idusuario = upu . idusuario
  ***ρ*** usuarioperfilusuario ***⋈*** upu . idperfilusuario = pua . idperfilusuario
   ***ρ*** perfilusuarioacceso)


***π*** du . iddepositousuario, u . username, u . nombre, u . apellidopaterno, u . apellidomaterno
 (***ρ*** du depositousuario ***⋈*** du . idusuario = u . idusuario
  ***ρ*** u usuario)

***π*** cb . numerocuentabancaria, u . nombre, u . apellidopaterno, u . apellidomaterno
 ***σ*** cb . numerocuentabancaria = "8909870965095490"
  (***ρ*** cb cuentabancaria ***⋈*** cb . idcuentabancaria = du . idcuentabancaria
   ***ρ*** du depositousuario ***⋈*** du . idusuario = u . idusuario
    ***ρ*** u usuario)

***π*** c . nombre, ee . idelementoestructuraempresa, ee . nombre
 ***σ*** c . nombre = "OXXO"
  (***ρ*** ee elementoestructuraempresa ***⋈*** ee . idcliente = c . idcliente
   ***ρ*** c cliente)
