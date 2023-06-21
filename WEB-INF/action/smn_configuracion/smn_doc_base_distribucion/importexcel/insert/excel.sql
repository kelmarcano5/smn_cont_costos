INSERT INTO smn_cont_costos.smn_doc_base_distribucion
(
	smn_doc_base_distribucion_id,
	dbd_codigo,
	dbd_descripcion,
	dbd_estatus,
	dbd_vigencia,
	dbd_idioma,
	dbd_usuario,
	dbd_fecha_registro,
	dbd_hora
)
VALUES
(
	${seq:nextval@smn_cont_costos.seq_smn_doc_base_distribucion},
	?,
	?,
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
