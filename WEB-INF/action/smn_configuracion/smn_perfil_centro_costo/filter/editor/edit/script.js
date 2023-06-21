setComboValue('smn_centro_costo_rf','${fld:smn_centro_costo_rf}','form1');
setComboValue('smn_funcion_centro_id','${fld:smn_funcion_centro_id}','form1');
setComboValue('smn_nivel_distribucion_id','${fld:smn_nivel_distribucion_id}','form1');
setComboValue('smn_doc_base_distribucion_id','${fld:smn_doc_base_distribucion_id}','form1');
setComboValue('cdi_estatus','${fld:cdi_estatus}','form1');
document.form1.cdi_vigencia.value='${fld:cdi_vigencia@dd-MM-yyyy}';
document.form1.id.value='${fld:smn_perfil_centro_costo_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


 

