select
	case
	when smn_cont_costos.smn_nivel_distribucion.niv_estatus='AC' then '${lbl:b_account_type_active}'
	when smn_cont_costos.smn_nivel_distribucion.niv_estatus='IN' then '${lbl:b_inactive}'
	end as niv_estatus_combo,
	smn_cont_costos.smn_nivel_distribucion.niv_codigo,
	smn_cont_costos.smn_nivel_distribucion.niv_descripcion,
	smn_cont_costos.smn_nivel_distribucion.niv_estatus,
	smn_cont_costos.smn_nivel_distribucion.niv_vigencia,
	smn_cont_costos.smn_nivel_distribucion.niv_idioma,
	smn_cont_costos.smn_nivel_distribucion.niv_fecha_registro,
	smn_cont_costos.smn_nivel_distribucion.niv_usuario,
	smn_cont_costos.smn_nivel_distribucion.niv_hora,
		smn_cont_costos.smn_nivel_distribucion.smn_nivel_distribucion_id
	
from
	smn_cont_costos.smn_nivel_distribucion
where
	smn_nivel_distribucion_id is not null
	${filter}
order by
			smn_nivel_distribucion_id
