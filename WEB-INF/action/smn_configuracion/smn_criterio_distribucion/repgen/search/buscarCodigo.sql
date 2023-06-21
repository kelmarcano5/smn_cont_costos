select
		smn_cont_costos.smn_criterio_distribucion.cdi_codigo
from
		smn_cont_costos.smn_criterio_distribucion
where
		upper(smn_cont_costos.smn_criterio_distribucion.cdi_codigo) = upper(${fld:cdi_codigo})
