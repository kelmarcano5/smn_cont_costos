select
		smn_cont_costos.smn_funcion_centro.fun_codigo
from
		smn_cont_costos.smn_funcion_centro
where
		upper(smn_cont_costos.smn_funcion_centro.fun_codigo) = upper(${fld:fun_codigo})
