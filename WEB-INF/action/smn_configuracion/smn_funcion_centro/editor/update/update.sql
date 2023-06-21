UPDATE smn_cont_costos.smn_funcion_centro SET
	fun_codigo=${fld:fun_codigo},
	fun_descripcion=${fld:fun_descripcion},
	fun_funcion=${fld:fun_funcion},
	fun_estatus=${fld:fun_estatus},
	fun_vigencia=${fld:fun_vigencia},
	fun_idioma='${def:locale}',
	fun_usuario='${def:user}',
	fun_fecha_registro='${def:date}',
	fun_hora='${def:time}'

WHERE
	smn_funcion_centro_id=${fld:id}

