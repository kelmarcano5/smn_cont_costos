select
	case
	when smn_cont_costos.smn_bases_distribucion.bdi_forma_calculo='MA' then '${lbl:b_manual}'
	when smn_cont_costos.smn_bases_distribucion.bdi_forma_calculo='AU' then '${lbl:b_automatica}'
	end as bdi_forma_calculo_combo,
select
	case
	when smn_cont_costos.smn_bases_distribucion.bdi_tipo_distribucion='FI' then '${lbl:b_fijo}'
	when smn_cont_costos.smn_bases_distribucion.bdi_tipo_distribucion='VA' then '${lbl:b_variable}'
	end as bdi_tipo_distribucion_combo,
select
select
select
	case
	when smn_cont_costos.smn_bases_distribucion.bdi_estatus='AC' then '${lbl:b_active}'
	when smn_cont_costos.smn_bases_distribucion.bdi_estatus='IN' then '${lbl:b_inactive}'
	end as bdi_estatus_combo,
	smn_cont_costos.smn_bases_distribucion.*
from
	smn_cont_costos.smn_bases_distribucion
where
	smn_bases_distribucion_id = ${fld:id}
