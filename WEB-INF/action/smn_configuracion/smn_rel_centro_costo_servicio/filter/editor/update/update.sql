UPDATE smn_cont_costos.smn_rel_centro_costo_servicio SET
	smn_centro_costo_rf=${fld:smn_centro_costo_rf},
	smn_servicio_rf=${fld:smn_servicio_rf},
	rcs_idioma='${def:locale}',
	rcs_usuario='${def:user}',
	rcs_fecha_registro={d '${def:date}'},
	rcs_hora='${def:time}'

WHERE
	smn_rel_centro_costo_servicio_id=${fld:id}

