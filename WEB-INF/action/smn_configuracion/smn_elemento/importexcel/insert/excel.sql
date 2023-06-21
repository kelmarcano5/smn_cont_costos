INSERT INTO smn_cont_costos.smn_elemento
(
	smn_elemento_id,
	ele_codigo,
	ele_descripcion,
	ele_estatus,
	ele_vigencia,
	ele_idioma,
	ele_usuario,
	ele_fecha_registro,
	ele_hora
)
VALUES
(
	${seq:nextval@smn_cont_costos.seq_smn_elemento},
	?,
	?,
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
