select
		smn_cont_costos.smn_nivel_distribucion.smn_nivel_distribucion_id,
	${field}
from
	smn_cont_costos.smn_nivel_distribucion
where
		smn_cont_costos.smn_nivel_distribucion.smn_nivel_distribucion_id is not null
	${filter}
	
	
