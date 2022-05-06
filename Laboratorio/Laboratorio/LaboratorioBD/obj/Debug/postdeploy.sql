﻿GO

 BEGIN TRAN

EXEC sp_MSforeachtable 'ALTER TABLE ? NOCHECK CONSTRAINT all'

EXEC sp_MSforeachtable 'ALTER TABLE ? DISABLE TRIGGER all'
 
--Application data
 


 


 


 




BEGIN TRY

MERGE INTO [Modules] AS Target
USING (VALUES
  (N'PMod_ArticuloEdit',N'flx-edit',N'project',N'Articulo',N'{{ObjectWhere}}',N'Edición artículo',N'Artículo',N'clean',0,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'edit-2',NULL,NULL,NULL,N'P_Toolbar_ArticuloEdit',NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,0,0,1,2)
 ,(N'PMod_ArticulosComponentes',N'flx-objectlist',N'project',N'Articulos',NULL,N'Lista de Componentes',N'Componentes',N'clean',0,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'list',NULL,NULL,NULL,NULL,NULL,N'PPlantilla_Componentes',NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,0,0,1,2)
 ,(N'PMod_ArticulosList',N'flx-objectlist',N'project',N'Articulos',NULL,N'Lista de artículos',N'Artículos',N'clean',0,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'list',NULL,NULL,NULL,N'PToolbar_ArticulosList',NULL,N'PPlantilla_ArticulosList',NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,0,0,1,2)
 ,(N'PMod_CompraLoteActivo',N'flx-objectlist',N'project',N'Articulos',N'Articulos.IdArticulo={{IdArticulo}} AND t4.IdEstado in (0,1)',N'Datos Compra Lote activo',N'Datos Compra Lote Activo',N'clean',0,0,0,0,NULL,NULL,N'{{NumFactura}}<br>{{Fecha}}<br>{{Proveedor}}<br>{{Lote}}<br>{{Cantidad}}<br>{{Coste}}<br>{{Total}}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'noicon',NULL,NULL,N'DataConnectionString',NULL,NULL,N'PPlantilla_CompraLoteActivo',NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,0,0,1,2)
 ,(N'PMod_LotesAlmacenesStockList',N'flx-objectlist',N'project',N'Articulos',N'aal.IdAlmacen IS NOT NULL',N'Lista de stock lotes almacen',N'Datos de stock',N'clean',0,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'list',NULL,NULL,NULL,NULL,NULL,N'PPlantilla_StockLotesAlmacenes',NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,0,0,1,2)
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
WHEN NOT MATCHED BY SOURCE AND TARGET.OriginId = 2 THEN 
 DELETE
;
END TRY
BEGIN CATCH
    DECLARE @ERRORNUMBER	INT,@ERRORMSG		VARCHAR(MAX),@ERRORSTATE		INT
    SELECT @ERRORNUMBER = 50000 + ERROR_NUMBER(),@ERRORMSG = ERROR_MESSAGE(), @ERRORSTATE = ERROR_STATE();
    THROW @ERRORNUMBER, @ERRORMSG, @ERRORSTATE
END CATCH
GO








BEGIN TRY

MERGE INTO [Navigation_Nodes] AS Target
USING (VALUES
  (N'A2FB6C3F-F1BB-44B7-A9F9-7A92DE8DDE67',N'25A4B4D5-44AE-4CF1-8733-568F00F31520',0,N'Artículos',N'list',N'Artículos',N'page',NULL,NULL,N'current',NULL,NULL,N'PPag_Articulos_Generico',NULL,NULL,NULL,N'Articulos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,NULL,2)
) AS Source ([NodeId],[ParentNodeId],[Order],[Title],[IconName],[Descrip],[TypeId],[Params],[Url],[TargetId],[ProcessName],[PageTypeId],[PageName],[ReportName],[HelpId],[ReportWhere],[ObjectName],[ObjectWhere],[Defaults],[SQLSentence],[SQLConStringId],[WebComponent],[TableName],[BadgeClass],[BadgeSQL],[BadgeConStringId],[BadgeRefresh],[Enabled],[cssClass],[OriginId])
ON (Target.[NodeId] = Source.[NodeId])
WHEN MATCHED AND (
	NULLIF(Source.[ParentNodeId], Target.[ParentNodeId]) IS NOT NULL OR NULLIF(Target.[ParentNodeId], Source.[ParentNodeId]) IS NOT NULL OR 
	NULLIF(Source.[Order], Target.[Order]) IS NOT NULL OR NULLIF(Target.[Order], Source.[Order]) IS NOT NULL OR 
	NULLIF(Source.[Title], Target.[Title]) IS NOT NULL OR NULLIF(Target.[Title], Source.[Title]) IS NOT NULL OR 
	NULLIF(Source.[IconName], Target.[IconName]) IS NOT NULL OR NULLIF(Target.[IconName], Source.[IconName]) IS NOT NULL OR 
	NULLIF(Source.[Descrip], Target.[Descrip]) IS NOT NULL OR NULLIF(Target.[Descrip], Source.[Descrip]) IS NOT NULL OR 
	NULLIF(Source.[TypeId], Target.[TypeId]) IS NOT NULL OR NULLIF(Target.[TypeId], Source.[TypeId]) IS NOT NULL OR 
	NULLIF(Source.[Params], Target.[Params]) IS NOT NULL OR NULLIF(Target.[Params], Source.[Params]) IS NOT NULL OR 
	NULLIF(Source.[Url], Target.[Url]) IS NOT NULL OR NULLIF(Target.[Url], Source.[Url]) IS NOT NULL OR 
	NULLIF(Source.[TargetId], Target.[TargetId]) IS NOT NULL OR NULLIF(Target.[TargetId], Source.[TargetId]) IS NOT NULL OR 
	NULLIF(Source.[ProcessName], Target.[ProcessName]) IS NOT NULL OR NULLIF(Target.[ProcessName], Source.[ProcessName]) IS NOT NULL OR 
	NULLIF(Source.[PageTypeId], Target.[PageTypeId]) IS NOT NULL OR NULLIF(Target.[PageTypeId], Source.[PageTypeId]) IS NOT NULL OR 
	NULLIF(Source.[PageName], Target.[PageName]) IS NOT NULL OR NULLIF(Target.[PageName], Source.[PageName]) IS NOT NULL OR 
	NULLIF(Source.[ReportName], Target.[ReportName]) IS NOT NULL OR NULLIF(Target.[ReportName], Source.[ReportName]) IS NOT NULL OR 
	NULLIF(Source.[HelpId], Target.[HelpId]) IS NOT NULL OR NULLIF(Target.[HelpId], Source.[HelpId]) IS NOT NULL OR 
	NULLIF(Source.[ReportWhere], Target.[ReportWhere]) IS NOT NULL OR NULLIF(Target.[ReportWhere], Source.[ReportWhere]) IS NOT NULL OR 
	NULLIF(Source.[ObjectName], Target.[ObjectName]) IS NOT NULL OR NULLIF(Target.[ObjectName], Source.[ObjectName]) IS NOT NULL OR 
	NULLIF(Source.[ObjectWhere], Target.[ObjectWhere]) IS NOT NULL OR NULLIF(Target.[ObjectWhere], Source.[ObjectWhere]) IS NOT NULL OR 
	NULLIF(Source.[Defaults], Target.[Defaults]) IS NOT NULL OR NULLIF(Target.[Defaults], Source.[Defaults]) IS NOT NULL OR 
	NULLIF(Source.[SQLSentence], Target.[SQLSentence]) IS NOT NULL OR NULLIF(Target.[SQLSentence], Source.[SQLSentence]) IS NOT NULL OR 
	NULLIF(Source.[SQLConStringId], Target.[SQLConStringId]) IS NOT NULL OR NULLIF(Target.[SQLConStringId], Source.[SQLConStringId]) IS NOT NULL OR 
	NULLIF(Source.[WebComponent], Target.[WebComponent]) IS NOT NULL OR NULLIF(Target.[WebComponent], Source.[WebComponent]) IS NOT NULL OR 
	NULLIF(Source.[TableName], Target.[TableName]) IS NOT NULL OR NULLIF(Target.[TableName], Source.[TableName]) IS NOT NULL OR 
	NULLIF(Source.[BadgeClass], Target.[BadgeClass]) IS NOT NULL OR NULLIF(Target.[BadgeClass], Source.[BadgeClass]) IS NOT NULL OR 
	NULLIF(Source.[BadgeSQL], Target.[BadgeSQL]) IS NOT NULL OR NULLIF(Target.[BadgeSQL], Source.[BadgeSQL]) IS NOT NULL OR 
	NULLIF(Source.[BadgeConStringId], Target.[BadgeConStringId]) IS NOT NULL OR NULLIF(Target.[BadgeConStringId], Source.[BadgeConStringId]) IS NOT NULL OR 
	NULLIF(Source.[BadgeRefresh], Target.[BadgeRefresh]) IS NOT NULL OR NULLIF(Target.[BadgeRefresh], Source.[BadgeRefresh]) IS NOT NULL OR 
	NULLIF(Source.[Enabled], Target.[Enabled]) IS NOT NULL OR NULLIF(Target.[Enabled], Source.[Enabled]) IS NOT NULL OR 
	NULLIF(Source.[cssClass], Target.[cssClass]) IS NOT NULL OR NULLIF(Target.[cssClass], Source.[cssClass]) IS NOT NULL OR 
	NULLIF(Source.[OriginId], Target.[OriginId]) IS NOT NULL OR NULLIF(Target.[OriginId], Source.[OriginId]) IS NOT NULL) THEN
 UPDATE SET
  [ParentNodeId] = Source.[ParentNodeId], 
  [Order] = Source.[Order], 
  [Title] = Source.[Title], 
  [IconName] = Source.[IconName], 
  [Descrip] = Source.[Descrip], 
  [TypeId] = Source.[TypeId], 
  [Params] = Source.[Params], 
  [Url] = Source.[Url], 
  [TargetId] = Source.[TargetId], 
  [ProcessName] = Source.[ProcessName], 
  [PageTypeId] = Source.[PageTypeId], 
  [PageName] = Source.[PageName], 
  [ReportName] = Source.[ReportName], 
  [HelpId] = Source.[HelpId], 
  [ReportWhere] = Source.[ReportWhere], 
  [ObjectName] = Source.[ObjectName], 
  [ObjectWhere] = Source.[ObjectWhere], 
  [Defaults] = Source.[Defaults], 
  [SQLSentence] = Source.[SQLSentence], 
  [SQLConStringId] = Source.[SQLConStringId], 
  [WebComponent] = Source.[WebComponent], 
  [TableName] = Source.[TableName], 
  [BadgeClass] = Source.[BadgeClass], 
  [BadgeSQL] = Source.[BadgeSQL], 
  [BadgeConStringId] = Source.[BadgeConStringId], 
  [BadgeRefresh] = Source.[BadgeRefresh], 
  [Enabled] = Source.[Enabled], 
  [cssClass] = Source.[cssClass], 
  [OriginId] = Source.[OriginId]
WHEN NOT MATCHED BY TARGET THEN
 INSERT([NodeId],[ParentNodeId],[Order],[Title],[IconName],[Descrip],[TypeId],[Params],[Url],[TargetId],[ProcessName],[PageTypeId],[PageName],[ReportName],[HelpId],[ReportWhere],[ObjectName],[ObjectWhere],[Defaults],[SQLSentence],[SQLConStringId],[WebComponent],[TableName],[BadgeClass],[BadgeSQL],[BadgeConStringId],[BadgeRefresh],[Enabled],[cssClass],[OriginId])
 VALUES(Source.[NodeId],Source.[ParentNodeId],Source.[Order],Source.[Title],Source.[IconName],Source.[Descrip],Source.[TypeId],Source.[Params],Source.[Url],Source.[TargetId],Source.[ProcessName],Source.[PageTypeId],Source.[PageName],Source.[ReportName],Source.[HelpId],Source.[ReportWhere],Source.[ObjectName],Source.[ObjectWhere],Source.[Defaults],Source.[SQLSentence],Source.[SQLConStringId],Source.[WebComponent],Source.[TableName],Source.[BadgeClass],Source.[BadgeSQL],Source.[BadgeConStringId],Source.[BadgeRefresh],Source.[Enabled],Source.[cssClass],Source.[OriginId])
WHEN NOT MATCHED BY SOURCE AND TARGET.OriginId = 2 THEN 
 DELETE
;
END TRY
BEGIN CATCH
    DECLARE @ERRORNUMBER	INT,@ERRORMSG		VARCHAR(MAX),@ERRORSTATE		INT
    SELECT @ERRORNUMBER = 50000 + ERROR_NUMBER(),@ERRORMSG = ERROR_MESSAGE(), @ERRORSTATE = ERROR_STATE();
    THROW @ERRORNUMBER, @ERRORMSG, @ERRORSTATE
END CATCH
GO








BEGIN TRY

MERGE INTO [Objects] AS Target
USING (VALUES
  (N'Articulo',0,NULL,N'Articulos',NULL,0,NULL,N'Articulos',N'list',NULL,0,200,N'{{IdArticulo}} - {{Descrip}}',0,1,1,1,1,1,1,N'standard',N'standard',N'standard',NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,1,NULL,0,N'DataConnectionString',1,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,0,2)
 ,(N'Articulos',1,N'Articulo',N'Articulos',NULL,0,NULL,N'Articulos',N'list',NULL,0,200,N'Articulos',0,1,1,1,1,1,1,N'standard',N'standard',N'standard',NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,1,NULL,0,N'DataConnectionString',1,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,0,2)
 ,(N'Lote',0,NULL,N'Lotes',NULL,0,NULL,N'Lotes',N'list1',NULL,0,200,N'Lote - {{NumLote}}',0,1,1,1,1,1,1,N'standard',N'standard',N'standard',NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,1,NULL,0,N'DataConnectionString',1,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,0,2)
 ,(N'Lotes',1,N'Lote',N'Lotes',NULL,0,NULL,N'Lotes',N'list1',NULL,0,200,N'Lotes',0,1,1,1,1,1,1,N'standard',N'standard',N'standard',NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,1,NULL,0,N'DataConnectionString',1,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,0,2)
) AS Source ([ObjectName],[Iscollection],[ObjectChildName],[TableName],[WhereSentence],[ConfigDB],[OrderBy],[Descrip],[IconName],[UniqueIdentifierField],[ShowDefaultMenu],[DefaultPageSize],[ParsedDescrip],[Auditable],[Active],[CanInsert],[CanUpdate],[CanDelete],[CanView],[CanPrint],[InsertType],[UpdateType],[DeleteType],[InsertProcessName],[UpdateProcessName],[DeleteProcessName],[LoadProcessName],[InsertTriggerEvent],[UpdateTriggerEvent],[DeleteTriggerEvent],[HelpId],[OverrideObjectName],[OverrideObjectWhere],[NavigateNodeId],[Clonable],[ViewKeys],[IgnoreDBRequired],[ConnStringID],[TransactionOn],[InsertFlowText],[UpdateFlowText],[DeleteFlowText],[Offline],[BeforeUpdate],[BeforeInsert],[BeforeDelete],[AfterUpdate],[AfterInsert],[AfterDelete],[Reserved],[OriginId])
ON (Target.[ObjectName] = Source.[ObjectName])
WHEN MATCHED AND (
	NULLIF(Source.[Iscollection], Target.[Iscollection]) IS NOT NULL OR NULLIF(Target.[Iscollection], Source.[Iscollection]) IS NOT NULL OR 
	NULLIF(Source.[ObjectChildName], Target.[ObjectChildName]) IS NOT NULL OR NULLIF(Target.[ObjectChildName], Source.[ObjectChildName]) IS NOT NULL OR 
	NULLIF(Source.[TableName], Target.[TableName]) IS NOT NULL OR NULLIF(Target.[TableName], Source.[TableName]) IS NOT NULL OR 
	NULLIF(Source.[WhereSentence], Target.[WhereSentence]) IS NOT NULL OR NULLIF(Target.[WhereSentence], Source.[WhereSentence]) IS NOT NULL OR 
	NULLIF(Source.[ConfigDB], Target.[ConfigDB]) IS NOT NULL OR NULLIF(Target.[ConfigDB], Source.[ConfigDB]) IS NOT NULL OR 
	NULLIF(Source.[OrderBy], Target.[OrderBy]) IS NOT NULL OR NULLIF(Target.[OrderBy], Source.[OrderBy]) IS NOT NULL OR 
	NULLIF(Source.[Descrip], Target.[Descrip]) IS NOT NULL OR NULLIF(Target.[Descrip], Source.[Descrip]) IS NOT NULL OR 
	NULLIF(Source.[IconName], Target.[IconName]) IS NOT NULL OR NULLIF(Target.[IconName], Source.[IconName]) IS NOT NULL OR 
	NULLIF(Source.[UniqueIdentifierField], Target.[UniqueIdentifierField]) IS NOT NULL OR NULLIF(Target.[UniqueIdentifierField], Source.[UniqueIdentifierField]) IS NOT NULL OR 
	NULLIF(Source.[ShowDefaultMenu], Target.[ShowDefaultMenu]) IS NOT NULL OR NULLIF(Target.[ShowDefaultMenu], Source.[ShowDefaultMenu]) IS NOT NULL OR 
	NULLIF(Source.[DefaultPageSize], Target.[DefaultPageSize]) IS NOT NULL OR NULLIF(Target.[DefaultPageSize], Source.[DefaultPageSize]) IS NOT NULL OR 
	NULLIF(Source.[ParsedDescrip], Target.[ParsedDescrip]) IS NOT NULL OR NULLIF(Target.[ParsedDescrip], Source.[ParsedDescrip]) IS NOT NULL OR 
	NULLIF(Source.[Auditable], Target.[Auditable]) IS NOT NULL OR NULLIF(Target.[Auditable], Source.[Auditable]) IS NOT NULL OR 
	NULLIF(Source.[Active], Target.[Active]) IS NOT NULL OR NULLIF(Target.[Active], Source.[Active]) IS NOT NULL OR 
	NULLIF(Source.[CanInsert], Target.[CanInsert]) IS NOT NULL OR NULLIF(Target.[CanInsert], Source.[CanInsert]) IS NOT NULL OR 
	NULLIF(Source.[CanUpdate], Target.[CanUpdate]) IS NOT NULL OR NULLIF(Target.[CanUpdate], Source.[CanUpdate]) IS NOT NULL OR 
	NULLIF(Source.[CanDelete], Target.[CanDelete]) IS NOT NULL OR NULLIF(Target.[CanDelete], Source.[CanDelete]) IS NOT NULL OR 
	NULLIF(Source.[CanView], Target.[CanView]) IS NOT NULL OR NULLIF(Target.[CanView], Source.[CanView]) IS NOT NULL OR 
	NULLIF(Source.[CanPrint], Target.[CanPrint]) IS NOT NULL OR NULLIF(Target.[CanPrint], Source.[CanPrint]) IS NOT NULL OR 
	NULLIF(Source.[InsertType], Target.[InsertType]) IS NOT NULL OR NULLIF(Target.[InsertType], Source.[InsertType]) IS NOT NULL OR 
	NULLIF(Source.[UpdateType], Target.[UpdateType]) IS NOT NULL OR NULLIF(Target.[UpdateType], Source.[UpdateType]) IS NOT NULL OR 
	NULLIF(Source.[DeleteType], Target.[DeleteType]) IS NOT NULL OR NULLIF(Target.[DeleteType], Source.[DeleteType]) IS NOT NULL OR 
	NULLIF(Source.[InsertProcessName], Target.[InsertProcessName]) IS NOT NULL OR NULLIF(Target.[InsertProcessName], Source.[InsertProcessName]) IS NOT NULL OR 
	NULLIF(Source.[UpdateProcessName], Target.[UpdateProcessName]) IS NOT NULL OR NULLIF(Target.[UpdateProcessName], Source.[UpdateProcessName]) IS NOT NULL OR 
	NULLIF(Source.[DeleteProcessName], Target.[DeleteProcessName]) IS NOT NULL OR NULLIF(Target.[DeleteProcessName], Source.[DeleteProcessName]) IS NOT NULL OR 
	NULLIF(Source.[LoadProcessName], Target.[LoadProcessName]) IS NOT NULL OR NULLIF(Target.[LoadProcessName], Source.[LoadProcessName]) IS NOT NULL OR 
	NULLIF(Source.[InsertTriggerEvent], Target.[InsertTriggerEvent]) IS NOT NULL OR NULLIF(Target.[InsertTriggerEvent], Source.[InsertTriggerEvent]) IS NOT NULL OR 
	NULLIF(Source.[UpdateTriggerEvent], Target.[UpdateTriggerEvent]) IS NOT NULL OR NULLIF(Target.[UpdateTriggerEvent], Source.[UpdateTriggerEvent]) IS NOT NULL OR 
	NULLIF(Source.[DeleteTriggerEvent], Target.[DeleteTriggerEvent]) IS NOT NULL OR NULLIF(Target.[DeleteTriggerEvent], Source.[DeleteTriggerEvent]) IS NOT NULL OR 
	NULLIF(Source.[HelpId], Target.[HelpId]) IS NOT NULL OR NULLIF(Target.[HelpId], Source.[HelpId]) IS NOT NULL OR 
	NULLIF(Source.[OverrideObjectName], Target.[OverrideObjectName]) IS NOT NULL OR NULLIF(Target.[OverrideObjectName], Source.[OverrideObjectName]) IS NOT NULL OR 
	NULLIF(Source.[OverrideObjectWhere], Target.[OverrideObjectWhere]) IS NOT NULL OR NULLIF(Target.[OverrideObjectWhere], Source.[OverrideObjectWhere]) IS NOT NULL OR 
	NULLIF(Source.[NavigateNodeId], Target.[NavigateNodeId]) IS NOT NULL OR NULLIF(Target.[NavigateNodeId], Source.[NavigateNodeId]) IS NOT NULL OR 
	NULLIF(Source.[Clonable], Target.[Clonable]) IS NOT NULL OR NULLIF(Target.[Clonable], Source.[Clonable]) IS NOT NULL OR 
	NULLIF(Source.[ViewKeys], Target.[ViewKeys]) IS NOT NULL OR NULLIF(Target.[ViewKeys], Source.[ViewKeys]) IS NOT NULL OR 
	NULLIF(Source.[IgnoreDBRequired], Target.[IgnoreDBRequired]) IS NOT NULL OR NULLIF(Target.[IgnoreDBRequired], Source.[IgnoreDBRequired]) IS NOT NULL OR 
	NULLIF(Source.[ConnStringID], Target.[ConnStringID]) IS NOT NULL OR NULLIF(Target.[ConnStringID], Source.[ConnStringID]) IS NOT NULL OR 
	NULLIF(Source.[TransactionOn], Target.[TransactionOn]) IS NOT NULL OR NULLIF(Target.[TransactionOn], Source.[TransactionOn]) IS NOT NULL OR 
	NULLIF(Source.[InsertFlowText], Target.[InsertFlowText]) IS NOT NULL OR NULLIF(Target.[InsertFlowText], Source.[InsertFlowText]) IS NOT NULL OR 
	NULLIF(Source.[UpdateFlowText], Target.[UpdateFlowText]) IS NOT NULL OR NULLIF(Target.[UpdateFlowText], Source.[UpdateFlowText]) IS NOT NULL OR 
	NULLIF(Source.[DeleteFlowText], Target.[DeleteFlowText]) IS NOT NULL OR NULLIF(Target.[DeleteFlowText], Source.[DeleteFlowText]) IS NOT NULL OR 
	NULLIF(Source.[Offline], Target.[Offline]) IS NOT NULL OR NULLIF(Target.[Offline], Source.[Offline]) IS NOT NULL OR 
	NULLIF(Source.[BeforeUpdate], Target.[BeforeUpdate]) IS NOT NULL OR NULLIF(Target.[BeforeUpdate], Source.[BeforeUpdate]) IS NOT NULL OR 
	NULLIF(Source.[BeforeInsert], Target.[BeforeInsert]) IS NOT NULL OR NULLIF(Target.[BeforeInsert], Source.[BeforeInsert]) IS NOT NULL OR 
	NULLIF(Source.[BeforeDelete], Target.[BeforeDelete]) IS NOT NULL OR NULLIF(Target.[BeforeDelete], Source.[BeforeDelete]) IS NOT NULL OR 
	NULLIF(Source.[AfterUpdate], Target.[AfterUpdate]) IS NOT NULL OR NULLIF(Target.[AfterUpdate], Source.[AfterUpdate]) IS NOT NULL OR 
	NULLIF(Source.[AfterInsert], Target.[AfterInsert]) IS NOT NULL OR NULLIF(Target.[AfterInsert], Source.[AfterInsert]) IS NOT NULL OR 
	NULLIF(Source.[AfterDelete], Target.[AfterDelete]) IS NOT NULL OR NULLIF(Target.[AfterDelete], Source.[AfterDelete]) IS NOT NULL OR 
	NULLIF(Source.[Reserved], Target.[Reserved]) IS NOT NULL OR NULLIF(Target.[Reserved], Source.[Reserved]) IS NOT NULL OR 
	NULLIF(Source.[OriginId], Target.[OriginId]) IS NOT NULL OR NULLIF(Target.[OriginId], Source.[OriginId]) IS NOT NULL) THEN
 UPDATE SET
  [Iscollection] = Source.[Iscollection], 
  [ObjectChildName] = Source.[ObjectChildName], 
  [TableName] = Source.[TableName], 
  [WhereSentence] = Source.[WhereSentence], 
  [ConfigDB] = Source.[ConfigDB], 
  [OrderBy] = Source.[OrderBy], 
  [Descrip] = Source.[Descrip], 
  [IconName] = Source.[IconName], 
  [UniqueIdentifierField] = Source.[UniqueIdentifierField], 
  [ShowDefaultMenu] = Source.[ShowDefaultMenu], 
  [DefaultPageSize] = Source.[DefaultPageSize], 
  [ParsedDescrip] = Source.[ParsedDescrip], 
  [Auditable] = Source.[Auditable], 
  [Active] = Source.[Active], 
  [CanInsert] = Source.[CanInsert], 
  [CanUpdate] = Source.[CanUpdate], 
  [CanDelete] = Source.[CanDelete], 
  [CanView] = Source.[CanView], 
  [CanPrint] = Source.[CanPrint], 
  [InsertType] = Source.[InsertType], 
  [UpdateType] = Source.[UpdateType], 
  [DeleteType] = Source.[DeleteType], 
  [InsertProcessName] = Source.[InsertProcessName], 
  [UpdateProcessName] = Source.[UpdateProcessName], 
  [DeleteProcessName] = Source.[DeleteProcessName], 
  [LoadProcessName] = Source.[LoadProcessName], 
  [InsertTriggerEvent] = Source.[InsertTriggerEvent], 
  [UpdateTriggerEvent] = Source.[UpdateTriggerEvent], 
  [DeleteTriggerEvent] = Source.[DeleteTriggerEvent], 
  [HelpId] = Source.[HelpId], 
  [OverrideObjectName] = Source.[OverrideObjectName], 
  [OverrideObjectWhere] = Source.[OverrideObjectWhere], 
  [NavigateNodeId] = Source.[NavigateNodeId], 
  [Clonable] = Source.[Clonable], 
  [ViewKeys] = Source.[ViewKeys], 
  [IgnoreDBRequired] = Source.[IgnoreDBRequired], 
  [ConnStringID] = Source.[ConnStringID], 
  [TransactionOn] = Source.[TransactionOn], 
  [InsertFlowText] = Source.[InsertFlowText], 
  [UpdateFlowText] = Source.[UpdateFlowText], 
  [DeleteFlowText] = Source.[DeleteFlowText], 
  [Offline] = Source.[Offline], 
  [BeforeUpdate] = Source.[BeforeUpdate], 
  [BeforeInsert] = Source.[BeforeInsert], 
  [BeforeDelete] = Source.[BeforeDelete], 
  [AfterUpdate] = Source.[AfterUpdate], 
  [AfterInsert] = Source.[AfterInsert], 
  [AfterDelete] = Source.[AfterDelete], 
  [Reserved] = Source.[Reserved], 
  [OriginId] = Source.[OriginId]
WHEN NOT MATCHED BY TARGET THEN
 INSERT([ObjectName],[Iscollection],[ObjectChildName],[TableName],[WhereSentence],[ConfigDB],[OrderBy],[Descrip],[IconName],[UniqueIdentifierField],[ShowDefaultMenu],[DefaultPageSize],[ParsedDescrip],[Auditable],[Active],[CanInsert],[CanUpdate],[CanDelete],[CanView],[CanPrint],[InsertType],[UpdateType],[DeleteType],[InsertProcessName],[UpdateProcessName],[DeleteProcessName],[LoadProcessName],[InsertTriggerEvent],[UpdateTriggerEvent],[DeleteTriggerEvent],[HelpId],[OverrideObjectName],[OverrideObjectWhere],[NavigateNodeId],[Clonable],[ViewKeys],[IgnoreDBRequired],[ConnStringID],[TransactionOn],[InsertFlowText],[UpdateFlowText],[DeleteFlowText],[Offline],[BeforeUpdate],[BeforeInsert],[BeforeDelete],[AfterUpdate],[AfterInsert],[AfterDelete],[Reserved],[OriginId])
 VALUES(Source.[ObjectName],Source.[Iscollection],Source.[ObjectChildName],Source.[TableName],Source.[WhereSentence],Source.[ConfigDB],Source.[OrderBy],Source.[Descrip],Source.[IconName],Source.[UniqueIdentifierField],Source.[ShowDefaultMenu],Source.[DefaultPageSize],Source.[ParsedDescrip],Source.[Auditable],Source.[Active],Source.[CanInsert],Source.[CanUpdate],Source.[CanDelete],Source.[CanView],Source.[CanPrint],Source.[InsertType],Source.[UpdateType],Source.[DeleteType],Source.[InsertProcessName],Source.[UpdateProcessName],Source.[DeleteProcessName],Source.[LoadProcessName],Source.[InsertTriggerEvent],Source.[UpdateTriggerEvent],Source.[DeleteTriggerEvent],Source.[HelpId],Source.[OverrideObjectName],Source.[OverrideObjectWhere],Source.[NavigateNodeId],Source.[Clonable],Source.[ViewKeys],Source.[IgnoreDBRequired],Source.[ConnStringID],Source.[TransactionOn],Source.[InsertFlowText],Source.[UpdateFlowText],Source.[DeleteFlowText],Source.[Offline],Source.[BeforeUpdate],Source.[BeforeInsert],Source.[BeforeDelete],Source.[AfterUpdate],Source.[AfterInsert],Source.[AfterDelete],Source.[Reserved],Source.[OriginId])
WHEN NOT MATCHED BY SOURCE AND TARGET.OriginId = 2 THEN 
 DELETE
;
END TRY
BEGIN CATCH
    DECLARE @ERRORNUMBER	INT,@ERRORMSG		VARCHAR(MAX),@ERRORSTATE		INT
    SELECT @ERRORNUMBER = 50000 + ERROR_NUMBER(),@ERRORMSG = ERROR_MESSAGE(), @ERRORSTATE = ERROR_STATE();
    THROW @ERRORNUMBER, @ERRORMSG, @ERRORSTATE
END CATCH
GO






 




BEGIN TRY

MERGE INTO [Objects_Properties] AS Target
USING (VALUES
  (N'Articulo',N'CodBarras',N'Cod. Barras',1,4,4,1,0,0,1,N'text',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'popup',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'barcode',NULL,N'|',0,NULL,0,N'RelativePath',NULL,NULL,NULL,NULL,0,N'sysAll',0,2)
 ,(N'Articulo',N'Descrip',N'Descripción',0,4,4,1,0,0,1,N'text',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'popup',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'text',NULL,N'|',0,NULL,0,N'RelativePath',NULL,NULL,NULL,NULL,0,N'sysAll',0,2)
 ,(N'Articulo',N'IdArticulo',N'IdArticulo',0,0,4,1,0,0,1,N'text',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'popup',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'list',NULL,N'|',0,NULL,0,N'RelativePath',NULL,NULL,NULL,NULL,0,N'sysAll',0,2)
 ,(N'Articulo',N'IdFamilia',N'Familia',0,8,4,1,0,0,1,N'dbcombo',0,NULL,NULL,N'SELECT IdFamilia, Descrip, UltimoNivel FROM Articulos_Familias WHERE UltimoNivel=1 ORDER BY IdFamilia asc',NULL,NULL,N'IdFamilia',N'Descrip',NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'popup',NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'{{IdFamilia}} - {{Descrip}}',NULL,NULL,N'DataConnectionString',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'list',NULL,N'|',0,NULL,0,N'RelativePath',NULL,NULL,NULL,NULL,0,N'sysAll',0,2)
 ,(N'Articulo',N'IdIva',N'Tipo IVA',1,0,4,1,0,0,1,N'dbcombo',0,NULL,NULL,N'SELECT IdIva, Descrip FROM IVas',NULL,NULL,N'IdIva',N'Descrip',NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'popup',NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'{{Descrip}}',NULL,NULL,N'DataConnectionString',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'accounting_plans-2',NULL,N'|',0,NULL,0,N'RelativePath',NULL,NULL,NULL,NULL,0,N'sysAll',0,2)
) AS Source ([ObjectName],[PropertyName],[Label],[PositionY],[PositionX],[Width],[Height],[Hide],[ClientReadOnly],[FormDisplay],[TypeId],[Locked],[CustomPropName],[Mask],[SQlSentence],[SQLEditSentence],[SQLFilter],[SQLValueField],[SQLDisplayField],[SQLObjectName],[SQLViewName],[SQLOfflineSentence],[SQLOfflineOrderBy],[WhereSentence],[DefaultValue],[PersistDefaultValue],[IgnoreDBDefaultValue],[DetachedFromDB],[SearchFunction],[SearchCollection],[SearchWhere],[SearchReturnFields],[SecurityObject],[AllowNew],[AllowNewFunction],[AllowNewReturnFields],[AllowNewDefaults],[ObjNameLink],[ObjWhereLink],[TargetIdLink],[Style],[CSSClass],[LabelStyle],[LabelCSSClass],[DecimalPlaces],[RootPath],[FormatString],[DirectTemplate],[Tag],[HelpId],[ConnStringId],[IsRequired],[IsRequiredMessage],[minValue],[minValueMessage],[maxValue],[maxValueMessage],[RegExp],[RegExpText],[SQLValidator],[ValidatorMessage],[OnChangeJsFunction],[OnChangeProcessName],[PlaceHolder],[IconName],[ToolbarName],[Separator],[AutoIncrement],[AutoIncrementFunction],[CascadeDependencies],[RootPathType],[PageSize],[ImageCompressionType],[ImageMaxWidth],[ImageMaxHeight],[Offline],[ExtensionId],[Autoselect],[OriginId])
ON (Target.[ObjectName] = Source.[ObjectName] AND Target.[PropertyName] = Source.[PropertyName])
WHEN MATCHED AND (
	NULLIF(Source.[Label], Target.[Label]) IS NOT NULL OR NULLIF(Target.[Label], Source.[Label]) IS NOT NULL OR 
	NULLIF(Source.[PositionY], Target.[PositionY]) IS NOT NULL OR NULLIF(Target.[PositionY], Source.[PositionY]) IS NOT NULL OR 
	NULLIF(Source.[PositionX], Target.[PositionX]) IS NOT NULL OR NULLIF(Target.[PositionX], Source.[PositionX]) IS NOT NULL OR 
	NULLIF(Source.[Width], Target.[Width]) IS NOT NULL OR NULLIF(Target.[Width], Source.[Width]) IS NOT NULL OR 
	NULLIF(Source.[Height], Target.[Height]) IS NOT NULL OR NULLIF(Target.[Height], Source.[Height]) IS NOT NULL OR 
	NULLIF(Source.[Hide], Target.[Hide]) IS NOT NULL OR NULLIF(Target.[Hide], Source.[Hide]) IS NOT NULL OR 
	NULLIF(Source.[ClientReadOnly], Target.[ClientReadOnly]) IS NOT NULL OR NULLIF(Target.[ClientReadOnly], Source.[ClientReadOnly]) IS NOT NULL OR 
	NULLIF(Source.[FormDisplay], Target.[FormDisplay]) IS NOT NULL OR NULLIF(Target.[FormDisplay], Source.[FormDisplay]) IS NOT NULL OR 
	NULLIF(Source.[TypeId], Target.[TypeId]) IS NOT NULL OR NULLIF(Target.[TypeId], Source.[TypeId]) IS NOT NULL OR 
	NULLIF(Source.[Locked], Target.[Locked]) IS NOT NULL OR NULLIF(Target.[Locked], Source.[Locked]) IS NOT NULL OR 
	NULLIF(Source.[CustomPropName], Target.[CustomPropName]) IS NOT NULL OR NULLIF(Target.[CustomPropName], Source.[CustomPropName]) IS NOT NULL OR 
	NULLIF(Source.[Mask], Target.[Mask]) IS NOT NULL OR NULLIF(Target.[Mask], Source.[Mask]) IS NOT NULL OR 
	NULLIF(Source.[SQlSentence], Target.[SQlSentence]) IS NOT NULL OR NULLIF(Target.[SQlSentence], Source.[SQlSentence]) IS NOT NULL OR 
	NULLIF(Source.[SQLEditSentence], Target.[SQLEditSentence]) IS NOT NULL OR NULLIF(Target.[SQLEditSentence], Source.[SQLEditSentence]) IS NOT NULL OR 
	NULLIF(Source.[SQLFilter], Target.[SQLFilter]) IS NOT NULL OR NULLIF(Target.[SQLFilter], Source.[SQLFilter]) IS NOT NULL OR 
	NULLIF(Source.[SQLValueField], Target.[SQLValueField]) IS NOT NULL OR NULLIF(Target.[SQLValueField], Source.[SQLValueField]) IS NOT NULL OR 
	NULLIF(Source.[SQLDisplayField], Target.[SQLDisplayField]) IS NOT NULL OR NULLIF(Target.[SQLDisplayField], Source.[SQLDisplayField]) IS NOT NULL OR 
	NULLIF(Source.[SQLObjectName], Target.[SQLObjectName]) IS NOT NULL OR NULLIF(Target.[SQLObjectName], Source.[SQLObjectName]) IS NOT NULL OR 
	NULLIF(Source.[SQLViewName], Target.[SQLViewName]) IS NOT NULL OR NULLIF(Target.[SQLViewName], Source.[SQLViewName]) IS NOT NULL OR 
	NULLIF(Source.[SQLOfflineSentence], Target.[SQLOfflineSentence]) IS NOT NULL OR NULLIF(Target.[SQLOfflineSentence], Source.[SQLOfflineSentence]) IS NOT NULL OR 
	NULLIF(Source.[SQLOfflineOrderBy], Target.[SQLOfflineOrderBy]) IS NOT NULL OR NULLIF(Target.[SQLOfflineOrderBy], Source.[SQLOfflineOrderBy]) IS NOT NULL OR 
	NULLIF(Source.[WhereSentence], Target.[WhereSentence]) IS NOT NULL OR NULLIF(Target.[WhereSentence], Source.[WhereSentence]) IS NOT NULL OR 
	NULLIF(Source.[DefaultValue], Target.[DefaultValue]) IS NOT NULL OR NULLIF(Target.[DefaultValue], Source.[DefaultValue]) IS NOT NULL OR 
	NULLIF(Source.[PersistDefaultValue], Target.[PersistDefaultValue]) IS NOT NULL OR NULLIF(Target.[PersistDefaultValue], Source.[PersistDefaultValue]) IS NOT NULL OR 
	NULLIF(Source.[IgnoreDBDefaultValue], Target.[IgnoreDBDefaultValue]) IS NOT NULL OR NULLIF(Target.[IgnoreDBDefaultValue], Source.[IgnoreDBDefaultValue]) IS NOT NULL OR 
	NULLIF(Source.[DetachedFromDB], Target.[DetachedFromDB]) IS NOT NULL OR NULLIF(Target.[DetachedFromDB], Source.[DetachedFromDB]) IS NOT NULL OR 
	NULLIF(Source.[SearchFunction], Target.[SearchFunction]) IS NOT NULL OR NULLIF(Target.[SearchFunction], Source.[SearchFunction]) IS NOT NULL OR 
	NULLIF(Source.[SearchCollection], Target.[SearchCollection]) IS NOT NULL OR NULLIF(Target.[SearchCollection], Source.[SearchCollection]) IS NOT NULL OR 
	NULLIF(Source.[SearchWhere], Target.[SearchWhere]) IS NOT NULL OR NULLIF(Target.[SearchWhere], Source.[SearchWhere]) IS NOT NULL OR 
	NULLIF(Source.[SearchReturnFields], Target.[SearchReturnFields]) IS NOT NULL OR NULLIF(Target.[SearchReturnFields], Source.[SearchReturnFields]) IS NOT NULL OR 
	NULLIF(Source.[SecurityObject], Target.[SecurityObject]) IS NOT NULL OR NULLIF(Target.[SecurityObject], Source.[SecurityObject]) IS NOT NULL OR 
	NULLIF(Source.[AllowNew], Target.[AllowNew]) IS NOT NULL OR NULLIF(Target.[AllowNew], Source.[AllowNew]) IS NOT NULL OR 
	NULLIF(Source.[AllowNewFunction], Target.[AllowNewFunction]) IS NOT NULL OR NULLIF(Target.[AllowNewFunction], Source.[AllowNewFunction]) IS NOT NULL OR 
	NULLIF(Source.[AllowNewReturnFields], Target.[AllowNewReturnFields]) IS NOT NULL OR NULLIF(Target.[AllowNewReturnFields], Source.[AllowNewReturnFields]) IS NOT NULL OR 
	NULLIF(Source.[AllowNewDefaults], Target.[AllowNewDefaults]) IS NOT NULL OR NULLIF(Target.[AllowNewDefaults], Source.[AllowNewDefaults]) IS NOT NULL OR 
	NULLIF(Source.[ObjNameLink], Target.[ObjNameLink]) IS NOT NULL OR NULLIF(Target.[ObjNameLink], Source.[ObjNameLink]) IS NOT NULL OR 
	NULLIF(Source.[ObjWhereLink], Target.[ObjWhereLink]) IS NOT NULL OR NULLIF(Target.[ObjWhereLink], Source.[ObjWhereLink]) IS NOT NULL OR 
	NULLIF(Source.[TargetIdLink], Target.[TargetIdLink]) IS NOT NULL OR NULLIF(Target.[TargetIdLink], Source.[TargetIdLink]) IS NOT NULL OR 
	NULLIF(Source.[Style], Target.[Style]) IS NOT NULL OR NULLIF(Target.[Style], Source.[Style]) IS NOT NULL OR 
	NULLIF(Source.[CSSClass], Target.[CSSClass]) IS NOT NULL OR NULLIF(Target.[CSSClass], Source.[CSSClass]) IS NOT NULL OR 
	NULLIF(Source.[LabelStyle], Target.[LabelStyle]) IS NOT NULL OR NULLIF(Target.[LabelStyle], Source.[LabelStyle]) IS NOT NULL OR 
	NULLIF(Source.[LabelCSSClass], Target.[LabelCSSClass]) IS NOT NULL OR NULLIF(Target.[LabelCSSClass], Source.[LabelCSSClass]) IS NOT NULL OR 
	NULLIF(Source.[DecimalPlaces], Target.[DecimalPlaces]) IS NOT NULL OR NULLIF(Target.[DecimalPlaces], Source.[DecimalPlaces]) IS NOT NULL OR 
	NULLIF(Source.[RootPath], Target.[RootPath]) IS NOT NULL OR NULLIF(Target.[RootPath], Source.[RootPath]) IS NOT NULL OR 
	NULLIF(Source.[FormatString], Target.[FormatString]) IS NOT NULL OR NULLIF(Target.[FormatString], Source.[FormatString]) IS NOT NULL OR 
	NULLIF(Source.[DirectTemplate], Target.[DirectTemplate]) IS NOT NULL OR NULLIF(Target.[DirectTemplate], Source.[DirectTemplate]) IS NOT NULL OR 
	NULLIF(Source.[Tag], Target.[Tag]) IS NOT NULL OR NULLIF(Target.[Tag], Source.[Tag]) IS NOT NULL OR 
	NULLIF(Source.[HelpId], Target.[HelpId]) IS NOT NULL OR NULLIF(Target.[HelpId], Source.[HelpId]) IS NOT NULL OR 
	NULLIF(Source.[ConnStringId], Target.[ConnStringId]) IS NOT NULL OR NULLIF(Target.[ConnStringId], Source.[ConnStringId]) IS NOT NULL OR 
	NULLIF(Source.[IsRequired], Target.[IsRequired]) IS NOT NULL OR NULLIF(Target.[IsRequired], Source.[IsRequired]) IS NOT NULL OR 
	NULLIF(Source.[IsRequiredMessage], Target.[IsRequiredMessage]) IS NOT NULL OR NULLIF(Target.[IsRequiredMessage], Source.[IsRequiredMessage]) IS NOT NULL OR 
	NULLIF(Source.[minValue], Target.[minValue]) IS NOT NULL OR NULLIF(Target.[minValue], Source.[minValue]) IS NOT NULL OR 
	NULLIF(Source.[minValueMessage], Target.[minValueMessage]) IS NOT NULL OR NULLIF(Target.[minValueMessage], Source.[minValueMessage]) IS NOT NULL OR 
	NULLIF(Source.[maxValue], Target.[maxValue]) IS NOT NULL OR NULLIF(Target.[maxValue], Source.[maxValue]) IS NOT NULL OR 
	NULLIF(Source.[maxValueMessage], Target.[maxValueMessage]) IS NOT NULL OR NULLIF(Target.[maxValueMessage], Source.[maxValueMessage]) IS NOT NULL OR 
	NULLIF(Source.[RegExp], Target.[RegExp]) IS NOT NULL OR NULLIF(Target.[RegExp], Source.[RegExp]) IS NOT NULL OR 
	NULLIF(Source.[RegExpText], Target.[RegExpText]) IS NOT NULL OR NULLIF(Target.[RegExpText], Source.[RegExpText]) IS NOT NULL OR 
	NULLIF(Source.[SQLValidator], Target.[SQLValidator]) IS NOT NULL OR NULLIF(Target.[SQLValidator], Source.[SQLValidator]) IS NOT NULL OR 
	NULLIF(Source.[ValidatorMessage], Target.[ValidatorMessage]) IS NOT NULL OR NULLIF(Target.[ValidatorMessage], Source.[ValidatorMessage]) IS NOT NULL OR 
	NULLIF(Source.[OnChangeJsFunction], Target.[OnChangeJsFunction]) IS NOT NULL OR NULLIF(Target.[OnChangeJsFunction], Source.[OnChangeJsFunction]) IS NOT NULL OR 
	NULLIF(Source.[OnChangeProcessName], Target.[OnChangeProcessName]) IS NOT NULL OR NULLIF(Target.[OnChangeProcessName], Source.[OnChangeProcessName]) IS NOT NULL OR 
	NULLIF(Source.[PlaceHolder], Target.[PlaceHolder]) IS NOT NULL OR NULLIF(Target.[PlaceHolder], Source.[PlaceHolder]) IS NOT NULL OR 
	NULLIF(Source.[IconName], Target.[IconName]) IS NOT NULL OR NULLIF(Target.[IconName], Source.[IconName]) IS NOT NULL OR 
	NULLIF(Source.[ToolbarName], Target.[ToolbarName]) IS NOT NULL OR NULLIF(Target.[ToolbarName], Source.[ToolbarName]) IS NOT NULL OR 
	NULLIF(Source.[Separator], Target.[Separator]) IS NOT NULL OR NULLIF(Target.[Separator], Source.[Separator]) IS NOT NULL OR 
	NULLIF(Source.[AutoIncrement], Target.[AutoIncrement]) IS NOT NULL OR NULLIF(Target.[AutoIncrement], Source.[AutoIncrement]) IS NOT NULL OR 
	NULLIF(Source.[AutoIncrementFunction], Target.[AutoIncrementFunction]) IS NOT NULL OR NULLIF(Target.[AutoIncrementFunction], Source.[AutoIncrementFunction]) IS NOT NULL OR 
	NULLIF(Source.[CascadeDependencies], Target.[CascadeDependencies]) IS NOT NULL OR NULLIF(Target.[CascadeDependencies], Source.[CascadeDependencies]) IS NOT NULL OR 
	NULLIF(Source.[RootPathType], Target.[RootPathType]) IS NOT NULL OR NULLIF(Target.[RootPathType], Source.[RootPathType]) IS NOT NULL OR 
	NULLIF(Source.[PageSize], Target.[PageSize]) IS NOT NULL OR NULLIF(Target.[PageSize], Source.[PageSize]) IS NOT NULL OR 
	NULLIF(Source.[ImageCompressionType], Target.[ImageCompressionType]) IS NOT NULL OR NULLIF(Target.[ImageCompressionType], Source.[ImageCompressionType]) IS NOT NULL OR 
	NULLIF(Source.[ImageMaxWidth], Target.[ImageMaxWidth]) IS NOT NULL OR NULLIF(Target.[ImageMaxWidth], Source.[ImageMaxWidth]) IS NOT NULL OR 
	NULLIF(Source.[ImageMaxHeight], Target.[ImageMaxHeight]) IS NOT NULL OR NULLIF(Target.[ImageMaxHeight], Source.[ImageMaxHeight]) IS NOT NULL OR 
	NULLIF(Source.[Offline], Target.[Offline]) IS NOT NULL OR NULLIF(Target.[Offline], Source.[Offline]) IS NOT NULL OR 
	NULLIF(Source.[ExtensionId], Target.[ExtensionId]) IS NOT NULL OR NULLIF(Target.[ExtensionId], Source.[ExtensionId]) IS NOT NULL OR 
	NULLIF(Source.[Autoselect], Target.[Autoselect]) IS NOT NULL OR NULLIF(Target.[Autoselect], Source.[Autoselect]) IS NOT NULL OR 
	NULLIF(Source.[OriginId], Target.[OriginId]) IS NOT NULL OR NULLIF(Target.[OriginId], Source.[OriginId]) IS NOT NULL) THEN
 UPDATE SET
  [Label] = Source.[Label], 
  [PositionY] = Source.[PositionY], 
  [PositionX] = Source.[PositionX], 
  [Width] = Source.[Width], 
  [Height] = Source.[Height], 
  [Hide] = Source.[Hide], 
  [ClientReadOnly] = Source.[ClientReadOnly], 
  [FormDisplay] = Source.[FormDisplay], 
  [TypeId] = Source.[TypeId], 
  [Locked] = Source.[Locked], 
  [CustomPropName] = Source.[CustomPropName], 
  [Mask] = Source.[Mask], 
  [SQlSentence] = Source.[SQlSentence], 
  [SQLEditSentence] = Source.[SQLEditSentence], 
  [SQLFilter] = Source.[SQLFilter], 
  [SQLValueField] = Source.[SQLValueField], 
  [SQLDisplayField] = Source.[SQLDisplayField], 
  [SQLObjectName] = Source.[SQLObjectName], 
  [SQLViewName] = Source.[SQLViewName], 
  [SQLOfflineSentence] = Source.[SQLOfflineSentence], 
  [SQLOfflineOrderBy] = Source.[SQLOfflineOrderBy], 
  [WhereSentence] = Source.[WhereSentence], 
  [DefaultValue] = Source.[DefaultValue], 
  [PersistDefaultValue] = Source.[PersistDefaultValue], 
  [IgnoreDBDefaultValue] = Source.[IgnoreDBDefaultValue], 
  [DetachedFromDB] = Source.[DetachedFromDB], 
  [SearchFunction] = Source.[SearchFunction], 
  [SearchCollection] = Source.[SearchCollection], 
  [SearchWhere] = Source.[SearchWhere], 
  [SearchReturnFields] = Source.[SearchReturnFields], 
  [SecurityObject] = Source.[SecurityObject], 
  [AllowNew] = Source.[AllowNew], 
  [AllowNewFunction] = Source.[AllowNewFunction], 
  [AllowNewReturnFields] = Source.[AllowNewReturnFields], 
  [AllowNewDefaults] = Source.[AllowNewDefaults], 
  [ObjNameLink] = Source.[ObjNameLink], 
  [ObjWhereLink] = Source.[ObjWhereLink], 
  [TargetIdLink] = Source.[TargetIdLink], 
  [Style] = Source.[Style], 
  [CSSClass] = Source.[CSSClass], 
  [LabelStyle] = Source.[LabelStyle], 
  [LabelCSSClass] = Source.[LabelCSSClass], 
  [DecimalPlaces] = Source.[DecimalPlaces], 
  [RootPath] = Source.[RootPath], 
  [FormatString] = Source.[FormatString], 
  [DirectTemplate] = Source.[DirectTemplate], 
  [Tag] = Source.[Tag], 
  [HelpId] = Source.[HelpId], 
  [ConnStringId] = Source.[ConnStringId], 
  [IsRequired] = Source.[IsRequired], 
  [IsRequiredMessage] = Source.[IsRequiredMessage], 
  [minValue] = Source.[minValue], 
  [minValueMessage] = Source.[minValueMessage], 
  [maxValue] = Source.[maxValue], 
  [maxValueMessage] = Source.[maxValueMessage], 
  [RegExp] = Source.[RegExp], 
  [RegExpText] = Source.[RegExpText], 
  [SQLValidator] = Source.[SQLValidator], 
  [ValidatorMessage] = Source.[ValidatorMessage], 
  [OnChangeJsFunction] = Source.[OnChangeJsFunction], 
  [OnChangeProcessName] = Source.[OnChangeProcessName], 
  [PlaceHolder] = Source.[PlaceHolder], 
  [IconName] = Source.[IconName], 
  [ToolbarName] = Source.[ToolbarName], 
  [Separator] = Source.[Separator], 
  [AutoIncrement] = Source.[AutoIncrement], 
  [AutoIncrementFunction] = Source.[AutoIncrementFunction], 
  [CascadeDependencies] = Source.[CascadeDependencies], 
  [RootPathType] = Source.[RootPathType], 
  [PageSize] = Source.[PageSize], 
  [ImageCompressionType] = Source.[ImageCompressionType], 
  [ImageMaxWidth] = Source.[ImageMaxWidth], 
  [ImageMaxHeight] = Source.[ImageMaxHeight], 
  [Offline] = Source.[Offline], 
  [ExtensionId] = Source.[ExtensionId], 
  [Autoselect] = Source.[Autoselect], 
  [OriginId] = Source.[OriginId]
WHEN NOT MATCHED BY TARGET THEN
 INSERT([ObjectName],[PropertyName],[Label],[PositionY],[PositionX],[Width],[Height],[Hide],[ClientReadOnly],[FormDisplay],[TypeId],[Locked],[CustomPropName],[Mask],[SQlSentence],[SQLEditSentence],[SQLFilter],[SQLValueField],[SQLDisplayField],[SQLObjectName],[SQLViewName],[SQLOfflineSentence],[SQLOfflineOrderBy],[WhereSentence],[DefaultValue],[PersistDefaultValue],[IgnoreDBDefaultValue],[DetachedFromDB],[SearchFunction],[SearchCollection],[SearchWhere],[SearchReturnFields],[SecurityObject],[AllowNew],[AllowNewFunction],[AllowNewReturnFields],[AllowNewDefaults],[ObjNameLink],[ObjWhereLink],[TargetIdLink],[Style],[CSSClass],[LabelStyle],[LabelCSSClass],[DecimalPlaces],[RootPath],[FormatString],[DirectTemplate],[Tag],[HelpId],[ConnStringId],[IsRequired],[IsRequiredMessage],[minValue],[minValueMessage],[maxValue],[maxValueMessage],[RegExp],[RegExpText],[SQLValidator],[ValidatorMessage],[OnChangeJsFunction],[OnChangeProcessName],[PlaceHolder],[IconName],[ToolbarName],[Separator],[AutoIncrement],[AutoIncrementFunction],[CascadeDependencies],[RootPathType],[PageSize],[ImageCompressionType],[ImageMaxWidth],[ImageMaxHeight],[Offline],[ExtensionId],[Autoselect],[OriginId])
 VALUES(Source.[ObjectName],Source.[PropertyName],Source.[Label],Source.[PositionY],Source.[PositionX],Source.[Width],Source.[Height],Source.[Hide],Source.[ClientReadOnly],Source.[FormDisplay],Source.[TypeId],Source.[Locked],Source.[CustomPropName],Source.[Mask],Source.[SQlSentence],Source.[SQLEditSentence],Source.[SQLFilter],Source.[SQLValueField],Source.[SQLDisplayField],Source.[SQLObjectName],Source.[SQLViewName],Source.[SQLOfflineSentence],Source.[SQLOfflineOrderBy],Source.[WhereSentence],Source.[DefaultValue],Source.[PersistDefaultValue],Source.[IgnoreDBDefaultValue],Source.[DetachedFromDB],Source.[SearchFunction],Source.[SearchCollection],Source.[SearchWhere],Source.[SearchReturnFields],Source.[SecurityObject],Source.[AllowNew],Source.[AllowNewFunction],Source.[AllowNewReturnFields],Source.[AllowNewDefaults],Source.[ObjNameLink],Source.[ObjWhereLink],Source.[TargetIdLink],Source.[Style],Source.[CSSClass],Source.[LabelStyle],Source.[LabelCSSClass],Source.[DecimalPlaces],Source.[RootPath],Source.[FormatString],Source.[DirectTemplate],Source.[Tag],Source.[HelpId],Source.[ConnStringId],Source.[IsRequired],Source.[IsRequiredMessage],Source.[minValue],Source.[minValueMessage],Source.[maxValue],Source.[maxValueMessage],Source.[RegExp],Source.[RegExpText],Source.[SQLValidator],Source.[ValidatorMessage],Source.[OnChangeJsFunction],Source.[OnChangeProcessName],Source.[PlaceHolder],Source.[IconName],Source.[ToolbarName],Source.[Separator],Source.[AutoIncrement],Source.[AutoIncrementFunction],Source.[CascadeDependencies],Source.[RootPathType],Source.[PageSize],Source.[ImageCompressionType],Source.[ImageMaxWidth],Source.[ImageMaxHeight],Source.[Offline],Source.[ExtensionId],Source.[Autoselect],Source.[OriginId])
WHEN NOT MATCHED BY SOURCE AND TARGET.OriginId = 2 THEN 
 DELETE
;
END TRY
BEGIN CATCH
    DECLARE @ERRORNUMBER	INT,@ERRORMSG		VARCHAR(MAX),@ERRORSTATE		INT
    SELECT @ERRORNUMBER = 50000 + ERROR_NUMBER(),@ERRORMSG = ERROR_MESSAGE(), @ERRORSTATE = ERROR_STATE();
    THROW @ERRORNUMBER, @ERRORMSG, @ERRORSTATE
END CATCH
GO






 




BEGIN TRY

MERGE INTO [Objects_Templates] AS Target
USING (VALUES
  (N'PPlantilla_ArticulosList',N'Articulo',N'list',N'Lista de artículos',N'<div class="row">
    <flx-navbutton type="openpagename" pagename="PPag_Articulos" objectname="Articulo" objectwhere="(Articulos.IdArticulo=''{{IdArticuloA}}'')" 
                 targetid="current" excludehist="false">
  	<div class="col-4">{{IdArticuloA}}</div>
  	<div class="col-4">{{descripcion}}</div>
  	<div class="col-4">{{familia}}</div>
  </flx-navbutton>
</div>',N'VPers_ArticulosList',NULL,N'<div class="bg-outstanding">
  <div class="row">
  	<div class="col-4"><strong class="txt-light">Id artículo</strong></div>
  	<div class="col-4"><strong class="txt-light">Descripción</strong></div>
  	<div class="col-4"><strong class="txt-light">Familia</strong></div>
  </div>
</div>',NULL,NULL,NULL,0,0,0,1,2)
 ,(N'PPlantilla_Componentes',N'Articulo',N'list',N'Lista de Componentes',N'<div class="row">
    <flx-navbutton type="openpagename" pagename="PPag_Articulos" objectname="Articulo" objectwhere="(Articulos.IdArticulo=''{{IdArticuloA}}'')" 
                 targetid="current" excludehist="false">
  	<div class="col-4">{{IdArticuloA}}</div>
  	<div class="col-8">{{Cantidad}}</div>
  </flx-navbutton>
</div>',N'VPers_ArticulosList',NULL,N'<div class="bg-outstanding">
  <div class="row">
  	<div class="col-4"><strong class="txt-light">Id artículo</strong></div>
  	<div class="col-8"><strong class="txt-light">Cantidad</strong></div>
  </div>
</div>',NULL,NULL,NULL,0,0,0,1,2)
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
</div>',NULL,NULL,NULL,0,0,0,1,2)
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
</div>',NULL,NULL,NULL,0,0,0,1,2)
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
WHEN NOT MATCHED BY SOURCE AND TARGET.OriginId = 2 THEN 
 DELETE
;
END TRY
BEGIN CATCH
    DECLARE @ERRORNUMBER	INT,@ERRORMSG		VARCHAR(MAX),@ERRORSTATE		INT
    SELECT @ERRORNUMBER = 50000 + ERROR_NUMBER(),@ERRORMSG = ERROR_MESSAGE(), @ERRORSTATE = ERROR_STATE();
    THROW @ERRORNUMBER, @ERRORMSG, @ERRORSTATE
END CATCH
GO








BEGIN TRY

MERGE INTO [Objects_Views] AS Target
USING (VALUES
  (N'Articulo',N'ArticuloDefaultList',N'ArticuloDefaultList',N'DataConnectionString',N' SELECT [Articulos].[IdArticulo], [Articulos].[IdArticulo] as [Id Artículo], [Articulos].[Descrip] as [Descripción], [Articulos].[CodBarras] as [Cod. Barras], [FlxCmb1].[Descrip] as [Familia], [FlxCmb2].[Descrip] as [Tipo IVA] FROM [Articulos] 
 LEFT JOIN [dbo].[Conf_Articulos] ON [Articulos].[IdArticulo]=[Conf_Articulos].[IdArticulo] 
  LEFT JOIN (SELECT IdFamilia, Descrip, UltimoNivel FROM Articulos_Familias WHERE UltimoNivel=1 ) [FlxCmb1] ON [FlxCmb1].[IdFamilia]=[Articulos].[IdFamilia] 
  LEFT JOIN (SELECT IdIva, Descrip FROM IVas) [FlxCmb2] ON [FlxCmb2].[IdIva]=[Articulos].[IdIva] 

',0,1,1,0,1,NULL,0,NULL,NULL,2)
 ,(N'Articulo',N'VPers_ArticulosList',N'Vista personalizada artículos',N'DataConnectionString',N'SELECT Articulos.IdArticulo as IdArticuloA, Articulos.Descrip as descripcion, af.Descrip as familia, ppl.Cantidad as Cantidad FROM Articulos
LEFT JOIN Articulos_Familias af ON af.IdFamilia=Articulos.IdFamilia
LEFT JOIN Conf_Articulos Cfa ON Cfa.IdArticulo=Articulos.IdArticulo
LEFT JOIN Pedidos_Prov_Lineas ppl ON Articulos.IdArticulo=ppl.IdArticulo ',0,0,1,0,0,NULL,0,NULL,NULL,2)
 ,(N'Articulo',N'VPers_CompraLoteActivo',N'Vista de datos compra lote activo',N'DataConnectionString',N'SELECT t1.NumFactProv as NumFactura, t1.FechaFact as Fecha, 
t1.IdProveedor as IdProveedor, t2.Proveedor as Proveedor, 
t4.NumLote as Lote, t0.Cantidad as Cantidad, 
t0.Precio_EURO as Coste, t0.Total_Euros as Total,
Articulos.IdArticulo as IdArticulo, t5.P_Peso,
--	Datos IVA
t6.IdIVA as IdIva, t6.Porcentaje as Iva, t6.Descrip as DescripIva,
--	PVP
(t0.Precio_EURO+((t0.Precio_EURO*t6.Porcentaje)/100)) as PVP
FROM Articulos
INNER JOIN Pedidos_Prov_Lineas t0 ON Articulos.IdArticulo=t0.IdArticulo 
LEFT join Facturas_Prov_Cab t1 on t0.IdFactura=t1.IdFactura
LEFT join Prov_datos t2 on t1.IdProveedor=t2.IdProveedor
LEFT join Pedidos_Prov_LineasUbic t3 on t3.IdPedido=t0.IdPedido and t3.IdLinea=t0.IdLinea 
LEFT join Lotes t4 on t4.NumLote=t3.Lote
LEFT JOIN Conf_Articulos t5 on t5.IdArticulo = Articulos.IdArticulo
LEFT JOIN IVAs t6 ON t6.IdIVA = Articulos.IdIva',0,0,1,0,0,NULL,0,NULL,NULL,2)
 ,(N'Articulo',N'VPers_StockLotesAlmacenes',N'Vista personalizada Stock Lotes Almacenes',N'DataConnectionString',N'SELECT aal.IdAlmacen as almacen, aal.Unidades as stock, a.IdArticulo as IdArticulo, a.Descrip as descripArt, l.NumLote as numLote FROM Articulos a
LEFT JOIN Lotes l ON a.IdArticulo=l.IdArticulo
LEFT JOIN Articulos_Almacenes_Lotes aal ON l.NumLote= aal.Lote',0,0,1,0,0,NULL,0,NULL,NULL,2)
) AS Source ([ObjectName],[ViewName],[Descrip],[ConnStringId],[SQLSentence],[NoFilter],[ShowAsGrid],[Active],[System],[IsDefault],[OrderBy],[Offline],[PrimaryKeys],[IndexFields],[OriginId])
ON (Target.[ObjectName] = Source.[ObjectName] AND Target.[ViewName] = Source.[ViewName])
WHEN MATCHED AND (
	NULLIF(Source.[Descrip], Target.[Descrip]) IS NOT NULL OR NULLIF(Target.[Descrip], Source.[Descrip]) IS NOT NULL OR 
	NULLIF(Source.[ConnStringId], Target.[ConnStringId]) IS NOT NULL OR NULLIF(Target.[ConnStringId], Source.[ConnStringId]) IS NOT NULL OR 
	NULLIF(Source.[SQLSentence], Target.[SQLSentence]) IS NOT NULL OR NULLIF(Target.[SQLSentence], Source.[SQLSentence]) IS NOT NULL OR 
	NULLIF(Source.[NoFilter], Target.[NoFilter]) IS NOT NULL OR NULLIF(Target.[NoFilter], Source.[NoFilter]) IS NOT NULL OR 
	NULLIF(Source.[ShowAsGrid], Target.[ShowAsGrid]) IS NOT NULL OR NULLIF(Target.[ShowAsGrid], Source.[ShowAsGrid]) IS NOT NULL OR 
	NULLIF(Source.[Active], Target.[Active]) IS NOT NULL OR NULLIF(Target.[Active], Source.[Active]) IS NOT NULL OR 
	NULLIF(Source.[System], Target.[System]) IS NOT NULL OR NULLIF(Target.[System], Source.[System]) IS NOT NULL OR 
	NULLIF(Source.[IsDefault], Target.[IsDefault]) IS NOT NULL OR NULLIF(Target.[IsDefault], Source.[IsDefault]) IS NOT NULL OR 
	NULLIF(Source.[OrderBy], Target.[OrderBy]) IS NOT NULL OR NULLIF(Target.[OrderBy], Source.[OrderBy]) IS NOT NULL OR 
	NULLIF(Source.[Offline], Target.[Offline]) IS NOT NULL OR NULLIF(Target.[Offline], Source.[Offline]) IS NOT NULL OR 
	NULLIF(Source.[PrimaryKeys], Target.[PrimaryKeys]) IS NOT NULL OR NULLIF(Target.[PrimaryKeys], Source.[PrimaryKeys]) IS NOT NULL OR 
	NULLIF(Source.[IndexFields], Target.[IndexFields]) IS NOT NULL OR NULLIF(Target.[IndexFields], Source.[IndexFields]) IS NOT NULL OR 
	NULLIF(Source.[OriginId], Target.[OriginId]) IS NOT NULL OR NULLIF(Target.[OriginId], Source.[OriginId]) IS NOT NULL) THEN
 UPDATE SET
  [Descrip] = Source.[Descrip], 
  [ConnStringId] = Source.[ConnStringId], 
  [SQLSentence] = Source.[SQLSentence], 
  [NoFilter] = Source.[NoFilter], 
  [ShowAsGrid] = Source.[ShowAsGrid], 
  [Active] = Source.[Active], 
  [System] = Source.[System], 
  [IsDefault] = Source.[IsDefault], 
  [OrderBy] = Source.[OrderBy], 
  [Offline] = Source.[Offline], 
  [PrimaryKeys] = Source.[PrimaryKeys], 
  [IndexFields] = Source.[IndexFields], 
  [OriginId] = Source.[OriginId]
WHEN NOT MATCHED BY TARGET THEN
 INSERT([ObjectName],[ViewName],[Descrip],[ConnStringId],[SQLSentence],[NoFilter],[ShowAsGrid],[Active],[System],[IsDefault],[OrderBy],[Offline],[PrimaryKeys],[IndexFields],[OriginId])
 VALUES(Source.[ObjectName],Source.[ViewName],Source.[Descrip],Source.[ConnStringId],Source.[SQLSentence],Source.[NoFilter],Source.[ShowAsGrid],Source.[Active],Source.[System],Source.[IsDefault],Source.[OrderBy],Source.[Offline],Source.[PrimaryKeys],Source.[IndexFields],Source.[OriginId])
WHEN NOT MATCHED BY SOURCE AND TARGET.OriginId = 2 THEN 
 DELETE
;
END TRY
BEGIN CATCH
    DECLARE @ERRORNUMBER	INT,@ERRORMSG		VARCHAR(MAX),@ERRORSTATE		INT
    SELECT @ERRORNUMBER = 50000 + ERROR_NUMBER(),@ERRORMSG = ERROR_MESSAGE(), @ERRORSTATE = ERROR_STATE();
    THROW @ERRORNUMBER, @ERRORMSG, @ERRORSTATE
END CATCH
GO






 




BEGIN TRY

MERGE INTO [Objects_Additional_Tables] AS Target
USING (VALUES
  (N'Articulo',N'Conf_Articulos',N'IdArticulo=IdArticulo',N'Articulo - Conf',N'erpstored',N'erpstored',N'erpstored',NULL,NULL,NULL,N'DataConnectionString',0,2)
) AS Source ([ObjectName],[TableName],[KeyMap],[Descrip],[InsertType],[UpdateType],[DeleteType],[InsertProcessName],[UpdateProcessName],[DeleteProcessName],[ConnStringId],[Offline],[OriginId])
ON (Target.[ObjectName] = Source.[ObjectName] AND Target.[TableName] = Source.[TableName])
WHEN MATCHED AND (
	NULLIF(Source.[KeyMap], Target.[KeyMap]) IS NOT NULL OR NULLIF(Target.[KeyMap], Source.[KeyMap]) IS NOT NULL OR 
	NULLIF(Source.[Descrip], Target.[Descrip]) IS NOT NULL OR NULLIF(Target.[Descrip], Source.[Descrip]) IS NOT NULL OR 
	NULLIF(Source.[InsertType], Target.[InsertType]) IS NOT NULL OR NULLIF(Target.[InsertType], Source.[InsertType]) IS NOT NULL OR 
	NULLIF(Source.[UpdateType], Target.[UpdateType]) IS NOT NULL OR NULLIF(Target.[UpdateType], Source.[UpdateType]) IS NOT NULL OR 
	NULLIF(Source.[DeleteType], Target.[DeleteType]) IS NOT NULL OR NULLIF(Target.[DeleteType], Source.[DeleteType]) IS NOT NULL OR 
	NULLIF(Source.[InsertProcessName], Target.[InsertProcessName]) IS NOT NULL OR NULLIF(Target.[InsertProcessName], Source.[InsertProcessName]) IS NOT NULL OR 
	NULLIF(Source.[UpdateProcessName], Target.[UpdateProcessName]) IS NOT NULL OR NULLIF(Target.[UpdateProcessName], Source.[UpdateProcessName]) IS NOT NULL OR 
	NULLIF(Source.[DeleteProcessName], Target.[DeleteProcessName]) IS NOT NULL OR NULLIF(Target.[DeleteProcessName], Source.[DeleteProcessName]) IS NOT NULL OR 
	NULLIF(Source.[ConnStringId], Target.[ConnStringId]) IS NOT NULL OR NULLIF(Target.[ConnStringId], Source.[ConnStringId]) IS NOT NULL OR 
	NULLIF(Source.[Offline], Target.[Offline]) IS NOT NULL OR NULLIF(Target.[Offline], Source.[Offline]) IS NOT NULL OR 
	NULLIF(Source.[OriginId], Target.[OriginId]) IS NOT NULL OR NULLIF(Target.[OriginId], Source.[OriginId]) IS NOT NULL) THEN
 UPDATE SET
  [KeyMap] = Source.[KeyMap], 
  [Descrip] = Source.[Descrip], 
  [InsertType] = Source.[InsertType], 
  [UpdateType] = Source.[UpdateType], 
  [DeleteType] = Source.[DeleteType], 
  [InsertProcessName] = Source.[InsertProcessName], 
  [UpdateProcessName] = Source.[UpdateProcessName], 
  [DeleteProcessName] = Source.[DeleteProcessName], 
  [ConnStringId] = Source.[ConnStringId], 
  [Offline] = Source.[Offline], 
  [OriginId] = Source.[OriginId]
WHEN NOT MATCHED BY TARGET THEN
 INSERT([ObjectName],[TableName],[KeyMap],[Descrip],[InsertType],[UpdateType],[DeleteType],[InsertProcessName],[UpdateProcessName],[DeleteProcessName],[ConnStringId],[Offline],[OriginId])
 VALUES(Source.[ObjectName],Source.[TableName],Source.[KeyMap],Source.[Descrip],Source.[InsertType],Source.[UpdateType],Source.[DeleteType],Source.[InsertProcessName],Source.[UpdateProcessName],Source.[DeleteProcessName],Source.[ConnStringId],Source.[Offline],Source.[OriginId])
WHEN NOT MATCHED BY SOURCE AND TARGET.OriginId = 2 THEN 
 DELETE
;
END TRY
BEGIN CATCH
    DECLARE @ERRORNUMBER	INT,@ERRORMSG		VARCHAR(MAX),@ERRORSTATE		INT
    SELECT @ERRORNUMBER = 50000 + ERROR_NUMBER(),@ERRORMSG = ERROR_MESSAGE(), @ERRORSTATE = ERROR_STATE();
    THROW @ERRORNUMBER, @ERRORMSG, @ERRORSTATE
END CATCH
GO








BEGIN TRY

MERGE INTO [Pages] AS Target
USING (VALUES
  (N'PPag_Articulos',N'list',N'Articulos',NULL,N'syslayout-18',N'Artículos',N'noicon',N'Artículos',NULL,NULL,0,NULL,0,0,0,NULL,0,2)
 ,(N'PPag_Articulos_Generico',N'list',N'Articulos',NULL,N'syslayout-12',N'Artículos',N'noicon',N'Artículos',NULL,NULL,0,NULL,0,0,0,NULL,0,2)
) AS Source ([PageName],[TypeId],[ObjectName],[InterfaceName],[LayoutName],[Name],[IconName],[Descrip],[UrlRewrite],[Script],[ScriptActive],[Style],[RefreshInterval],[Sytem],[Generic],[BodyCssClass],[Offline],[OriginId])
ON (Target.[PageName] = Source.[PageName])
WHEN MATCHED AND (
	NULLIF(Source.[TypeId], Target.[TypeId]) IS NOT NULL OR NULLIF(Target.[TypeId], Source.[TypeId]) IS NOT NULL OR 
	NULLIF(Source.[ObjectName], Target.[ObjectName]) IS NOT NULL OR NULLIF(Target.[ObjectName], Source.[ObjectName]) IS NOT NULL OR 
	NULLIF(Source.[InterfaceName], Target.[InterfaceName]) IS NOT NULL OR NULLIF(Target.[InterfaceName], Source.[InterfaceName]) IS NOT NULL OR 
	NULLIF(Source.[LayoutName], Target.[LayoutName]) IS NOT NULL OR NULLIF(Target.[LayoutName], Source.[LayoutName]) IS NOT NULL OR 
	NULLIF(Source.[Name], Target.[Name]) IS NOT NULL OR NULLIF(Target.[Name], Source.[Name]) IS NOT NULL OR 
	NULLIF(Source.[IconName], Target.[IconName]) IS NOT NULL OR NULLIF(Target.[IconName], Source.[IconName]) IS NOT NULL OR 
	NULLIF(Source.[Descrip], Target.[Descrip]) IS NOT NULL OR NULLIF(Target.[Descrip], Source.[Descrip]) IS NOT NULL OR 
	NULLIF(Source.[UrlRewrite], Target.[UrlRewrite]) IS NOT NULL OR NULLIF(Target.[UrlRewrite], Source.[UrlRewrite]) IS NOT NULL OR 
	NULLIF(Source.[Script], Target.[Script]) IS NOT NULL OR NULLIF(Target.[Script], Source.[Script]) IS NOT NULL OR 
	NULLIF(Source.[ScriptActive], Target.[ScriptActive]) IS NOT NULL OR NULLIF(Target.[ScriptActive], Source.[ScriptActive]) IS NOT NULL OR 
	NULLIF(Source.[Style], Target.[Style]) IS NOT NULL OR NULLIF(Target.[Style], Source.[Style]) IS NOT NULL OR 
	NULLIF(Source.[RefreshInterval], Target.[RefreshInterval]) IS NOT NULL OR NULLIF(Target.[RefreshInterval], Source.[RefreshInterval]) IS NOT NULL OR 
	NULLIF(Source.[Sytem], Target.[Sytem]) IS NOT NULL OR NULLIF(Target.[Sytem], Source.[Sytem]) IS NOT NULL OR 
	NULLIF(Source.[Generic], Target.[Generic]) IS NOT NULL OR NULLIF(Target.[Generic], Source.[Generic]) IS NOT NULL OR 
	NULLIF(Source.[BodyCssClass], Target.[BodyCssClass]) IS NOT NULL OR NULLIF(Target.[BodyCssClass], Source.[BodyCssClass]) IS NOT NULL OR 
	NULLIF(Source.[Offline], Target.[Offline]) IS NOT NULL OR NULLIF(Target.[Offline], Source.[Offline]) IS NOT NULL OR 
	NULLIF(Source.[OriginId], Target.[OriginId]) IS NOT NULL OR NULLIF(Target.[OriginId], Source.[OriginId]) IS NOT NULL) THEN
 UPDATE SET
  [TypeId] = Source.[TypeId], 
  [ObjectName] = Source.[ObjectName], 
  [InterfaceName] = Source.[InterfaceName], 
  [LayoutName] = Source.[LayoutName], 
  [Name] = Source.[Name], 
  [IconName] = Source.[IconName], 
  [Descrip] = Source.[Descrip], 
  [UrlRewrite] = Source.[UrlRewrite], 
  [Script] = Source.[Script], 
  [ScriptActive] = Source.[ScriptActive], 
  [Style] = Source.[Style], 
  [RefreshInterval] = Source.[RefreshInterval], 
  [Sytem] = Source.[Sytem], 
  [Generic] = Source.[Generic], 
  [BodyCssClass] = Source.[BodyCssClass], 
  [Offline] = Source.[Offline], 
  [OriginId] = Source.[OriginId]
WHEN NOT MATCHED BY TARGET THEN
 INSERT([PageName],[TypeId],[ObjectName],[InterfaceName],[LayoutName],[Name],[IconName],[Descrip],[UrlRewrite],[Script],[ScriptActive],[Style],[RefreshInterval],[Sytem],[Generic],[BodyCssClass],[Offline],[OriginId])
 VALUES(Source.[PageName],Source.[TypeId],Source.[ObjectName],Source.[InterfaceName],Source.[LayoutName],Source.[Name],Source.[IconName],Source.[Descrip],Source.[UrlRewrite],Source.[Script],Source.[ScriptActive],Source.[Style],Source.[RefreshInterval],Source.[Sytem],Source.[Generic],Source.[BodyCssClass],Source.[Offline],Source.[OriginId])
WHEN NOT MATCHED BY SOURCE AND TARGET.OriginId = 2 THEN 
 DELETE
;
END TRY
BEGIN CATCH
    DECLARE @ERRORNUMBER	INT,@ERRORMSG		VARCHAR(MAX),@ERRORSTATE		INT
    SELECT @ERRORNUMBER = 50000 + ERROR_NUMBER(),@ERRORMSG = ERROR_MESSAGE(), @ERRORSTATE = ERROR_STATE();
    THROW @ERRORNUMBER, @ERRORMSG, @ERRORSTATE
END CATCH
GO






 


 


 


 


 


 




BEGIN TRY

MERGE INTO [ToolBars] AS Target
USING (VALUES
  (N'P_Toolbar_ArticuloEdit',N'Toolbar edición artículo',2)
 ,(N'PToolbar_ArticulosList',N'Toolbar pers Artículos',2)
) AS Source ([ToolbarName],[Descrip],[OriginId])
ON (Target.[ToolbarName] = Source.[ToolbarName])
WHEN MATCHED AND (
	NULLIF(Source.[Descrip], Target.[Descrip]) IS NOT NULL OR NULLIF(Target.[Descrip], Source.[Descrip]) IS NOT NULL OR 
	NULLIF(Source.[OriginId], Target.[OriginId]) IS NOT NULL OR NULLIF(Target.[OriginId], Source.[OriginId]) IS NOT NULL) THEN
 UPDATE SET
  [Descrip] = Source.[Descrip], 
  [OriginId] = Source.[OriginId]
WHEN NOT MATCHED BY TARGET THEN
 INSERT([ToolbarName],[Descrip],[OriginId])
 VALUES(Source.[ToolbarName],Source.[Descrip],Source.[OriginId])
WHEN NOT MATCHED BY SOURCE AND TARGET.OriginId = 2 THEN 
 DELETE
;
END TRY
BEGIN CATCH
    DECLARE @ERRORNUMBER	INT,@ERRORMSG		VARCHAR(MAX),@ERRORSTATE		INT
    SELECT @ERRORNUMBER = 50000 + ERROR_NUMBER(),@ERRORMSG = ERROR_MESSAGE(), @ERRORSTATE = ERROR_STATE();
    THROW @ERRORNUMBER, @ERRORMSG, @ERRORSTATE
END CATCH
GO






 


---------------------------DEFAULT SETTINGS------------------------------------------
Update origins set active=case originid when 2 then 1 else 0 end
--your proyect settings here
---------------------------UPDATE PRODUCT AND SYSTEM INFO SECTION--------------------
Update Settings set SettingValue='Laboratorio' where
SettingName='AutoUpdatePackageId'
Update Settings set SettingValue='D:\Flexygo\NUGET' where SettingName='AutoUpdateURL'
---------------------------LAST LINE FOR SET USER ORIGIN-----------------------------
Update origins set active=case originid when 3 then 1 else 0 end

IF (N'$(IsProduct)' = '2') BEGIN
       EXEC pNet_CreateOrUpdateDatabase $(OriginDatabaseName), N'$(CurrentDacVersion)'
END


EXEC sp_MSforeachtable 'ALTER TABLE ? ENABLE TRIGGER all'

EXEC sp_MSforeachtable 'ALTER TABLE ? WITH CHECK CHECK CONSTRAINT ALL'

COMMIT TRANSACTION
GO
