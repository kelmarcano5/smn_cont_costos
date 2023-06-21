select
		smn_cont_costos.smn_doc_base_distribucion.dbd_codigo
from
		smn_cont_costos.smn_doc_base_distribucion
where
		upper(smn_cont_costos.smn_doc_base_distribucion.dbd_codigo) = upper(${fld:dbd_codigo})
