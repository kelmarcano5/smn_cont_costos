UPDATE smn_cont_costos.smn_rel_centro_costo_item SET
	smn_centro_costo_rf=${fld:smn_centro_costo_rf},
	smn_item_rf=${fld:smn_item_rf},
	rci_idioma='${def:locale}',
	rci_usuario='${def:user}',
	rci_fecha_registro='${def:date}',
	rci_hora='${def:time}'

WHERE
	smn_rel_centro_costo_item_id=${fld:id}

