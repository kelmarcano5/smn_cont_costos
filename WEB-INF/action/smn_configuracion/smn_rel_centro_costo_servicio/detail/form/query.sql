select
	(select smn_base.smn_centro_costo.cco_codigo|| ' - ' || smn_base.smn_centro_costo.cco_descripcion_larga from  smn_base.smn_centro_costo  where smn_base.smn_centro_costo.smn_centro_costo_id is not null  and smn_base.smn_centro_costo.smn_centro_costo_id=smn_cont_costos.smn_rel_centro_costo_servicio.smn_centro_costo_rf  order by cco_descripcion_larga ) as smn_centro_costo_rf_combo,
	(select smn_base.smn_servicios.svc_codigo|| ' - ' || smn_base.smn_servicios.svc_descripcion from  smn_base.smn_servicios  where smn_base.smn_servicios.smn_servicios_id is not null  and smn_base.smn_servicios.smn_servicios_id=smn_cont_costos.smn_rel_centro_costo_servicio.smn_servicio_rf  order by svc_descripcion ) as smn_servicio_rf_combo,
	smn_cont_costos.smn_rel_centro_costo_servicio.smn_centro_costo_rf,
	smn_cont_costos.smn_rel_centro_costo_servicio.smn_servicio_rf,
	smn_cont_costos.smn_rel_centro_costo_servicio.rcs_idioma,
	smn_cont_costos.smn_rel_centro_costo_servicio.rcs_usuario,
	smn_cont_costos.smn_rel_centro_costo_servicio.rcs_fecha_registro,
	smn_cont_costos.smn_rel_centro_costo_servicio.rcs_hora,
	smn_cont_costos.smn_rel_centro_costo_servicio.smn_rel_centro_costo_servicio_id
from
	smn_cont_costos.smn_rel_centro_costo_servicio
where
	smn_rel_centro_costo_servicio_id = ${fld:id}
