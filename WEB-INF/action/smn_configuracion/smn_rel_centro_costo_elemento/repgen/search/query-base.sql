select
		smn_cont_costos.smn_rel_centro_costo_elemento.smn_rel_centro_costo_elemento_id,
	${field}
from
	smn_cont_costos.smn_rel_centro_costo_elemento
where
		smn_cont_costos.smn_rel_centro_costo_elemento.smn_rel_centro_costo_elemento_id is not null
	${filter}
	
	
