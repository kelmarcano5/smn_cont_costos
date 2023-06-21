UPDATE smn_cont_costos.smn_doc_base_distribucion SET
	dbd_codigo=${fld:dbd_codigo},
	dbd_descripcion=${fld:dbd_descripcion},
	dbd_estatus=${fld:dbd_estatus},
	dbd_vigencia=${fld:dbd_vigencia},
	dbd_idioma='${def:locale}',
	dbd_usuario='${def:user}',
	dbd_fecha_registro='${def:date}',
	dbd_hora='${def:time}'

WHERE
	smn_doc_base_distribucion_id=${fld:id}

