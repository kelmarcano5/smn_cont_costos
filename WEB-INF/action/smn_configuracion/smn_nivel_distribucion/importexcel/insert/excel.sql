INSERT INTO smn_cont_costos.smn_nivel_distribucion
(
	smn_nivel_distribucion_id,
	niv_codigo,
	niv_descripcion,
	niv_estatus,
	niv_vigencia,
	niv_idioma,
	niv_fecha_registro,
	niv_usuario,
	niv_hora
)
VALUES
(
	${seq:nextval@smn_cont_costos.seq_smn_nivel_distribucion},
	?,
	?,
	?,
	?,
	'${def:locale  }',
	'${def:date  }',
	'${def:user  }',
	'${def:time  }'
)
