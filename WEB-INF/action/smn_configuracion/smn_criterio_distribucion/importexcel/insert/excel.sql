INSERT INTO smn_cont_costos.smn_criterio_distribucion
(
	smn_criterio_distribucion_id,
	cdi_codigo,
	cdi_descripcion,
	cdi_esquema,
	cdi_estatus,
	cdi_vigencia,
	cdi_idioma,
	cdi_usuario,
	cdi_fecha_registro,
	cdi_hora
)
VALUES
(
	${seq:nextval@smn_cont_costos.seq_smn_criterio_distribucion},
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
