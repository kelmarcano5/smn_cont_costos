select
		smn_cont_costos.smn_rol.smn_rol_id,
	${field}
from
	smn_cont_costos.smn_rol
where
		smn_cont_costos.smn_rol.smn_rol_id is not null
	${filter}
	
	
