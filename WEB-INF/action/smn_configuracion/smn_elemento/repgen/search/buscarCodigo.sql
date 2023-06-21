select
		smn_cont_costos.smn_elemento.ele_codigo
from
		smn_cont_costos.smn_elemento
where
		upper(smn_cont_costos.smn_elemento.ele_codigo) = upper(${fld:ele_codigo})
