select
		smn_cont_costos.smn_funcion_centro.fun_descripcion
from
		smn_cont_costos.smn_funcion_centro
where
		upper(smn_cont_costos.smn_funcion_centro.fun_descripcion) = upper(${fld:fun_descripcion})
