select
	smn_cont_costos.smn_elemento.smn_elemento_id, 
	smn_cont_costos.smn_elemento.ele_codigo as ele_codigo_pl0,
	(select smn_base.smn_servicios.svc_codigo|| ' - ' || smn_base.smn_servicios.svc_descripcion from  smn_base.smn_servicios  where smn_base.smn_servicios.smn_servicios_id is not null  and smn_base.smn_servicios.smn_servicios_id=smn_cont_costos.smn_rel_servicio_elemento.smn_servicios_rf  order by svc_descripcion ) as smn_servicios_rf_combo,
	(select smn_cont_costos.smn_elemento.ele_codigo|| ' - ' || smn_cont_costos.smn_elemento.ele_descripcion from  smn_cont_costos.smn_elemento  where smn_cont_costos.smn_elemento.smn_elemento_id is not null  and smn_cont_costos.smn_elemento.smn_elemento_id=smn_cont_costos.smn_rel_servicio_elemento.smn_elemento_id  order by ele_descripcion ) as smn_elemento_id_combo,
	smn_cont_costos.smn_rel_servicio_elemento.smn_servicios_rf,
	smn_cont_costos.smn_rel_servicio_elemento.smn_elemento_id,
	smn_cont_costos.smn_rel_servicio_elemento.rse_idioma,
	smn_cont_costos.smn_rel_servicio_elemento.rse_usuario,
	smn_cont_costos.smn_rel_servicio_elemento.rse_fecha_registro,
	smn_cont_costos.smn_rel_servicio_elemento.rse_hora,
	smn_cont_costos.smn_rel_servicio_elemento.smn_rel_servicio_elemento_id
	
from
	smn_cont_costos.smn_elemento,
	smn_cont_costos.smn_rel_servicio_elemento
where
	smn_rel_servicio_elemento_id is not null
	and 	smn_cont_costos.smn_elemento.smn_elemento_id=smn_cont_costos.smn_rel_servicio_elemento.smn_elemento_id
	${filter}
order by
		smn_rel_servicio_elemento_id
