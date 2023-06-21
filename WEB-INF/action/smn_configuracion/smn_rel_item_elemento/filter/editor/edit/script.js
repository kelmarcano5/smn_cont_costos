setComboValue('smn_item_rf','${fld:smn_item_rf}','form1');
setComboValue('smn_elemento_id','${fld:smn_elemento_id}','form1');
document.form1.id.value='${fld:smn_rel_item_elemento_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


 

