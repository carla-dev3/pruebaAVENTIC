//  Stratic Utilities

//  Función para ocultar o mostrar los módulos "compra lote activo" o "componentes" en la página de un artículo

function mostrarInfoComponenteFormula() {

    var EsFormula = $('flx-check[property="PDesc_EsFormula"]').val();
    var moduloCompraLoteActivo = $('flx-module[modulename="PMod_CompraLoteActivo"] flx-list');
    var moduloComponentes = $('flx-module[modulename="P_Mod_ArticulosComponentes"] flx-list');

    if (EsFormula) {
        //  alert("Soy fórmula: " + EsFormula);
        /*moduloCompraLoteActivo.style.display = "none";
        moduloComponentes.style.display = "block";*/
    } else {
        //  alert("Soy componente " + EsFormula);
        /*moduloCompraLoteActivo.style.display = "block";
        moduloComponentes.style.display = "none";*/
    }
}