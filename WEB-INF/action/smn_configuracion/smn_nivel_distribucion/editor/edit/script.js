document.form1.niv_codigo.value='${fld:niv_codigo@js}';
document.form1.niv_descripcion.value='${fld:niv_descripcion@js}';
setComboValue('niv_estatus','${fld:niv_estatus}','form1');
document.form1.niv_vigencia.value='${fld:niv_vigencia@dd-MM-yyyy}';
document.form1.id.value='${fld:smn_nivel_distribucion_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.niv_codigo.disabled=true;
 

