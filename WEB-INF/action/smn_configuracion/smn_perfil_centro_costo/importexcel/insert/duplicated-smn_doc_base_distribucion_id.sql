select
	smn_doc_base_distribucion_id	
from 
	smn_cont_costos.smn_doc_base_distribucion
where
	smn_doc_base_distribucion_id = ${fld:smn_doc_base_distribucion_id}
	