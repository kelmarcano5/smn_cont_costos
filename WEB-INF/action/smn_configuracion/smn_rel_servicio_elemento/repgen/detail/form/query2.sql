select
		smn_cont_costos.smn_rel_servicio_elemento.smn_servicios_rf,
	smn_cont_costos.smn_rel_servicio_elemento.smn_elemento_id,
	smn_cont_costos.smn_rel_servicio_elemento.rse_fecha_registro
from
	smn_cont_costos.smn_rel_servicio_elemento 
where
	smn_cont_costos.smn_rel_servicio_elemento.smn_rel_servicio_elemento_id = ${fld:id}
