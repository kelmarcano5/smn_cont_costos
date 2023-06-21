select
		smn_cont_costos.smn_elemento.ele_descripcion
from
		smn_cont_costos.smn_elemento
where
		upper(smn_cont_costos.smn_elemento.ele_descripcion) = upper(${fld:ele_descripcion})
