INSERT INTO smn_cont_costos.smn_rel_centro_costo_item
(
	smn_rel_centro_costo_item_id,
	smn_centro_costo_rf,
	smn_item_rf,
	rci_idioma,
	rci_usuario,
	rci_fecha_registro,
	rci_hora
)
VALUES
(
	${seq:nextval@smn_cont_costos.seq_smn_rel_centro_costo_item},
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
