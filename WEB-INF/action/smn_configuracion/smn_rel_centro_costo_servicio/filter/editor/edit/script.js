setComboValue('smn_centro_costo_rf','${fld:smn_centro_costo_rf}','form1');
setComboValue('smn_servicio_rf','${fld:smn_servicio_rf}','form1');
document.form1.id.value='${fld:smn_rel_centro_costo_servicio_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


 

