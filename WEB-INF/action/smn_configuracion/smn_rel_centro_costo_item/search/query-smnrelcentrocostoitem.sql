select
	(select smn_base.smn_centro_costo.cco_codigo|| ' - ' || smn_base.smn_centro_costo.cco_descripcion_larga from  smn_base.smn_centro_costo  where smn_base.smn_centro_costo.smn_centro_costo_id is not null  and smn_base.smn_centro_costo.smn_centro_costo_id=smn_cont_costos.smn_rel_centro_costo_item.smn_centro_costo_rf  order by cco_descripcion_larga ) as smn_centro_costo_rf_combo,
	(select smn_base.smn_item.itm_codigo|| ' - ' || smn_base.smn_item.itm_nombre from  smn_base.smn_item  where smn_base.smn_item.smn_item_id is not null  and smn_base.smn_item.smn_item_id=smn_cont_costos.smn_rel_centro_costo_item.smn_item_rf  order by itm_nombre ) as smn_item_rf_combo,
	smn_cont_costos.smn_rel_centro_costo_item.smn_centro_costo_rf,
	smn_cont_costos.smn_rel_centro_costo_item.smn_item_rf,
	smn_cont_costos.smn_rel_centro_costo_item.rci_idioma,
	smn_cont_costos.smn_rel_centro_costo_item.rci_usuario,
	smn_cont_costos.smn_rel_centro_costo_item.rci_fecha_registro,
	smn_cont_costos.smn_rel_centro_costo_item.rci_hora,
	smn_cont_costos.smn_rel_centro_costo_item.smn_rel_centro_costo_item_id
	
from
	smn_cont_costos.smn_rel_centro_costo_item
