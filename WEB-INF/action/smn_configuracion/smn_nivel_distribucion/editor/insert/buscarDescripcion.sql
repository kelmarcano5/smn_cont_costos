select
		smn_cont_costos.smn_nivel_distribucion.niv_descripcion
from
		smn_cont_costos.smn_nivel_distribucion
where
		upper(smn_cont_costos.smn_nivel_distribucion.niv_descripcion) = upper(${fld:niv_descripcion})
