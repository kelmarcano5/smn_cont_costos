select
	smn_cont_costos.smn_funcion_centro.smn_funcion_centro_id, 
	smn_cont_costos.smn_funcion_centro.fun_codigo as fun_codigo_pl0,
	smn_cont_costos.smn_nivel_distribucion.smn_nivel_distribucion_id, 
	smn_cont_costos.smn_nivel_distribucion.niv_codigo as niv_codigo_pl1,
	smn_cont_costos.smn_doc_base_distribucion.smn_doc_base_distribucion_id, 
	smn_cont_costos.smn_doc_base_distribucion.dbd_codigo as dbd_codigo_pl2,
	(select smn_base.smn_centro_costo.cco_codigo|| ' - ' || smn_base.smn_centro_costo.cco_descripcion_larga from  smn_base.smn_centro_costo  where smn_base.smn_centro_costo.smn_centro_costo_id is not null  and smn_base.smn_centro_costo.smn_centro_costo_id=smn_cont_costos.smn_perfil_centro_costo.smn_centro_costo_rf  order by cco_descripcion_larga ) as smn_centro_costo_rf_combo,
	(select smn_cont_costos.smn_funcion_centro.fun_codigo|| ' - ' || smn_cont_costos.smn_funcion_centro.fun_descripcion from  smn_cont_costos.smn_funcion_centro  where smn_cont_costos.smn_funcion_centro.smn_funcion_centro_id is not null  and smn_cont_costos.smn_funcion_centro.smn_funcion_centro_id=smn_cont_costos.smn_perfil_centro_costo.smn_funcion_centro_id  order by fun_descripcion ) as smn_funcion_centro_id_combo,
	(select smn_cont_costos.smn_nivel_distribucion.niv_codigo|| ' - ' || smn_cont_costos.smn_nivel_distribucion.niv_descripcion from  smn_cont_costos.smn_nivel_distribucion  where smn_cont_costos.smn_nivel_distribucion.smn_nivel_distribucion_id is not null  and smn_cont_costos.smn_nivel_distribucion.smn_nivel_distribucion_id=smn_cont_costos.smn_perfil_centro_costo.smn_nivel_distribucion_id  order by niv_descripcion ) as smn_nivel_distribucion_id_combo,
	(select smn_cont_costos.smn_doc_base_distribucion.dbd_codigo|| ' - ' || smn_cont_costos.smn_doc_base_distribucion.dbd_descripcion from  smn_cont_costos.smn_doc_base_distribucion  where smn_cont_costos.smn_doc_base_distribucion.smn_doc_base_distribucion_id is not null  and smn_cont_costos.smn_doc_base_distribucion.smn_doc_base_distribucion_id=smn_cont_costos.smn_perfil_centro_costo.smn_doc_base_distribucion_id  order by dbd_descripcion ) as smn_doc_base_distribucion_id_combo,
	case
		when smn_cont_costos.smn_perfil_centro_costo.cdi_estatus='AC' then '${lbl:b_account_type_active}'
		when smn_cont_costos.smn_perfil_centro_costo.cdi_estatus='IN' then '${lbl:b_inactive}'
	end as cdi_estatus_combo,
	smn_cont_costos.smn_perfil_centro_costo.smn_centro_costo_rf,
	smn_cont_costos.smn_perfil_centro_costo.smn_funcion_centro_id,
	smn_cont_costos.smn_perfil_centro_costo.smn_nivel_distribucion_id,
	smn_cont_costos.smn_perfil_centro_costo.smn_doc_base_distribucion_id,
	smn_cont_costos.smn_perfil_centro_costo.cdi_estatus,
	smn_cont_costos.smn_perfil_centro_costo.cdi_vigencia,
	smn_cont_costos.smn_perfil_centro_costo.cdi_idioma,
	smn_cont_costos.smn_perfil_centro_costo.cdi_usuario,
	smn_cont_costos.smn_perfil_centro_costo.cdi_fecha_registro,
	smn_cont_costos.smn_perfil_centro_costo.cdi_hora,
	smn_cont_costos.smn_perfil_centro_costo.smn_perfil_centro_costo_id
from
	smn_cont_costos.smn_funcion_centro,
	smn_cont_costos.smn_nivel_distribucion,
	smn_cont_costos.smn_doc_base_distribucion,
	smn_cont_costos.smn_perfil_centro_costo
where
	smn_perfil_centro_costo_id is not null
	and 	smn_cont_costos.smn_funcion_centro.smn_funcion_centro_id=smn_cont_costos.smn_perfil_centro_costo.smn_funcion_centro_id and
	smn_cont_costos.smn_nivel_distribucion.smn_nivel_distribucion_id=smn_cont_costos.smn_perfil_centro_costo.smn_nivel_distribucion_id and
	smn_cont_costos.smn_doc_base_distribucion.smn_doc_base_distribucion_id=smn_cont_costos.smn_perfil_centro_costo.smn_doc_base_distribucion_id
	${filter}
order by
			smn_perfil_centro_costo_id
