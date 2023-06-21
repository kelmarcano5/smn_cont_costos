select
		smn_cont_costos.smn_rel_item_elemento.smn_rel_item_elemento_id,
	${field}
from
	smn_cont_costos.smn_rel_item_elemento
where
		smn_cont_costos.smn_rel_item_elemento.smn_rel_item_elemento_id is not null
	${filter}
	
	
