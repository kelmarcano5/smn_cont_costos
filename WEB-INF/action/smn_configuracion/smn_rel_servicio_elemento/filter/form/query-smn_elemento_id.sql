select smn_cont_costos.smn_elemento.smn_elemento_id as id, smn_cont_costos.smn_elemento.ele_codigo|| ' - ' || smn_cont_costos.smn_elemento.ele_descripcion as item from smn_cont_costos.smn_elemento order by ele_descripcion
