document.form1.cdi_codigo.value='${fld:cdi_codigo@js}';
document.form1.cdi_descripcion.value='${fld:cdi_descripcion@js}';
document.form1.cdi_esquema.value='${fld:cdi_esquema@js}';
setComboValue('cdi_estatus','${fld:cdi_estatus}','form1');
document.form1.cdi_vigencia.value='${fld:cdi_vigencia@dd-MM-yyyy}';
document.form1.id.value='${fld:smn_criterio_distribucion_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.cdi_codigo.disabled=true;
 

