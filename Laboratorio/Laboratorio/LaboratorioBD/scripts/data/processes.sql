﻿

BEGIN TRY

MERGE INTO [Processes] AS Target
USING (VALUES
  (N'Copiar_Articulo',7,N'product',NULL,N'Copiar Artículo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'edit',NULL,NULL,NULL,NULL,N'Articulo',NULL,N'{"Descrip":"{{Descrip}}", "IdFamilia":"{{IdFamilia}}", "IdIva": "{{IdIva}}", "CodBarras":"{{CodBarras}}", "P_Psicotropo":"{{P_Psicotropo}}", "Lotes":"{{Lotes}}", "P_FormaFarmaceutica":"{{P_FormaFarmaceutica}}", "Observaciones":"{{Observaciones}}", "Paso":"{{Paso}}", "P_Periodo_Cad":"{{P_Periodo_Cad}}", "P_Periodo_Cad_Tipo":"{{P_Periodo_Cad_Tipo}}", "PDesc_EsFormula":"{{PDesc_EsFormula}}", "PDesc_PrefijoFam":"{{PDesc_PrefijoFam}}"}',0,NULL,N'modal1024x768',NULL,1,0,0,0,0,0,NULL,NULL,0,NULL,NULL,0,0,1)
 ,(N'Mostrar_Precios_Clientes',7,N'product',NULL,N'Precios Clientes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'generic',N'PPag_PreciosClientes',NULL,NULL,NULL,N'Precios_Clientes_Articulos',N'IdArticulo=''{{IdArticulo}}''',N'{"IdArticulo":"{{IdArticulo}}"}',0,NULL,N'modal800x600',NULL,1,0,0,0,0,0,NULL,NULL,0,NULL,NULL,0,0,1)
 ,(N'Mostrar_Precios_Prov',7,N'product',NULL,N'Precios Proveedores',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'generic',N'PPag_PreciosProv',NULL,NULL,NULL,N'Precios_Prov_Articulos',N'IdArticulo = ''{{IdArticulo}}''',NULL,0,NULL,N'modal800x600',NULL,1,0,0,0,0,0,NULL,NULL,0,NULL,NULL,0,0,1)
 ,(N'P_Valoracion',8,N'product',NULL,N'Valoración',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'generic',N'PPag_Valoracion',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,N'modal1280x1024',NULL,1,0,0,0,0,0,NULL,NULL,0,NULL,NULL,0,0,1)
 ,(N'PNavega_Etiquetas',8,N'product',NULL,N'Etiquetas',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'generic',N'PPag_Etiquetas',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,N'modal1024x768',NULL,1,0,0,0,0,0,NULL,NULL,0,NULL,NULL,0,0,1)
 ,(N'PNavega_Metodos',7,N'product',NULL,N'Métodos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,N'generic',N'PPag_Metodos',NULL,NULL,NULL,N'Articulo_Metodos',N'IdArticulo = ''{{IdArticulo}}''',NULL,0,NULL,N'modal1024x768',NULL,1,0,0,0,0,0,NULL,NULL,0,NULL,NULL,0,0,1)
) AS Source ([ProcessName],[TypeId],[ClassId],[ConfirmText],[ProcessDescrip],[ParamsDescrip],[ReturnDescrip],[JSforParams],[File],[Class],[Method],[StoredName],[Code],[ExternalUrl],[PageTypeId],[PageName],[ReportName],[HelpId],[ReportWhere],[ObjectName],[ObjectWhere],[Defaults],[TimeOut],[ConnStringId],[TargetId],[ProcessFlowText],[Auditable],[Refresh],[IsTransacted],[AdminOnly],[ConfirmOkText],[CloseDialogOnOk],[RunButtonText],[LoadProcessName],[GipeParams],[Summary],[ReturnTableNames],[Reserved],[Offline],[OriginId])
ON (Target.[ProcessName] = Source.[ProcessName])
WHEN MATCHED AND (
	NULLIF(Source.[TypeId], Target.[TypeId]) IS NOT NULL OR NULLIF(Target.[TypeId], Source.[TypeId]) IS NOT NULL OR 
	NULLIF(Source.[ClassId], Target.[ClassId]) IS NOT NULL OR NULLIF(Target.[ClassId], Source.[ClassId]) IS NOT NULL OR 
	NULLIF(Source.[ConfirmText], Target.[ConfirmText]) IS NOT NULL OR NULLIF(Target.[ConfirmText], Source.[ConfirmText]) IS NOT NULL OR 
	NULLIF(Source.[ProcessDescrip], Target.[ProcessDescrip]) IS NOT NULL OR NULLIF(Target.[ProcessDescrip], Source.[ProcessDescrip]) IS NOT NULL OR 
	NULLIF(Source.[ParamsDescrip], Target.[ParamsDescrip]) IS NOT NULL OR NULLIF(Target.[ParamsDescrip], Source.[ParamsDescrip]) IS NOT NULL OR 
	NULLIF(Source.[ReturnDescrip], Target.[ReturnDescrip]) IS NOT NULL OR NULLIF(Target.[ReturnDescrip], Source.[ReturnDescrip]) IS NOT NULL OR 
	NULLIF(Source.[JSforParams], Target.[JSforParams]) IS NOT NULL OR NULLIF(Target.[JSforParams], Source.[JSforParams]) IS NOT NULL OR 
	NULLIF(Source.[File], Target.[File]) IS NOT NULL OR NULLIF(Target.[File], Source.[File]) IS NOT NULL OR 
	NULLIF(Source.[Class], Target.[Class]) IS NOT NULL OR NULLIF(Target.[Class], Source.[Class]) IS NOT NULL OR 
	NULLIF(Source.[Method], Target.[Method]) IS NOT NULL OR NULLIF(Target.[Method], Source.[Method]) IS NOT NULL OR 
	NULLIF(Source.[StoredName], Target.[StoredName]) IS NOT NULL OR NULLIF(Target.[StoredName], Source.[StoredName]) IS NOT NULL OR 
	NULLIF(Source.[Code], Target.[Code]) IS NOT NULL OR NULLIF(Target.[Code], Source.[Code]) IS NOT NULL OR 
	NULLIF(Source.[ExternalUrl], Target.[ExternalUrl]) IS NOT NULL OR NULLIF(Target.[ExternalUrl], Source.[ExternalUrl]) IS NOT NULL OR 
	NULLIF(Source.[PageTypeId], Target.[PageTypeId]) IS NOT NULL OR NULLIF(Target.[PageTypeId], Source.[PageTypeId]) IS NOT NULL OR 
	NULLIF(Source.[PageName], Target.[PageName]) IS NOT NULL OR NULLIF(Target.[PageName], Source.[PageName]) IS NOT NULL OR 
	NULLIF(Source.[ReportName], Target.[ReportName]) IS NOT NULL OR NULLIF(Target.[ReportName], Source.[ReportName]) IS NOT NULL OR 
	NULLIF(Source.[HelpId], Target.[HelpId]) IS NOT NULL OR NULLIF(Target.[HelpId], Source.[HelpId]) IS NOT NULL OR 
	NULLIF(Source.[ReportWhere], Target.[ReportWhere]) IS NOT NULL OR NULLIF(Target.[ReportWhere], Source.[ReportWhere]) IS NOT NULL OR 
	NULLIF(Source.[ObjectName], Target.[ObjectName]) IS NOT NULL OR NULLIF(Target.[ObjectName], Source.[ObjectName]) IS NOT NULL OR 
	NULLIF(Source.[ObjectWhere], Target.[ObjectWhere]) IS NOT NULL OR NULLIF(Target.[ObjectWhere], Source.[ObjectWhere]) IS NOT NULL OR 
	NULLIF(Source.[Defaults], Target.[Defaults]) IS NOT NULL OR NULLIF(Target.[Defaults], Source.[Defaults]) IS NOT NULL OR 
	NULLIF(Source.[TimeOut], Target.[TimeOut]) IS NOT NULL OR NULLIF(Target.[TimeOut], Source.[TimeOut]) IS NOT NULL OR 
	NULLIF(Source.[ConnStringId], Target.[ConnStringId]) IS NOT NULL OR NULLIF(Target.[ConnStringId], Source.[ConnStringId]) IS NOT NULL OR 
	NULLIF(Source.[TargetId], Target.[TargetId]) IS NOT NULL OR NULLIF(Target.[TargetId], Source.[TargetId]) IS NOT NULL OR 
	NULLIF(Source.[ProcessFlowText], Target.[ProcessFlowText]) IS NOT NULL OR NULLIF(Target.[ProcessFlowText], Source.[ProcessFlowText]) IS NOT NULL OR 
	NULLIF(Source.[Auditable], Target.[Auditable]) IS NOT NULL OR NULLIF(Target.[Auditable], Source.[Auditable]) IS NOT NULL OR 
	NULLIF(Source.[Refresh], Target.[Refresh]) IS NOT NULL OR NULLIF(Target.[Refresh], Source.[Refresh]) IS NOT NULL OR 
	NULLIF(Source.[IsTransacted], Target.[IsTransacted]) IS NOT NULL OR NULLIF(Target.[IsTransacted], Source.[IsTransacted]) IS NOT NULL OR 
	NULLIF(Source.[AdminOnly], Target.[AdminOnly]) IS NOT NULL OR NULLIF(Target.[AdminOnly], Source.[AdminOnly]) IS NOT NULL OR 
	NULLIF(Source.[ConfirmOkText], Target.[ConfirmOkText]) IS NOT NULL OR NULLIF(Target.[ConfirmOkText], Source.[ConfirmOkText]) IS NOT NULL OR 
	NULLIF(Source.[CloseDialogOnOk], Target.[CloseDialogOnOk]) IS NOT NULL OR NULLIF(Target.[CloseDialogOnOk], Source.[CloseDialogOnOk]) IS NOT NULL OR 
	NULLIF(Source.[RunButtonText], Target.[RunButtonText]) IS NOT NULL OR NULLIF(Target.[RunButtonText], Source.[RunButtonText]) IS NOT NULL OR 
	NULLIF(Source.[LoadProcessName], Target.[LoadProcessName]) IS NOT NULL OR NULLIF(Target.[LoadProcessName], Source.[LoadProcessName]) IS NOT NULL OR 
	NULLIF(Source.[GipeParams], Target.[GipeParams]) IS NOT NULL OR NULLIF(Target.[GipeParams], Source.[GipeParams]) IS NOT NULL OR 
	NULLIF(Source.[Summary], Target.[Summary]) IS NOT NULL OR NULLIF(Target.[Summary], Source.[Summary]) IS NOT NULL OR 
	NULLIF(Source.[ReturnTableNames], Target.[ReturnTableNames]) IS NOT NULL OR NULLIF(Target.[ReturnTableNames], Source.[ReturnTableNames]) IS NOT NULL OR 
	NULLIF(Source.[Reserved], Target.[Reserved]) IS NOT NULL OR NULLIF(Target.[Reserved], Source.[Reserved]) IS NOT NULL OR 
	NULLIF(Source.[Offline], Target.[Offline]) IS NOT NULL OR NULLIF(Target.[Offline], Source.[Offline]) IS NOT NULL OR 
	NULLIF(Source.[OriginId], Target.[OriginId]) IS NOT NULL OR NULLIF(Target.[OriginId], Source.[OriginId]) IS NOT NULL) THEN
 UPDATE SET
  [TypeId] = Source.[TypeId], 
  [ClassId] = Source.[ClassId], 
  [ConfirmText] = Source.[ConfirmText], 
  [ProcessDescrip] = Source.[ProcessDescrip], 
  [ParamsDescrip] = Source.[ParamsDescrip], 
  [ReturnDescrip] = Source.[ReturnDescrip], 
  [JSforParams] = Source.[JSforParams], 
  [File] = Source.[File], 
  [Class] = Source.[Class], 
  [Method] = Source.[Method], 
  [StoredName] = Source.[StoredName], 
  [Code] = Source.[Code], 
  [ExternalUrl] = Source.[ExternalUrl], 
  [PageTypeId] = Source.[PageTypeId], 
  [PageName] = Source.[PageName], 
  [ReportName] = Source.[ReportName], 
  [HelpId] = Source.[HelpId], 
  [ReportWhere] = Source.[ReportWhere], 
  [ObjectName] = Source.[ObjectName], 
  [ObjectWhere] = Source.[ObjectWhere], 
  [Defaults] = Source.[Defaults], 
  [TimeOut] = Source.[TimeOut], 
  [ConnStringId] = Source.[ConnStringId], 
  [TargetId] = Source.[TargetId], 
  [ProcessFlowText] = Source.[ProcessFlowText], 
  [Auditable] = Source.[Auditable], 
  [Refresh] = Source.[Refresh], 
  [IsTransacted] = Source.[IsTransacted], 
  [AdminOnly] = Source.[AdminOnly], 
  [ConfirmOkText] = Source.[ConfirmOkText], 
  [CloseDialogOnOk] = Source.[CloseDialogOnOk], 
  [RunButtonText] = Source.[RunButtonText], 
  [LoadProcessName] = Source.[LoadProcessName], 
  [GipeParams] = Source.[GipeParams], 
  [Summary] = Source.[Summary], 
  [ReturnTableNames] = Source.[ReturnTableNames], 
  [Reserved] = Source.[Reserved], 
  [Offline] = Source.[Offline], 
  [OriginId] = Source.[OriginId]
WHEN NOT MATCHED BY TARGET THEN
 INSERT([ProcessName],[TypeId],[ClassId],[ConfirmText],[ProcessDescrip],[ParamsDescrip],[ReturnDescrip],[JSforParams],[File],[Class],[Method],[StoredName],[Code],[ExternalUrl],[PageTypeId],[PageName],[ReportName],[HelpId],[ReportWhere],[ObjectName],[ObjectWhere],[Defaults],[TimeOut],[ConnStringId],[TargetId],[ProcessFlowText],[Auditable],[Refresh],[IsTransacted],[AdminOnly],[ConfirmOkText],[CloseDialogOnOk],[RunButtonText],[LoadProcessName],[GipeParams],[Summary],[ReturnTableNames],[Reserved],[Offline],[OriginId])
 VALUES(Source.[ProcessName],Source.[TypeId],Source.[ClassId],Source.[ConfirmText],Source.[ProcessDescrip],Source.[ParamsDescrip],Source.[ReturnDescrip],Source.[JSforParams],Source.[File],Source.[Class],Source.[Method],Source.[StoredName],Source.[Code],Source.[ExternalUrl],Source.[PageTypeId],Source.[PageName],Source.[ReportName],Source.[HelpId],Source.[ReportWhere],Source.[ObjectName],Source.[ObjectWhere],Source.[Defaults],Source.[TimeOut],Source.[ConnStringId],Source.[TargetId],Source.[ProcessFlowText],Source.[Auditable],Source.[Refresh],Source.[IsTransacted],Source.[AdminOnly],Source.[ConfirmOkText],Source.[CloseDialogOnOk],Source.[RunButtonText],Source.[LoadProcessName],Source.[GipeParams],Source.[Summary],Source.[ReturnTableNames],Source.[Reserved],Source.[Offline],Source.[OriginId])
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





