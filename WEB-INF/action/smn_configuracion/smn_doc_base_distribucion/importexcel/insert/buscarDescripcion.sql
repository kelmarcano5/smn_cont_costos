select
		smn_cont_costos.smn_doc_base_distribucion.dbd_descripcion
from
		smn_cont_costos.smn_doc_base_distribucion
where
		upper(smn_cont_costos.smn_doc_base_distribucion.dbd_descripcion) = upper(${fld:dbd_descripcion})
