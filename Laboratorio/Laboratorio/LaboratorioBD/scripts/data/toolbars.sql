

BEGIN TRY

MERGE INTO [ToolBars] AS Target
USING (VALUES
  (N'P_Toolbar_ArticuloEdit',N'Toolbar edición artículo',1)
 ,(N'P_Toolbar_NuevoArticulo',N'Nuevo artículo',1)
 ,(N'P_Toolbar_SAVE',N'Only save toolbar',1)
 ,(N'P_ToolbarGenericAdd',N'Genérica añadir nuevo objeto',1)
 ,(N'PToolbar_ArticulosList',N'Toolbar pers Artículos',1)
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





