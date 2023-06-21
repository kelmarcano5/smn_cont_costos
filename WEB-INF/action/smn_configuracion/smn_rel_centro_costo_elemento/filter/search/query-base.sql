select
	smn_cont_costos.smn_elemento.smn_elemento_id, 
	smn_cont_costos.smn_elemento.ele_codigo as ele_codigo_pl1,
	(select smn_base.smn_centro_costo.cco_codigo|| ' - ' || smn_base.smn_centro_costo.cco_descripcion_larga from  smn_base.smn_centro_costo  where smn_base.smn_centro_costo.smn_centro_costo_id is not null  and smn_base.smn_centro_costo.smn_centro_costo_id=smn_cont_costos.smn_rel_centro_costo_elemento.smn_centro_costo_rf  order by cco_descripcion_larga ) as smn_centro_costo_rf_combo,
	(select smn_cont_costos.smn_elemento.ele_codigo|| ' - ' || smn_cont_costos.smn_elemento.ele_descripcion from  smn_cont_costos.smn_elemento  where smn_cont_costos.smn_elemento.smn_elemento_id is not null  and smn_cont_costos.smn_elemento.smn_elemento_id=smn_cont_costos.smn_rel_centro_costo_elemento.smn_elemento_id  order by ele_descripcion ) as smn_elemento_id_combo,
	smn_cont_costos.smn_rel_centro_costo_elemento.smn_centro_costo_rf,
	smn_cont_costos.smn_rel_centro_costo_elemento.smn_elemento_id,
	smn_cont_costos.smn_rel_centro_costo_elemento.rce_idioma,
	smn_cont_costos.smn_rel_centro_costo_elemento.rce_usuario,
	smn_cont_costos.smn_rel_centro_costo_elemento.rce_fecha_registro,
	smn_cont_costos.smn_rel_centro_costo_elemento.rce_hora,
	smn_cont_costos.smn_rel_centro_costo_elemento.smn_rel_centro_costo_elemento_id
	
from
	smn_cont_costos.smn_elemento,
	smn_cont_costos.smn_rel_centro_costo_elemento
where
	smn_rel_centro_costo_elemento_id is not null
	and 	smn_cont_costos.smn_elemento.smn_elemento_id=smn_cont_costos.smn_rel_centro_costo_elemento.smn_elemento_id
	${filter}
order by
		smn_rel_centro_costo_elemento_id
