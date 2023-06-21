UPDATE smn_cont_costos.smn_rel_item_elemento SET
	smn_item_rf=${fld:smn_item_rf},
	smn_elemento_id=${fld:smn_elemento_id},
	rie_idioma='${def:locale}',
	rie_usuario='${def:user}',
	rie_fecha_registro= '${def:date}',
	rie_hora='${def:time}'

WHERE
	smn_rel_item_elemento_id=${fld:id}

