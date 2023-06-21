select
		smn_cont_costos.smn_rol.smn_rol_id,
select
		smn_cont_costos.smn_rol.smn_rol_id,
select
		smn_cont_costos.smn_rol.smn_rol_id,
	case
	when smn_cont_costos.smn_rol.rol_tipo='SO' then '${lbl:b_applicants}'
	when smn_cont_costos.smn_rol.rol_tipo='AP' then '${lbl:b_approver}'
	when smn_cont_costos.smn_rol.rol_tipo='AM' then '${lbl:b_ambos}'
	end as rol_tipo_combo,
select
		smn_cont_costos.smn_rol.smn_rol_id,
select
		smn_cont_costos.smn_rol.smn_rol_id,
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
