select
	smn_cont_costos.smn_elemento.smn_elemento_id, 
	smn_cont_costos.smn_elemento.ele_codigo as ele_codigo_pl1,
	(select smn_base.smn_item.itm_codigo|| ' - ' || smn_base.smn_item.itm_nombre from  smn_base.smn_item  where smn_base.smn_item.smn_item_id is not null  and smn_base.smn_item.smn_item_id=smn_cont_costos.smn_rel_item_elemento.smn_item_rf  order by itm_nombre ) as smn_item_rf_combo,
	(select smn_cont_costos.smn_elemento.ele_codigo|| ' - ' || smn_cont_costos.smn_elemento.ele_descripcion from  smn_cont_costos.smn_elemento  where smn_cont_costos.smn_elemento.smn_elemento_id is not null  and smn_cont_costos.smn_elemento.smn_elemento_id=smn_cont_costos.smn_rel_item_elemento.smn_elemento_id  order by ele_descripcion ) as smn_elemento_id_combo,
	smn_cont_costos.smn_rel_item_elemento.smn_item_rf,
	smn_cont_costos.smn_rel_item_elemento.smn_elemento_id,
	smn_cont_costos.smn_rel_item_elemento.rie_idioma,
	smn_cont_costos.smn_rel_item_elemento.rie_usuario,
	smn_cont_costos.smn_rel_item_elemento.rie_fecha_registro,
	smn_cont_costos.smn_rel_item_elemento.rie_hora,
	smn_cont_costos.smn_rel_item_elemento.smn_rel_item_elemento_id
from
	smn_cont_costos.smn_elemento,
	smn_cont_costos.smn_rel_item_elemento
where
	smn_cont_costos.smn_elemento.smn_elemento_id=smn_cont_costos.smn_rel_item_elemento.smn_elemento_id
	and
	smn_rel_item_elemento_id = ${fld:id}
