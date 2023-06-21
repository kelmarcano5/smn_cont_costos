UPDATE smn_cont_costos.smn_criterio_distribucion SET
	cdi_codigo=${fld:cdi_codigo},
	cdi_descripcion=${fld:cdi_descripcion},
	cdi_esquema=${fld:cdi_esquema},
	cdi_estatus=${fld:cdi_estatus},
	cdi_vigencia=${fld:cdi_vigencia},
	cdi_idioma='${def:locale}',
	cdi_usuario='${def:user}',
	cdi_fecha_registro={d '${def:date}'},
	cdi_hora='${def:time}'

WHERE
	smn_criterio_distribucion_id=${fld:id}

