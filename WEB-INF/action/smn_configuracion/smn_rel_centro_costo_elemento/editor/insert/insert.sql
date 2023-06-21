INSERT INTO smn_cont_costos.smn_rel_centro_costo_elemento
(
	smn_rel_centro_costo_elemento_id,
	smn_centro_costo_rf,
	smn_elemento_id,
	rce_idioma,
	rce_usuario,
	rce_fecha_registro,
	rce_hora
)
VALUES
(
	${seq:currval@smn_cont_costos.seq_smn_rel_centro_costo_elemento},
	${fld:smn_centro_costo_rf},
	${fld:smn_elemento_id},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
