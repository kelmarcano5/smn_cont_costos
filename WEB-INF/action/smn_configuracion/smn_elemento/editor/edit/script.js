document.form1.ele_codigo.value='${fld:ele_codigo@js}';
document.form1.ele_descripcion.value='${fld:ele_descripcion@js}';
setComboValue('ele_estatus','${fld:ele_estatus}','form1');
document.form1.ele_vigencia.value='${fld:ele_vigencia@dd-MM-yyyy}';
document.form1.id.value='${fld:smn_elemento_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.ele_codigo.disabled=true;
 

