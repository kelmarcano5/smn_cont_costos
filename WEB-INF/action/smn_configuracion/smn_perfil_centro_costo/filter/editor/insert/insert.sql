INSERT INTO smn_cont_costos.smn_perfil_centro_costo
(
	smn_perfil_centro_costo_id,
	smn_centro_costo_rf,
	smn_funcion_centro_id,
	smn_nivel_distribucion_id,
	smn_doc_base_distribucion_id,
	cdi_estatus,
	cdi_vigencia,
	cdi_idioma,
	cdi_usuario,
	cdi_fecha_registro,
	cdi_hora
)
VALUES
(
	${seq:currval@smn_cont_costos.seq_smn_perfil_centro_costo},
	${fld:smn_centro_costo_rf},
	${fld:smn_funcion_centro_id},
	${fld:smn_nivel_distribucion_id},
	${fld:smn_doc_base_distribucion_id},
	${fld:cdi_estatus},
	${fld:cdi_vigencia},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
