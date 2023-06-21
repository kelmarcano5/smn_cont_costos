select
		smn_cont_costos.smn_criterio_distribucion.cdi_descripcion
from
		smn_cont_costos.smn_criterio_distribucion
where
		upper(smn_cont_costos.smn_criterio_distribucion.cdi_descripcion) = upper(${fld:cdi_descripcion})
