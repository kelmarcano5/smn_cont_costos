select
	smn_cont_costos.smn_elemento.smn_elemento_id,
	smn_cont_costos.smn_elemento.ele_codigo as ele_codigo_pl1,
select
select
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