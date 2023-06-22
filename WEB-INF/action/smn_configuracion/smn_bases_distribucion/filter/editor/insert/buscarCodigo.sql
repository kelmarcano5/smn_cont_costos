select
		smn_cont_costos.smn_bases_distribucion.bdi_codigo
from
		smn_cont_costos.smn_bases_distribucion
where
		upper(smn_cont_costos.smn_bases_distribucion.bdi_codigo) = upper(${fld:bdi_codigo})
