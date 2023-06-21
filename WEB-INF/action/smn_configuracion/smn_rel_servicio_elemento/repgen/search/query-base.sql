select
		smn_cont_costos.smn_rel_servicio_elemento.smn_rel_servicio_elemento_id,
	${field}
from
	smn_cont_costos.smn_rel_servicio_elemento
where
		smn_cont_costos.smn_rel_servicio_elemento.smn_rel_servicio_elemento_id is not null
	${filter}
	
	
