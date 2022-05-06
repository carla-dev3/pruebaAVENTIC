

BEGIN TRY

MERGE INTO [Modules] AS Target
USING (VALUES
  (N'P_ModArticulosSup',N'flx-sqllist',N'project',NULL,NULL,N'Parte superior página articulos',N' ',N'none',0,0,1,0,N'/**/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'document',NULL,NULL,N'DataConnectionString',N'systb-list',NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,0,0,1,1)
 ,(N'P_ModNuevoArt',N'flx-edit',N'project',N'Articulo',NULL,N'Nuevo artículo',N'Nuevo Artículo',N'clean',0,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'add',NULL,NULL,NULL,N'P_Toolbar_NuevoArticulo',NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,0,0,1,1)
 ,(N'PMod_ArticuloEdit',N'flx-edit',N'project',N'Articulo',N'{{ObjectWhere}}',N'Edición artículo',N'Artículo',N'clean',0,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'edit-2',NULL,NULL,NULL,N'P_Toolbar_ArticuloEdit',NULL,NULL,NULL,NULL,N'mostrarInfoComponenteFormula();',0,0,0,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,0,0,1,1)
 ,(N'PMod_ArticulosComponentes',N'flx-objectlist',N'project',N'Articulos',N'CFam.P_Formula=0',N'Lista de Componentes',N'Componentes',N'clean',0,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'list',NULL,NULL,NULL,NULL,NULL,N'PPlantilla_Componentes',NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,0,0,1,1)
 ,(N'PMod_ArticulosList',N'flx-objectlist',N'project',N'Articulos',NULL,N'Lista de artículos',N'Artículos',N'clean',0,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'list',N'syspager-moduleheader',12,NULL,N'PToolbar_ArticulosList',NULL,N'PPlantilla_ArticulosList',NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,0,0,1,1)
 ,(N'PMod_CompraLoteActivo',N'flx-objectlist',N'project',N'Articulos',N'Articulos.IdArticulo={{IdArticulo}} AND t4.IdEstado in (0,1)',N'Datos Compra Lote activo',N'Datos Compra Lote Activo',N'clean',0,0,1,0,NULL,NULL,N'{{NumFactura}}<br>{{Fecha}}<br>{{Proveedor}}<br>{{Lote}}<br>{{Cantidad}}<br>{{Coste}}<br>{{Total}}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'noicon',NULL,NULL,N'DataConnectionString',NULL,NULL,N'PPlantilla_CompraLoteActivo',NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,0,0,1,1)
 ,(N'PMod_GestorPedidosList',N'flx-objectlist',N'project',N'Pedidos',NULL,N'Gestor de pedidos',N'Gestor de pedidos',N'clean',0,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'list',N'syspager-moduleheader',10,NULL,N'PToolbar_ArticulosList',NULL,N'PPlantilla_GestorPedidosList',NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,0,0,1,1)
 ,(N'PMod_Imagenes',N'flx-objectlist',N'project',N'Col_Objeto_Imagenes',NULL,N'Imágenes',N'Imágenes',N'clean',1,1,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'noicon',NULL,NULL,NULL,N'systb-edit',NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,0,0,1,1)
 ,(N'PMod_InfoDocs',N'flx-html',N'project',N'Articulo',N'{{ObjectWhere}}',N'Documentos artículos',N' Añadir documento',N'none',1,1,1,0,NULL,NULL,N'<flx-navbutton type="openpagename" pagename="PPag_DocumentosArticulo" objectname="Articulo" objectwhere="IdArticulo=''{{IdArticulo}}''" targetid="modal" 
               excludehist="false" class="clickable"><i class="flx-icon icon-registered-2 txt-outstanding icon-2x"></i></flx-navbutton>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'document',NULL,NULL,N'DataConnectionString',N'systb-list',NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,0,0,1,1)
 ,(N'PMod_LotesAlmacenesStockList',N'flx-objectlist',N'project',N'Articulos',N'aal.IdAlmacen IS NOT NULL AND a.IdArticulo = ''{{IdArticulo}}''',N'Lista de stock lotes almacen',N'Datos de stock',N'clean',0,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'list',NULL,NULL,NULL,NULL,NULL,N'PPlantilla_StockLotesAlmacenes',NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,0,0,1,1)
 ,(N'PMod_Metodos_PersEdit',N'flx-html',N'project',N'Articulo_Metodos',N'{{ObjectWhere}}',N'Métodos pers edit',N'Métodos',N'default',0,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'organization',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,0,0,1,1)
 ,(N'PMod_MetodosEdit',N'flx-edit',N'project',N'Articulo_Metodos',N'{{ObjectWhere}}',N'Métodos',N'Métodos',N'default',0,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'organization',NULL,NULL,NULL,N'P_Toolbar_SAVE',NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,0,0,1,1)
 ,(N'PMod_PreciosClientes',N'flx-editlist',N'project',N'Precios_Clientes_Articulos',N'{{ObjectWhere}}',N'Precios Clientes',N' ',N'default',1,1,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'price',N'syspager-listfooter',12,NULL,N'P_ToolbarGenericAdd',NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,0,0,1,1)
 ,(N'PMod_PreciosProv',N'flx-editlist',N'project',N'Precios_Prov_Articulos',NULL,N'Precios Proveedores',N' ',N'default',1,1,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'price',N'syspager-listfooter',12,NULL,N'P_ToolbarGenericAdd',NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,0,0,1,1)
) AS Source ([ModuleName],[TypeId],[ClassId],[ObjectName],[ObjectFilter],[Descrip],[Title],[ContainerId],[CollapsibleButton],[FullscreenButton],[RefreshButton],[SearchButton],[SQlSentence],[Header],[HTMLText],[Footer],[Empty],[CssText],[ScriptText],[ChartTypeId],[ChartSettingName],[Series],[Labels],[Value],[Params],[JsonOptions],[Path],[TransFormFilePath],[IconName],[PagerId],[PageSize],[ConnStringID],[ToolbarName],[GridbarName],[TemplateId],[HeaderClass],[ModuleClass],[JSAfterLoad],[Searcher],[ShowWhenNew],[ManualInit],[SchedulerName],[TimelineSettingName],[KanbanSettingsName],[ChartBackground],[ChartBorder],[Reserved],[Cache],[Offline],[PresetName],[MixedChartTypes],[MixedChartLabels],[ChartLineBorderDash],[ChartLineFill],[Active],[OriginId])
ON (Target.[ModuleName] = Source.[ModuleName])
WHEN MATCHED AND (
	NULLIF(Source.[TypeId], Target.[TypeId]) IS NOT NULL OR NULLIF(Target.[TypeId], Source.[TypeId]) IS NOT NULL OR 
	NULLIF(Source.[ClassId], Target.[ClassId]) IS NOT NULL OR NULLIF(Target.[ClassId], Source.[ClassId]) IS NOT NULL OR 
	NULLIF(Source.[ObjectName], Target.[ObjectName]) IS NOT NULL OR NULLIF(Target.[ObjectName], Source.[ObjectName]) IS NOT NULL OR 
	NULLIF(Source.[ObjectFilter], Target.[ObjectFilter]) IS NOT NULL OR NULLIF(Target.[ObjectFilter], Source.[ObjectFilter]) IS NOT NULL OR 
	NULLIF(Source.[Descrip], Target.[Descrip]) IS NOT NULL OR NULLIF(Target.[Descrip], Source.[Descrip]) IS NOT NULL OR 
	NULLIF(Source.[Title], Target.[Title]) IS NOT NULL OR NULLIF(Target.[Title], Source.[Title]) IS NOT NULL OR 
	NULLIF(Source.[ContainerId], Target.[ContainerId]) IS NOT NULL OR NULLIF(Target.[ContainerId], Source.[ContainerId]) IS NOT NULL OR 
	NULLIF(Source.[CollapsibleButton], Target.[CollapsibleButton]) IS NOT NULL OR NULLIF(Target.[CollapsibleButton], Source.[CollapsibleButton]) IS NOT NULL OR 
	NULLIF(Source.[FullscreenButton], Target.[FullscreenButton]) IS NOT NULL OR NULLIF(Target.[FullscreenButton], Source.[FullscreenButton]) IS NOT NULL OR 
	NULLIF(Source.[RefreshButton], Target.[RefreshButton]) IS NOT NULL OR NULLIF(Target.[RefreshButton], Source.[RefreshButton]) IS NOT NULL OR 
	NULLIF(Source.[SearchButton], Target.[SearchButton]) IS NOT NULL OR NULLIF(Target.[SearchButton], Source.[SearchButton]) IS NOT NULL OR 
	NULLIF(Source.[SQlSentence], Target.[SQlSentence]) IS NOT NULL OR NULLIF(Target.[SQlSentence], Source.[SQlSentence]) IS NOT NULL OR 
	NULLIF(Source.[Header], Target.[Header]) IS NOT NULL OR NULLIF(Target.[Header], Source.[Header]) IS NOT NULL OR 
	NULLIF(Source.[HTMLText], Target.[HTMLText]) IS NOT NULL OR NULLIF(Target.[HTMLText], Source.[HTMLText]) IS NOT NULL OR 
	NULLIF(Source.[Footer], Target.[Footer]) IS NOT NULL OR NULLIF(Target.[Footer], Source.[Footer]) IS NOT NULL OR 
	NULLIF(Source.[Empty], Target.[Empty]) IS NOT NULL OR NULLIF(Target.[Empty], Source.[Empty]) IS NOT NULL OR 
	NULLIF(Source.[CssText], Target.[CssText]) IS NOT NULL OR NULLIF(Target.[CssText], Source.[CssText]) IS NOT NULL OR 
	NULLIF(Source.[ScriptText], Target.[ScriptText]) IS NOT NULL OR NULLIF(Target.[ScriptText], Source.[ScriptText]) IS NOT NULL OR 
	NULLIF(Source.[ChartTypeId], Target.[ChartTypeId]) IS NOT NULL OR NULLIF(Target.[ChartTypeId], Source.[ChartTypeId]) IS NOT NULL OR 
	NULLIF(Source.[ChartSettingName], Target.[ChartSettingName]) IS NOT NULL OR NULLIF(Target.[ChartSettingName], Source.[ChartSettingName]) IS NOT NULL OR 
	NULLIF(Source.[Series], Target.[Series]) IS NOT NULL OR NULLIF(Target.[Series], Source.[Series]) IS NOT NULL OR 
	NULLIF(Source.[Labels], Target.[Labels]) IS NOT NULL OR NULLIF(Target.[Labels], Source.[Labels]) IS NOT NULL OR 
	NULLIF(Source.[Value], Target.[Value]) IS NOT NULL OR NULLIF(Target.[Value], Source.[Value]) IS NOT NULL OR 
	NULLIF(Source.[Params], Target.[Params]) IS NOT NULL OR NULLIF(Target.[Params], Source.[Params]) IS NOT NULL OR 
	NULLIF(Source.[JsonOptions], Target.[JsonOptions]) IS NOT NULL OR NULLIF(Target.[JsonOptions], Source.[JsonOptions]) IS NOT NULL OR 
	NULLIF(Source.[Path], Target.[Path]) IS NOT NULL OR NULLIF(Target.[Path], Source.[Path]) IS NOT NULL OR 
	NULLIF(Source.[TransFormFilePath], Target.[TransFormFilePath]) IS NOT NULL OR NULLIF(Target.[TransFormFilePath], Source.[TransFormFilePath]) IS NOT NULL OR 
	NULLIF(Source.[IconName], Target.[IconName]) IS NOT NULL OR NULLIF(Target.[IconName], Source.[IconName]) IS NOT NULL OR 
	NULLIF(Source.[PagerId], Target.[PagerId]) IS NOT NULL OR NULLIF(Target.[PagerId], Source.[PagerId]) IS NOT NULL OR 
	NULLIF(Source.[PageSize], Target.[PageSize]) IS NOT NULL OR NULLIF(Target.[PageSize], Source.[PageSize]) IS NOT NULL OR 
	NULLIF(Source.[ConnStringID], Target.[ConnStringID]) IS NOT NULL OR NULLIF(Target.[ConnStringID], Source.[ConnStringID]) IS NOT NULL OR 
	NULLIF(Source.[ToolbarName], Target.[ToolbarName]) IS NOT NULL OR NULLIF(Target.[ToolbarName], Source.[ToolbarName]) IS NOT NULL OR 
	NULLIF(Source.[GridbarName], Target.[GridbarName]) IS NOT NULL OR NULLIF(Target.[GridbarName], Source.[GridbarName]) IS NOT NULL OR 
	NULLIF(Source.[TemplateId], Target.[TemplateId]) IS NOT NULL OR NULLIF(Target.[TemplateId], Source.[TemplateId]) IS NOT NULL OR 
	NULLIF(Source.[HeaderClass], Target.[HeaderClass]) IS NOT NULL OR NULLIF(Target.[HeaderClass], Source.[HeaderClass]) IS NOT NULL OR 
	NULLIF(Source.[ModuleClass], Target.[ModuleClass]) IS NOT NULL OR NULLIF(Target.[ModuleClass], Source.[ModuleClass]) IS NOT NULL OR 
	NULLIF(Source.[JSAfterLoad], Target.[JSAfterLoad]) IS NOT NULL OR NULLIF(Target.[JSAfterLoad], Source.[JSAfterLoad]) IS NOT NULL OR 
	NULLIF(Source.[Searcher], Target.[Searcher]) IS NOT NULL OR NULLIF(Target.[Searcher], Source.[Searcher]) IS NOT NULL OR 
	NULLIF(Source.[ShowWhenNew], Target.[ShowWhenNew]) IS NOT NULL OR NULLIF(Target.[ShowWhenNew], Source.[ShowWhenNew]) IS NOT NULL OR 
	NULLIF(Source.[ManualInit], Target.[ManualInit]) IS NOT NULL OR NULLIF(Target.[ManualInit], Source.[ManualInit]) IS NOT NULL OR 
	NULLIF(Source.[SchedulerName], Target.[SchedulerName]) IS NOT NULL OR NULLIF(Target.[SchedulerName], Source.[SchedulerName]) IS NOT NULL OR 
	NULLIF(Source.[TimelineSettingName], Target.[TimelineSettingName]) IS NOT NULL OR NULLIF(Target.[TimelineSettingName], Source.[TimelineSettingName]) IS NOT NULL OR 
	NULLIF(Source.[KanbanSettingsName], Target.[KanbanSettingsName]) IS NOT NULL OR NULLIF(Target.[KanbanSettingsName], Source.[KanbanSettingsName]) IS NOT NULL OR 
	NULLIF(Source.[ChartBackground], Target.[ChartBackground]) IS NOT NULL OR NULLIF(Target.[ChartBackground], Source.[ChartBackground]) IS NOT NULL OR 
	NULLIF(Source.[ChartBorder], Target.[ChartBorder]) IS NOT NULL OR NULLIF(Target.[ChartBorder], Source.[ChartBorder]) IS NOT NULL OR 
	NULLIF(Source.[Reserved], Target.[Reserved]) IS NOT NULL OR NULLIF(Target.[Reserved], Source.[Reserved]) IS NOT NULL OR 
	NULLIF(Source.[Cache], Target.[Cache]) IS NOT NULL OR NULLIF(Target.[Cache], Source.[Cache]) IS NOT NULL OR 
	NULLIF(Source.[Offline], Target.[Offline]) IS NOT NULL OR NULLIF(Target.[Offline], Source.[Offline]) IS NOT NULL OR 
	NULLIF(Source.[PresetName], Target.[PresetName]) IS NOT NULL OR NULLIF(Target.[PresetName], Source.[PresetName]) IS NOT NULL OR 
	NULLIF(Source.[MixedChartTypes], Target.[MixedChartTypes]) IS NOT NULL OR NULLIF(Target.[MixedChartTypes], Source.[MixedChartTypes]) IS NOT NULL OR 
	NULLIF(Source.[MixedChartLabels], Target.[MixedChartLabels]) IS NOT NULL OR NULLIF(Target.[MixedChartLabels], Source.[MixedChartLabels]) IS NOT NULL OR 
	NULLIF(Source.[ChartLineBorderDash], Target.[ChartLineBorderDash]) IS NOT NULL OR NULLIF(Target.[ChartLineBorderDash], Source.[ChartLineBorderDash]) IS NOT NULL OR 
	NULLIF(Source.[ChartLineFill], Target.[ChartLineFill]) IS NOT NULL OR NULLIF(Target.[ChartLineFill], Source.[ChartLineFill]) IS NOT NULL OR 
	NULLIF(Source.[Active], Target.[Active]) IS NOT NULL OR NULLIF(Target.[Active], Source.[Active]) IS NOT NULL OR 
	NULLIF(Source.[OriginId], Target.[OriginId]) IS NOT NULL OR NULLIF(Target.[OriginId], Source.[OriginId]) IS NOT NULL) THEN
 UPDATE SET
  [TypeId] = Source.[TypeId], 
  [ClassId] = Source.[ClassId], 
  [ObjectName] = Source.[ObjectName], 
  [ObjectFilter] = Source.[ObjectFilter], 
  [Descrip] = Source.[Descrip], 
  [Title] = Source.[Title], 
  [ContainerId] = Source.[ContainerId], 
  [CollapsibleButton] = Source.[CollapsibleButton], 
  [FullscreenButton] = Source.[FullscreenButton], 
  [RefreshButton] = Source.[RefreshButton], 
  [SearchButton] = Source.[SearchButton], 
  [SQlSentence] = Source.[SQlSentence], 
  [Header] = Source.[Header], 
  [HTMLText] = Source.[HTMLText], 
  [Footer] = Source.[Footer], 
  [Empty] = Source.[Empty], 
  [CssText] = Source.[CssText], 
  [ScriptText] = Source.[ScriptText], 
  [ChartTypeId] = Source.[ChartTypeId], 
  [ChartSettingName] = Source.[ChartSettingName], 
  [Series] = Source.[Series], 
  [Labels] = Source.[Labels], 
  [Value] = Source.[Value], 
  [Params] = Source.[Params], 
  [JsonOptions] = Source.[JsonOptions], 
  [Path] = Source.[Path], 
  [TransFormFilePath] = Source.[TransFormFilePath], 
  [IconName] = Source.[IconName], 
  [PagerId] = Source.[PagerId], 
  [PageSize] = Source.[PageSize], 
  [ConnStringID] = Source.[ConnStringID], 
  [ToolbarName] = Source.[ToolbarName], 
  [GridbarName] = Source.[GridbarName], 
  [TemplateId] = Source.[TemplateId], 
  [HeaderClass] = Source.[HeaderClass], 
  [ModuleClass] = Source.[ModuleClass], 
  [JSAfterLoad] = Source.[JSAfterLoad], 
  [Searcher] = Source.[Searcher], 
  [ShowWhenNew] = Source.[ShowWhenNew], 
  [ManualInit] = Source.[ManualInit], 
  [SchedulerName] = Source.[SchedulerName], 
  [TimelineSettingName] = Source.[TimelineSettingName], 
  [KanbanSettingsName] = Source.[KanbanSettingsName], 
  [ChartBackground] = Source.[ChartBackground], 
  [ChartBorder] = Source.[ChartBorder], 
  [Reserved] = Source.[Reserved], 
  [Cache] = Source.[Cache], 
  [Offline] = Source.[Offline], 
  [PresetName] = Source.[PresetName], 
  [MixedChartTypes] = Source.[MixedChartTypes], 
  [MixedChartLabels] = Source.[MixedChartLabels], 
  [ChartLineBorderDash] = Source.[ChartLineBorderDash], 
  [ChartLineFill] = Source.[ChartLineFill], 
  [Active] = Source.[Active], 
  [OriginId] = Source.[OriginId]
WHEN NOT MATCHED BY TARGET THEN
 INSERT([ModuleName],[TypeId],[ClassId],[ObjectName],[ObjectFilter],[Descrip],[Title],[ContainerId],[CollapsibleButton],[FullscreenButton],[RefreshButton],[SearchButton],[SQlSentence],[Header],[HTMLText],[Footer],[Empty],[CssText],[ScriptText],[ChartTypeId],[ChartSettingName],[Series],[Labels],[Value],[Params],[JsonOptions],[Path],[TransFormFilePath],[IconName],[PagerId],[PageSize],[ConnStringID],[ToolbarName],[GridbarName],[TemplateId],[HeaderClass],[ModuleClass],[JSAfterLoad],[Searcher],[ShowWhenNew],[ManualInit],[SchedulerName],[TimelineSettingName],[KanbanSettingsName],[ChartBackground],[ChartBorder],[Reserved],[Cache],[Offline],[PresetName],[MixedChartTypes],[MixedChartLabels],[ChartLineBorderDash],[ChartLineFill],[Active],[OriginId])
 VALUES(Source.[ModuleName],Source.[TypeId],Source.[ClassId],Source.[ObjectName],Source.[ObjectFilter],Source.[Descrip],Source.[Title],Source.[ContainerId],Source.[CollapsibleButton],Source.[FullscreenButton],Source.[RefreshButton],Source.[SearchButton],Source.[SQlSentence],Source.[Header],Source.[HTMLText],Source.[Footer],Source.[Empty],Source.[CssText],Source.[ScriptText],Source.[ChartTypeId],Source.[ChartSettingName],Source.[Series],Source.[Labels],Source.[Value],Source.[Params],Source.[JsonOptions],Source.[Path],Source.[TransFormFilePath],Source.[IconName],Source.[PagerId],Source.[PageSize],Source.[ConnStringID],Source.[ToolbarName],Source.[GridbarName],Source.[TemplateId],Source.[HeaderClass],Source.[ModuleClass],Source.[JSAfterLoad],Source.[Searcher],Source.[ShowWhenNew],Source.[ManualInit],Source.[SchedulerName],Source.[TimelineSettingName],Source.[KanbanSettingsName],Source.[ChartBackground],Source.[ChartBorder],Source.[Reserved],Source.[Cache],Source.[Offline],Source.[PresetName],Source.[MixedChartTypes],Source.[MixedChartLabels],Source.[ChartLineBorderDash],Source.[ChartLineFill],Source.[Active],Source.[OriginId])
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





