UPDATE smn_cont_costos.smn_rel_centro_costo_elemento SET
	smn_centro_costo_rf=${fld:smn_centro_costo_rf},
	smn_elemento_id=${fld:smn_elemento_id},
	rce_idioma='${def:locale}',
	rce_usuario='${def:user}',
	rce_fecha_registro={d '${def:date}'},
	rce_hora='${def:time}'

WHERE
	smn_rel_centro_costo_elemento_id=${fld:id}

