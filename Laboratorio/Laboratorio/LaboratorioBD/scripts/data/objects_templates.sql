

BEGIN TRY

MERGE INTO [Objects_Templates] AS Target
USING (VALUES
  (N'PPlantilla_ArticulosList',N'Articulo',N'list',N'Lista de artículos',N'<div class="row">
    <flx-navbutton class="clickable" type="openpagename" pagename="PPag_Articulos" objectname="Articulo" objectwhere="(Articulos.IdArticulo=''{{IdArticuloA}}'')" 
                 targetid="current" excludehist="false">
  	<div class="col-3">{{IdArticuloA}}</div>
  	<div class="col-6">{{descripcion}}</div>
  	<div class="col-3">{{familia}}</div>
  </flx-navbutton>
</div>



<!-- 
flexygo.nav.openPageName(''PPag_Articulos'',''Articulo'',"Articulos.IdArticulo=''{{IdArticulo}}''",'''',''current'',''false'','''','''','''','''') 
onclick="debugger; if(''{{EsFormula}}''==''0'') {flexygo.msg.warning(''COMP'');}else{flexygo.msg.warning(''FORM'');} console.log(''{{IdArticulo}}'')"
-->',N'VPers_ArticulosList',NULL,N'<div class="bg-outstanding">
  <div class="row">
  	<div class="col-3"><strong class="txt-light">Id artículo</strong></div>
  	<div class="col-6"><strong class="txt-light">Descripción</strong></div>
  	<div class="col-3"><strong class="txt-light">Familia</strong></div>
  </div>
</div>',NULL,NULL,NULL,0,0,0,1,1)
 ,(N'PPlantilla_Componentes',N'Articulo',N'list',N'Lista de Componentes',N'<div class="row">
    <flx-navbutton type="openpagename" pagename="PPag_Articulos" objectname="Articulo" objectwhere="(Articulos.IdArticulo=''{{IdArticuloA}}'')" 
                 targetid="current" excludehist="false">
  	<div class="col-4">{{IdArticuloA}}</div>
    <div class="col-4">{{Descripcion}}</div>  
  	<div class="col-4">{{Cantidad}}</div>
  </flx-navbutton>
</div>',N'VPers_ArticulosList',NULL,N'<div class="bg-outstanding">
  <div class="row">
  	<div class="col-4"><strong class="txt-light">Id artículo</strong></div>
  	<div class="col-4"><strong class="txt-light">Artículo</strong></div>
  	<div class="col-4"><strong class="txt-light">Cantidad</strong></div>
  </div>
</div>',NULL,NULL,NULL,0,0,0,1,1)
 ,(N'PPlantilla_CompraLoteActivo',N'Articulo',N'list',N'Plantilla para Compra lote activo',N'<div class="row">
  	<div class="col-2">{{NumFactura|isnull:-}}</div>
  	<div class="col-2">{{Fecha|isnull:-}}</div>
  	<div class="col-2">{{Proveedor|isnull:-}}</div>
  	<div class="col-2">{{Lote|isnull:-|isnull:-}}</div>
  	<div class="col-2">{{Cantidad|isnull:-}}</div>
  	<div class="col-1">{{Coste|isnull:-}}</div>
  	<div class="col-1">{{Total|isnull:-}}</div>
</div>',N'VPers_CompraLoteActivo',NULL,N'<div class="bg-outstanding">
  <div class="row">
  	<div class="col-2"><strong class="txt-light">Número de factura</strong></div>
  	<div class="col-2"><strong class="txt-light">Fecha</strong></div>
  	<div class="col-2"><strong class="txt-light">Proovedor</strong></div>
  	<div class="col-2"><strong class="txt-light">Lote</strong></div>
  	<div class="col-2"><strong class="txt-light">Cantidad</strong></div>
  	<div class="col-1"><strong class="txt-light">Coste</strong></div>
  	<div class="col-1"><strong class="txt-light">Total</strong></div>
  </div>
</div>',NULL,NULL,NULL,0,0,0,1,1)
 ,(N'PPlantilla_GestorPedidosList',N'Pedido',N'list',N'Gestor de pedidos',N'<div class="row">
    <flx-navbutton class="clickable" type="openpagename" pagename="PPag_GestorPedidos" objectname="Pedidos" objectwhere="(Pedidos.IdPedido=''{{IdPedido}}'')" 
                 targetid="current" excludehist="false">
  	<div class="col-2">{{IdCliente}}</div>
  	<div class="col-2">{{IdArticulo}}</div>
      <div class="col-2">{{FechaSalida}}</div>
      <div class="col-2">{{FechaElaboracion}}</div>
      <div class="col-2">{{fechaEstimadaEntrada}}</div>
      	<div class="col-2">{{IdEstado}}</div>
  </flx-navbutton>
</div>



<!-- 
flexygo.nav.openPageName(''PPag_Articulos'',''Articulo'',"Articulos.IdArticulo=''{{IdArticulo}}''",'''',''current'',''false'','''','''','''','''') 
onclick="debugger; if(''{{EsFormula}}''==''0'') {flexygo.msg.warning(''COMP'');}else{flexygo.msg.warning(''FORM'');} console.log(''{{IdArticulo}}'')"
-->',N'VPers_GestorPedidosList',NULL,N'<div class="bg-outstanding">
  <div class="row">
  	<div class="col-2"><strong class="txt-light">Cliente</strong></div>
  	<div class="col-2"><strong class="txt-light">Artículo</strong></div>
    <div class="col-2"><strong class="txt-light">Fecha real salida</strong></div>
    <div class="col-2"><strong class="txt-light">Fecha elaboración</strong></div>
    <div class="col-2"><strong class="txt-light">Fecha estimada entrada</strong></div>
    <div class="col-2"><strong class="txt-light">Estado</strong></div>
  </div>
</div>',NULL,NULL,NULL,0,0,0,1,1)
 ,(N'PPlantilla_StockLotesAlmacenes',N'Articulo',N'list',N'Lista de stock lotes almacenes',N'<div class="row">
  	<div class="col-4">{{almacen}}</div>
  	<div class="col-4">{{stock}}</div>
  	<div class="col-4">{{IdArticulo}}</div>
</div>',N'VPers_StockLotesAlmacenes',NULL,N'<div class="bg-outstanding">
  <div class="row">
  	<div class="col-4"><strong class="txt-light">Almacén</strong></div>
  	<div class="col-4"><strong class="txt-light">Stock</strong></div>
  	<div class="col-4"><strong class="txt-light">Id Artículo</strong></div>
  </div>
</div>',NULL,NULL,NULL,0,0,0,1,1)
) AS Source ([TemplateId],[ObjectName],[TypeId],[Descrip],[Body],[ViewName],[WhereSentence],[Header],[Footer],[Empty],[ModuleClass],[IsDefault],[Offline],[UserDefinedGroups],[Active],[OriginId])
ON (Target.[TemplateId] = Source.[TemplateId])
WHEN MATCHED AND (
	NULLIF(Source.[ObjectName], Target.[ObjectName]) IS NOT NULL OR NULLIF(Target.[ObjectName], Source.[ObjectName]) IS NOT NULL OR 
	NULLIF(Source.[TypeId], Target.[TypeId]) IS NOT NULL OR NULLIF(Target.[TypeId], Source.[TypeId]) IS NOT NULL OR 
	NULLIF(Source.[Descrip], Target.[Descrip]) IS NOT NULL OR NULLIF(Target.[Descrip], Source.[Descrip]) IS NOT NULL OR 
	NULLIF(Source.[Body], Target.[Body]) IS NOT NULL OR NULLIF(Target.[Body], Source.[Body]) IS NOT NULL OR 
	NULLIF(Source.[ViewName], Target.[ViewName]) IS NOT NULL OR NULLIF(Target.[ViewName], Source.[ViewName]) IS NOT NULL OR 
	NULLIF(Source.[WhereSentence], Target.[WhereSentence]) IS NOT NULL OR NULLIF(Target.[WhereSentence], Source.[WhereSentence]) IS NOT NULL OR 
	NULLIF(Source.[Header], Target.[Header]) IS NOT NULL OR NULLIF(Target.[Header], Source.[Header]) IS NOT NULL OR 
	NULLIF(Source.[Footer], Target.[Footer]) IS NOT NULL OR NULLIF(Target.[Footer], Source.[Footer]) IS NOT NULL OR 
	NULLIF(Source.[Empty], Target.[Empty]) IS NOT NULL OR NULLIF(Target.[Empty], Source.[Empty]) IS NOT NULL OR 
	NULLIF(Source.[ModuleClass], Target.[ModuleClass]) IS NOT NULL OR NULLIF(Target.[ModuleClass], Source.[ModuleClass]) IS NOT NULL OR 
	NULLIF(Source.[IsDefault], Target.[IsDefault]) IS NOT NULL OR NULLIF(Target.[IsDefault], Source.[IsDefault]) IS NOT NULL OR 
	NULLIF(Source.[Offline], Target.[Offline]) IS NOT NULL OR NULLIF(Target.[Offline], Source.[Offline]) IS NOT NULL OR 
	NULLIF(Source.[UserDefinedGroups], Target.[UserDefinedGroups]) IS NOT NULL OR NULLIF(Target.[UserDefinedGroups], Source.[UserDefinedGroups]) IS NOT NULL OR 
	NULLIF(Source.[Active], Target.[Active]) IS NOT NULL OR NULLIF(Target.[Active], Source.[Active]) IS NOT NULL OR 
	NULLIF(Source.[OriginId], Target.[OriginId]) IS NOT NULL OR NULLIF(Target.[OriginId], Source.[OriginId]) IS NOT NULL) THEN
 UPDATE SET
  [ObjectName] = Source.[ObjectName], 
  [TypeId] = Source.[TypeId], 
  [Descrip] = Source.[Descrip], 
  [Body] = Source.[Body], 
  [ViewName] = Source.[ViewName], 
  [WhereSentence] = Source.[WhereSentence], 
  [Header] = Source.[Header], 
  [Footer] = Source.[Footer], 
  [Empty] = Source.[Empty], 
  [ModuleClass] = Source.[ModuleClass], 
  [IsDefault] = Source.[IsDefault], 
  [Offline] = Source.[Offline], 
  [UserDefinedGroups] = Source.[UserDefinedGroups], 
  [Active] = Source.[Active], 
  [OriginId] = Source.[OriginId]
WHEN NOT MATCHED BY TARGET THEN
 INSERT([TemplateId],[ObjectName],[TypeId],[Descrip],[Body],[ViewName],[WhereSentence],[Header],[Footer],[Empty],[ModuleClass],[IsDefault],[Offline],[UserDefinedGroups],[Active],[OriginId])
 VALUES(Source.[TemplateId],Source.[ObjectName],Source.[TypeId],Source.[Descrip],Source.[Body],Source.[ViewName],Source.[WhereSentence],Source.[Header],Source.[Footer],Source.[Empty],Source.[ModuleClass],Source.[IsDefault],Source.[Offline],Source.[UserDefinedGroups],Source.[Active],Source.[OriginId])
WHEN NOT MATCHED BY SOURCE AND TARGET.OriginId = 1 THEN 
 DELETE
;
END TRY
BEGIN CATCH
    DECLARE @ERRORNUMBER	INT,@ERRORMSG		VARCHAR(MAX),@ERRORSTATE		INT
    SELECT @ERRORNUMBER = 50000 + ERROR_NUMBER(),@ERRORMSG = ERROR_MESSAGE(), @ERRORSTATE = ERROR_STATE();
    THROW @ERRORNUMBER, @ERRORMSG, @ERRORSTATE
END CATCH
GO





