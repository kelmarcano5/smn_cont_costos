select
		smn_cont_costos.smn_elemento.smn_elemento_id,
	case
	when smn_cont_costos.smn_elemento.ele_estatus='AC' then '${lbl:b_account_type_active}'
	when smn_cont_costos.smn_elemento.ele_estatus='IN' then '${lbl:b_inactive}'
	end as ele_estatus_combo,
	smn_cont_costos.smn_elemento.ele_codigo,
	smn_cont_costos.smn_elemento.ele_descripcion,
	smn_cont_costos.smn_elemento.ele_estatus,
	smn_cont_costos.smn_elemento.ele_vigencia,
	smn_cont_costos.smn_elemento.ele_idioma,
	smn_cont_costos.smn_elemento.ele_usuario,
	smn_cont_costos.smn_elemento.ele_fecha_registro,
	smn_cont_costos.smn_elemento.ele_hora,
		smn_cont_costos.smn_elemento.smn_elemento_id
	
from
	smn_cont_costos.smn_elemento
