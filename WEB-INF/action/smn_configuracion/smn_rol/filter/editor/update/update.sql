UPDATE smn_cont_costos.smn_rol SET
	smn_usuarios_rf=${fld:smn_usuarios_rf},
	smn_estructura_organizacional_rf=${fld:smn_estructura_organizacional_rf},
	rol_tipo=${fld:rol_tipo},
	smn_corporaciones_rf=${fld:smn_corporaciones_rf},
	smn_sucursales_rf=${fld:smn_sucursales_rf},
	rol_estatus=${fld:rol_estatus},
	rol_vigencia=${fld:rol_vigencia},
	rol_idioma='${def:locale}',
	rol_usuario='${def:user}',
	rol_fecha_registro='${def:date}',
	rol_hora='${def:time}'

WHERE
	smn_rol_id=${fld:id}

