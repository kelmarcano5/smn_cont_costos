select
		smn_cont_costos.smn_bases_distribucion.smn_bases_distribucion_id,
	case
	when smn_cont_costos.smn_bases_distribucion.bdi_forma_calculo='MA' then '${lbl:b_manual}'
	when smn_cont_costos.smn_bases_distribucion.bdi_forma_calculo='AU' then '${lbl:b_automatica}'
	end as bdi_forma_calculo_combo,
select
		smn_cont_costos.smn_bases_distribucion.smn_bases_distribucion_id,
	case
	when smn_cont_costos.smn_bases_distribucion.bdi_tipo_distribucion='FI' then '${lbl:b_fijo}'
	when smn_cont_costos.smn_bases_distribucion.bdi_tipo_distribucion='VA' then '${lbl:b_variable}'
	end as bdi_tipo_distribucion_combo,
select
		smn_cont_costos.smn_bases_distribucion.smn_bases_distribucion_id,
select
		smn_cont_costos.smn_bases_distribucion.smn_bases_distribucion_id,
select
		smn_cont_costos.smn_bases_distribucion.smn_bases_distribucion_id,
	case
	when smn_cont_costos.smn_bases_distribucion.bdi_estatus='AC' then '${lbl:b_active}'
	when smn_cont_costos.smn_bases_distribucion.bdi_estatus='IN' then '${lbl:b_inactive}'
	end as bdi_estatus_combo,
	smn_cont_costos.smn_bases_distribucion.bdi_codigo,
	smn_cont_costos.smn_bases_distribucion.bdi_descripcion,
	smn_cont_costos.smn_bases_distribucion.bdi_forma_calculo,
	smn_cont_costos.smn_bases_distribucion.smn_nivel_distribucion_id,
	smn_cont_costos.smn_bases_distribucion.bdi_tipo_distribucion,
	smn_cont_costos.smn_bases_distribucion.smn_cuenta_mayor_rf,
	smn_cont_costos.smn_bases_distribucion.smn_modelo_comprobante_rf,
	smn_cont_costos.smn_bases_distribucion.smn_criterio_distribucion_id,
	smn_cont_costos.smn_bases_distribucion.bdi_estatus,
	smn_cont_costos.smn_bases_distribucion.bdi_fecha_registro
	
from
	smn_cont_costos.smn_bases_distribucion
