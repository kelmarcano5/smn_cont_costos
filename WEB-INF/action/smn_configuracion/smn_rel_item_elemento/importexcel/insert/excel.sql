INSERT INTO smn_cont_costos.smn_rel_item_elemento
(
	smn_rel_item_elemento_id,
	smn_item_rf,
	smn_elemento_id,
	rie_idioma,
	rie_usuario,
	rie_fecha_registro,
	rie_hora
)
VALUES
(
	${seq:nextval@smn_cont_costos.seq_smn_rel_item_elemento},
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
