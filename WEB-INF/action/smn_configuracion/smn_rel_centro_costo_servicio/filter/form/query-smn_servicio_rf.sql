select smn_base.smn_servicios.smn_servicios_id as id, smn_base.smn_servicios.svc_codigo|| ' - ' || smn_base.smn_servicios.svc_descripcion as item from smn_base.smn_servicios order by svc_descripcion