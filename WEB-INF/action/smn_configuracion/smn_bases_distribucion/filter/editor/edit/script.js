document.form1.bdi_codigo.value='${fld:bdi_codigo@js}';
document.form1.bdi_descripcion.value='${fld:bdi_descripcion@js}';
setComboValue('bdi_forma_calculo','${fld:bdi_forma_calculo}','form1');
setComboValue('smn_nivel_distribucion_id','${fld:smn_nivel_distribucion_id}','form1');
setComboValue('bdi_tipo_distribucion','${fld:bdi_tipo_distribucion}','form1');
setComboValue('smn_cuenta_mayor_rf','${fld:smn_cuenta_mayor_rf}','form1');
setComboValue('smn_modelo_comprobante_rf','${fld:smn_modelo_comprobante_rf}','form1');
setComboValue('smn_criterio_distribucion_id','${fld:smn_criterio_distribucion_id}','form1');
setComboValue('bdi_estatus','${fld:bdi_estatus}','form1');
document.form1.id.value='${fld:smn_bases_distribucion_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.bdi_codigo.disabled=true;
 

