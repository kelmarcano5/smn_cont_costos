UPDATE smn_cont_costos.smn_perfil_centro_costo SET
	smn_centro_costo_rf=${fld:smn_centro_costo_rf},
	smn_funcion_centro_id=${fld:smn_funcion_centro_id},
	smn_nivel_distribucion_id=${fld:smn_nivel_distribucion_id},
	smn_doc_base_distribucion_id=${fld:smn_doc_base_distribucion_id},
	cdi_estatus=${fld:cdi_estatus},
	cdi_vigencia=${fld:cdi_vigencia},
	cdi_idioma='${def:locale}',
	cdi_usuario='${def:user}',
	cdi_fecha_registro={d '${def:date}'},
	cdi_hora='${def:time}'

WHERE
	smn_perfil_centro_costo_id=${fld:id}

