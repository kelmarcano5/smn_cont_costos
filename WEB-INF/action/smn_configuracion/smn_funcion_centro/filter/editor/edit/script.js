document.form1.fun_codigo.value='${fld:fun_codigo@js}';
document.form1.fun_descripcion.value='${fld:fun_descripcion@js}';
setComboValue('fun_funcion','${fld:fun_funcion}','form1');
setComboValue('fun_estatus','${fld:fun_estatus}','form1');
document.form1.fun_vigencia.value='${fld:fun_vigencia@dd-MM-yyyy}';
document.form1.id.value='${fld:smn_funcion_centro_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.fun_codigo.disabled=true;
 

