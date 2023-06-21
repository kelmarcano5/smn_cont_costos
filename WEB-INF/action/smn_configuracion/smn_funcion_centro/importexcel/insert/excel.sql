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
	${seq:nextval@smn_cont_costos.seq_smn_funcion_centro},
	?,
	?,
	?,
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
