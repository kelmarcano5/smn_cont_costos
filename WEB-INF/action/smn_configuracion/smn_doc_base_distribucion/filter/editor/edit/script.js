document.form1.dbd_codigo.value='${fld:dbd_codigo@js}';
document.form1.dbd_descripcion.value='${fld:dbd_descripcion@js}';
setComboValue('dbd_estatus','${fld:dbd_estatus}','form1');
document.form1.dbd_vigencia.value='${fld:dbd_vigencia@dd-MM-yyyy}';
document.form1.id.value='${fld:smn_doc_base_distribucion_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.dbd_codigo.disabled=true;
 

