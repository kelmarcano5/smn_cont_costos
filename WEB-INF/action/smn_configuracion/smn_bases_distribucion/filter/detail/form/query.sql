select
	bdi.smn_bases_distribucion_id,
	case
		when bdi.bdi_forma_calculo='MA' then '${lbl:b_manual}'
		when bdi.bdi_forma_calculo='AU' then '${lbl:b_automatica}'
	end as bdi_forma_calculo_combo,
	case
		when bdi.bdi_tipo_distribucion='FI' then '${lbl:b_fijo}'
		when bdi.bdi_tipo_distribucion='VA' then '${lbl:b_variable}'
	end as bdi_tipo_distribucion_combo,
	case
		when bdi.bdi_estatus='AC' then '${lbl:b_active}'
		when bdi.bdi_estatus='IN' then '${lbl:b_inactive}'
	end as bdi_estatus_combo,
	bdi.bdi_codigo,
	bdi.bdi_descripcion,
	bdi.bdi_forma_calculo,
	nvc.niv_descripcion as smn_nivel_distribucion_id,
	bdi.bdi_tipo_distribucion,
	cum.cum_codigo as smn_cuenta_mayor_rf,
	modc.mcc_descripcion_comprobante as smn_modelo_comprobante_rf,
	cri.cdi_descripcion as smn_criterio_distribucion_id,
	bdi.bdi_estatus,
	bdi.bdi_fecha_registro
	
from
	smn_cont_costos.smn_bases_distribucion bdi
	inner join smn_cont_financiera.smn_cuenta_mayor cum on cum.smn_cuenta_mayor_id = bdi.smn_cuenta_mayor_rf
	inner join smn_cont_financiera.smn_modelo_comprobante modc on modc.smn_modelo_comprobante_id =	bdi.smn_modelo_comprobante_rf
	inner join smn_cont_costos.smn_criterio_distribucion cri on cri.smn_criterio_distribucion_id = bdi.smn_criterio_distribucion_id
	inner join smn_cont_costos.smn_nivel_distribucion nvc on nvc.smn_nivel_distribucion_id = bdi.smn_nivel_distribucion_id

where
	smn_bases_distribucion_id = ${fld:id}
