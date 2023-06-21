UPDATE smn_cont_costos.smn_nivel_distribucion SET
	niv_codigo=${fld:niv_codigo},
	niv_descripcion=${fld:niv_descripcion},
	niv_estatus=${fld:niv_estatus},
	niv_vigencia=${fld:niv_vigencia},
	niv_idioma='${def:locale}',
	niv_fecha_registro='${def:date}',
	niv_usuario='${def:user}',
	niv_hora='${def:time}'

WHERE
	smn_nivel_distribucion_id=${fld:id}

