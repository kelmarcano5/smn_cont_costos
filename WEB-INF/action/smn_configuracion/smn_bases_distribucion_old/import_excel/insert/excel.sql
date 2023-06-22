INSERT INTO smn_cont_costos.smn_bases_distribucion
(
	smn_bases_distribucion_id,
	bdi_codigo,
	bdi_descripcion,
	bdi_forma_calculo,
	smn_nivel_distribucion_id,
	bdi_tipo_distribucion,
	smn_cuenta_mayor_rf,
	smn_modelo_comprobante_rf,
	smn_criterio_distribucion_id,
	bdi_estatus,
	bdi_fecha_registro
)
VALUES
(
	${seq:nextval@smn_cont_costos.seq_smn_bases_distribucion},
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	{d '${def:date}'}
)
