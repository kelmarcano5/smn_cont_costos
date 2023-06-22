select
		smn_cont_costos.smn_bases_distribucion.bdi_descripcion
from
		smn_cont_costos.smn_bases_distribucion
where
		upper(smn_cont_costos.smn_bases_distribucion.bdi_descripcion) = upper(${fld:bdi_descripcion})
