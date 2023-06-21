INSERT INTO smn_cont_costos.smn_funcion_centro
(
	smn_funcion_centro_id,
	fun_codigo,
	fun_descripcion,
	fun_funcion,
	fun_estatus,
	fun_vigencia,
	fun_idioma,
	fun_usuario,
	fun_fecha_registro,
	fun_hora
)
VALUES
(
	${seq:currval@smn_cont_costos.seq_smn_funcion_centro},
	${fld:fun_codigo},
	${fld:fun_descripcion},
	${fld:fun_funcion},
	${fld:fun_estatus},
	${fld:fun_vigencia},
	'${def:locale}',
	'${def:user}',
	'${def:date}',
	'${def:time}'
)
