select
	case
	when smn_cont_costos.smn_criterio_distribucion.cdi_estatus='AC' then '${lbl:b_account_type_active}'
	when smn_cont_costos.smn_criterio_distribucion.cdi_estatus='IN' then '${lbl:b_inactive}'
	end as cdi_estatus_combo,
	smn_cont_costos.smn_criterio_distribucion.cdi_codigo,
	smn_cont_costos.smn_criterio_distribucion.cdi_descripcion,
	smn_cont_costos.smn_criterio_distribucion.cdi_esquema,
	smn_cont_costos.smn_criterio_distribucion.cdi_estatus,
	smn_cont_costos.smn_criterio_distribucion.cdi_vigencia,
	smn_cont_costos.smn_criterio_distribucion.cdi_idioma,
	smn_cont_costos.smn_criterio_distribucion.cdi_usuario,
	smn_cont_costos.smn_criterio_distribucion.cdi_fecha_registro,
	smn_cont_costos.smn_criterio_distribucion.cdi_hora,
		smn_cont_costos.smn_criterio_distribucion.smn_criterio_distribucion_id
	
from
	smn_cont_costos.smn_criterio_distribucion
where
	smn_criterio_distribucion_id is not null
	${filter}
order by
			smn_criterio_distribucion_id
