select
	case
	when smn_cont_costos.smn_funcion_centro.fun_funcion='DI' then '${lbl:b_distribuidor}'
	when smn_cont_costos.smn_funcion_centro.fun_funcion='RC' then '${lbl:b_receptor}'
	when smn_cont_costos.smn_funcion_centro.fun_funcion='DR' then '${lbl:b_distribuidor_receptor}'
	when smn_cont_costos.smn_funcion_centro.fun_funcion='RN' then '${lbl:b_rentable}'
	end as fun_funcion_combo,
	case
	when smn_cont_costos.smn_funcion_centro.fun_estatus='AC' then '${lbl:b_account_type_active}'
	when smn_cont_costos.smn_funcion_centro.fun_estatus='IN' then '${lbl:b_inactive}'
	end as fun_estatus_combo,
	smn_cont_costos.smn_funcion_centro.fun_codigo,
	smn_cont_costos.smn_funcion_centro.fun_descripcion,
	smn_cont_costos.smn_funcion_centro.fun_funcion,
	smn_cont_costos.smn_funcion_centro.fun_estatus,
	smn_cont_costos.smn_funcion_centro.fun_vigencia,
	smn_cont_costos.smn_funcion_centro.fun_idioma,
	smn_cont_costos.smn_funcion_centro.fun_usuario,
	smn_cont_costos.smn_funcion_centro.fun_fecha_registro,
	smn_cont_costos.smn_funcion_centro.fun_hora,
		smn_cont_costos.smn_funcion_centro.smn_funcion_centro_id
	
from
	smn_cont_costos.smn_funcion_centro
where
	smn_funcion_centro_id is not null
	${filter}
order by
			smn_funcion_centro_id
