select
	case
	when smn_cont_costos.smn_doc_base_distribucion.dbd_estatus='AC' then '${lbl:b_account_type_active}'
	when smn_cont_costos.smn_doc_base_distribucion.dbd_estatus='IN' then '${lbl:b_inactive}'
	end as dbd_estatus_combo,
	smn_cont_costos.smn_doc_base_distribucion.dbd_codigo,
	smn_cont_costos.smn_doc_base_distribucion.dbd_descripcion,
	smn_cont_costos.smn_doc_base_distribucion.dbd_estatus,
	smn_cont_costos.smn_doc_base_distribucion.dbd_vigencia,
	smn_cont_costos.smn_doc_base_distribucion.dbd_idioma,
	smn_cont_costos.smn_doc_base_distribucion.dbd_usuario,
	smn_cont_costos.smn_doc_base_distribucion.dbd_fecha_registro,
	smn_cont_costos.smn_doc_base_distribucion.dbd_hora,
		smn_cont_costos.smn_doc_base_distribucion.smn_doc_base_distribucion_id
from
	smn_cont_costos.smn_doc_base_distribucion
where
	smn_doc_base_distribucion_id = ${fld:id}
