select
		smn_cont_costos.smn_elemento.ele_codigo,
	smn_cont_costos.smn_elemento.ele_descripcion,
	smn_cont_costos.smn_elemento.ele_estatus,
	smn_cont_costos.smn_elemento.ele_vigencia,
	smn_cont_costos.smn_elemento.ele_fecha_registro
from
	smn_cont_costos.smn_elemento 
where
	smn_cont_costos.smn_elemento.smn_elemento_id = ${fld:id}
