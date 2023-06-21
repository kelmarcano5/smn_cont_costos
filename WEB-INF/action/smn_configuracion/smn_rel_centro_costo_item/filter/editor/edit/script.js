setComboValue('smn_centro_costo_rf','${fld:smn_centro_costo_rf}','form1');
setComboValue('smn_item_rf','${fld:smn_item_rf}','form1');
document.form1.id.value='${fld:smn_rel_centro_costo_item_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


 

