UPDATE smn_cont_costos.smn_rel_servicio_elemento SET
	smn_servicios_rf=${fld:smn_servicios_rf},
	smn_elemento_id=${fld:smn_elemento_id},
	rse_idioma='${def:locale}',
	rse_usuario='${def:user}',
	rse_fecha_registro={d '${def:date}'},
	rse_hora='${def:time}'

WHERE
	smn_rel_servicio_elemento_id=${fld:id}

