select
	case
		when smn_cont_costos.smn_bases_distribucion.bdi_forma_calculo='MA' then '${lbl:b_manual}'
		when smn_cont_costos.smn_bases_distribucion.bdi_forma_calculo='AU' then '${lbl:b_automatica}'
	end as bdi_forma_calculo_combo,
	(select nvd.niv_descripcion from  smn_cont_costos.smn_nivel_distribucion nvd  where nvd.smn_nivel_distribucion_id is not null  and nvd.smn_nivel_distribucion_id=smn_cont_costos.smn_bases_distribucion.smn_nivel_distribucion_id  order by nvd.smn_nivel_distribucion_id desc ) as smn_nivel_distribucion_id_combo,
	case
		when smn_cont_costos.smn_bases_distribucion.bdi_tipo_distribucion='FI' then '${lbl:b_fijo}'
		when smn_cont_costos.smn_bases_distribucion.bdi_tipo_distribucion='VA' then '${lbl:b_variable}'
	end as bdi_tipo_distribucion_combo,
	(select cum.cum_codigo from  smn_cont_financiera.smn_cuenta_mayor cum  where cum.smn_cuenta_mayor_id is not null  and cum.smn_cuenta_mayor_id=smn_cont_costos.smn_bases_distribucion.smn_cuenta_mayor_rf  order by cum.smn_cuenta_mayor_id asc ) as smn_cuenta_mayor_rf_combo,
	(select modc.mcc_descripcion_comprobante from  smn_cont_financiera.smn_modelo_comprobante modc  where modc.smn_modelo_comprobante_id is not null  and modc.smn_modelo_comprobante_id=smn_cont_costos.smn_bases_distribucion.smn_modelo_comprobante_rf  order by modc.smn_modelo_comprobante_id desc ) as smn_modelo_comprobante_rf_combo,
	(select crid.cdi_descripcion from  smn_cont_costos.smn_criterio_distribucion crid ORDER BY crid.smn_criterio_distribucion_id desc where crid.smn_criterio_distribucion_id is not null  and crid.smn_criterio_distribucion_id=smn_cont_costos.smn_bases_distribucion.smn_criterio_distribucion_id) as smn_criterio_distribucion_id_combo,
	case
		when smn_cont_costos.smn_bases_distribucion.bdi_estatus='AC' then '${lbl:b_active}'
		when smn_cont_costos.smn_bases_distribucion.bdi_estatus='IN' then '${lbl:b_inactive}'
	end as bdi_estatus_combo,
	smn_cont_costos.smn_bases_distribucion.*
from 
	smn_cont_costos.smn_bases_distribucion
where
	smn_bases_distribucion_id = ${fld:id}
