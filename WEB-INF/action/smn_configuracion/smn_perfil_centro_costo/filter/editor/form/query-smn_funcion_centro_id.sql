select smn_cont_costos.smn_funcion_centro.smn_funcion_centro_id as id, smn_cont_costos.smn_funcion_centro.fun_codigo|| ' - ' || smn_cont_costos.smn_funcion_centro.fun_descripcion as item from smn_cont_costos.smn_funcion_centro order by fun_descripcion