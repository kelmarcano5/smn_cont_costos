INSERT INTO smn_cont_costos.smn_rel_servicio_elemento
(
	smn_rel_servicio_elemento_id,
	smn_servicios_rf,
	smn_elemento_id,
	rse_idioma,
	rse_usuario,
	rse_fecha_registro,
	rse_hora
)
VALUES
(
	${seq:currval@smn_cont_costos.seq_smn_rel_servicio_elemento},
	${fld:smn_servicios_rf},
	${fld:smn_elemento_id},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
