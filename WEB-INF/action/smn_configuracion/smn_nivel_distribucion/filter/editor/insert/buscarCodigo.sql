select
		smn_cont_costos.smn_nivel_distribucion.niv_codigo
from
		smn_cont_costos.smn_nivel_distribucion
where
		upper(smn_cont_costos.smn_nivel_distribucion.niv_codigo) = upper(${fld:niv_codigo})
