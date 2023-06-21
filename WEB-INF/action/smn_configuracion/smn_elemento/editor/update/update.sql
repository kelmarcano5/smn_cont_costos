UPDATE smn_cont_costos.smn_elemento SET
	ele_codigo=${fld:ele_codigo},
	ele_descripcion=${fld:ele_descripcion},
	ele_estatus=${fld:ele_estatus},
	ele_vigencia=${fld:ele_vigencia},
	ele_idioma='${def:locale}',
	ele_usuario='${def:user}',
	ele_fecha_registro={d '${def:date}'},
	ele_hora='${def:time}'

WHERE
	smn_elemento_id=${fld:id}

