setComboValue('smn_centro_costo_rf','${fld:smn_centro_costo_rf}','form1');
setComboValue('smn_elemento_id','${fld:smn_elemento_id}','form1');
document.form1.id.value='${fld:smn_rel_centro_costo_elemento_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


 

