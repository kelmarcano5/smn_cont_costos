select
	(select smn_base.smn_auxiliar.smn_auxiliar_id|| ' - ' || smn_base.smn_auxiliar.aux_nombres || ' ' || smn_base.smn_auxiliar.aux_apellidos from  smn_base.smn_usuarios, smn_base.smn_auxiliar where  smn_base.smn_usuarios.smn_auxiliar_rf = smn_base.smn_auxiliar.smn_auxiliar_id  and smn_usuarios_id=smn_cont_costos.smn_rol.smn_usuarios_rf  order by  smn_usuarios_id ) as smn_usuarios_rf_combo,
	(select smn_base.smn_estructura_organizacional.eor_codigo|| ' - ' || smn_base.smn_estructura_organizacional.eor_nombre from  smn_base.smn_estructura_organizacional  where smn_base.smn_estructura_organizacional.smn_estructura_organizacional_id is not null  and smn_base.smn_estructura_organizacional.smn_estructura_organizacional_id=smn_cont_costos.smn_rol.smn_estructura_organizacional_rf  order by eor_nombre ) as smn_estructura_organizacional_rf_combo,
	case
		when smn_cont_costos.smn_rol.rol_tipo='SO' then '${lbl:b_applicants}'
		when smn_cont_costos.smn_rol.rol_tipo='AP' then '${lbl:b_approver}'
		when smn_cont_costos.smn_rol.rol_tipo='AM' then '${lbl:b_ambos}'
	end as rol_tipo_combo,
	(select smn_base.smn_corporaciones.crp_codigo|| ' - ' || smn_base.smn_corporaciones.crp_nombre from  smn_base.smn_corporaciones  where smn_base.smn_corporaciones.smn_corporaciones_id is not null  and smn_base.smn_corporaciones.smn_corporaciones_id=smn_cont_costos.smn_rol.smn_corporaciones_rf  order by crp_nombre ) as smn_corporaciones_rf_combo,
	(select smn_base.smn_sucursales.suc_codigo|| ' - ' || smn_base.smn_sucursales.suc_nombre from  smn_base.smn_sucursales  where smn_base.smn_sucursales.smn_sucursales_id is not null  and smn_base.smn_sucursales.smn_sucursales_id=smn_cont_costos.smn_rol.smn_sucursales_rf  order by suc_nombre ) as smn_sucursales_rf_combo,
	case
		when smn_cont_costos.smn_rol.rol_estatus='AC' then '${lbl:b_account_type_active}'
		when smn_cont_costos.smn_rol.rol_estatus='IN' then '${lbl:b_inactive}'
	end as rol_estatus_combo,
	smn_cont_costos.smn_rol.smn_usuarios_rf,
	smn_cont_costos.smn_rol.smn_estructura_organizacional_rf,
	smn_cont_costos.smn_rol.rol_tipo,
	smn_cont_costos.smn_rol.smn_corporaciones_rf,
	smn_cont_costos.smn_rol.smn_sucursales_rf,
	smn_cont_costos.smn_rol.rol_estatus,
	smn_cont_costos.smn_rol.rol_vigencia,
	smn_cont_costos.smn_rol.rol_idioma,
	smn_cont_costos.smn_rol.rol_usuario,
	smn_cont_costos.smn_rol.rol_fecha_registro,
	smn_cont_costos.smn_rol.rol_hora,
	smn_cont_costos.smn_rol.smn_rol_id
	
from
	smn_cont_costos.smn_rol
