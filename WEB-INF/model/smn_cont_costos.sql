CREATE TABLE smn_cont_costos.smn_bases_distribucion(
  smn_bases_distribucion_id INTEGER NOT NULL,
  bdi_codigo VARCHAR(64) NOT NULL,
  bdi_descripcion VARCHAR(100) NOT NULL,
  bdi_forma_calculo CHARACTER(2) NOT NULL,
  smn_nivel_distribucion_id INTEGER NOT NULL,
  bdi_tipo_distribucion CHARACTER(2) NOT NULL,
  smn_cuenta_mayor_rf INTEGER NOT NULL,
  smn_modelo_comprobante_rf INTEGER NOT NULL,
  smn_criterio_distribucion_id INTEGER NOT NULL,
  bdi_estatus CHARACTER(2) NOT NULL,
  bdi_idioma CHARACTER(2) NOT NULL,
  bdi_usuario VARCHAR(10) NOT NULL,
  bdi_fecha_registro DATE NOT NULL,
  bdi_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_cont_costos.seq_smn_bases_distribucion;



ALTER TABLE smn_cont_costos.smn_bases_distribucion ADD PRIMARY KEY (smn_bases_distribucion_id);

