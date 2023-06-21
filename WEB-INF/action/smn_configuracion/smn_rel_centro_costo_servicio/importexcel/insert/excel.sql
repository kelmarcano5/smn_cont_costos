INSERT INTO smn_cont_costos.smn_rel_centro_costo_servicio
(
	smn_rel_centro_costo_servicio_id,
	smn_centro_costo_rf,
	smn_servicio_rf,
	rcs_idioma,
	rcs_usuario,
	rcs_fecha_registro,
	rcs_hora
)
VALUES
(
	${seq:nextval@smn_cont_costos.seq_smn_rel_centro_costo_servicio},
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
