UPDATE smn_cont_costos.smn_bases_distribucion SET
	bdi_codigo=${fld:bdi_codigo},
	bdi_descripcion=${fld:bdi_descripcion},
	bdi_forma_calculo=${fld:bdi_forma_calculo},
	smn_nivel_distribucion_id=${fld:smn_nivel_distribucion_id},
	bdi_tipo_distribucion=${fld:bdi_tipo_distribucion},
	smn_cuenta_mayor_rf=${fld:smn_cuenta_mayor_rf},
	smn_modelo_comprobante_rf=${fld:smn_modelo_comprobante_rf},
	smn_criterio_distribucion_id=${fld:smn_criterio_distribucion_id},
	bdi_estatus=${fld:bdi_estatus},
	bdi_idioma='${def:locale}',
	bdi_usuario='${def:user}',
	bdi_fecha_registro={d '${def:date}'},
	bdi_hora='${def:time}'

WHERE
	smn_bases_distribucion_id=${fld:id}

