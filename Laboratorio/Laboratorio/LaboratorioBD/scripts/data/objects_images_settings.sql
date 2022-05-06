

BEGIN TRY

MERGE INTO [Objects_Images_Settings] AS Target
USING (VALUES
  (N'Articulo',N'IdArticulo',N'~/custom/images/',N'flexygo',NULL,N'sysimg-generic',N'sysImages',NULL,1)
) AS Source ([ObjectName],[KeyProperty],[RootPath],[TypeId],[ERPObjectName],[DefaultCategoryId],[ExtensionId],[OfflineFilter],[OriginId])
ON (Target.[ObjectName] = Source.[ObjectName] AND Target.[KeyProperty] = Source.[KeyProperty])
WHEN MATCHED AND (
	NULLIF(Source.[RootPath], Target.[RootPath]) IS NOT NULL OR NULLIF(Target.[RootPath], Source.[RootPath]) IS NOT NULL OR 
	NULLIF(Source.[TypeId], Target.[TypeId]) IS NOT NULL OR NULLIF(Target.[TypeId], Source.[TypeId]) IS NOT NULL OR 
	NULLIF(Source.[ERPObjectName], Target.[ERPObjectName]) IS NOT NULL OR NULLIF(Target.[ERPObjectName], Source.[ERPObjectName]) IS NOT NULL OR 
	NULLIF(Source.[DefaultCategoryId], Target.[DefaultCategoryId]) IS NOT NULL OR NULLIF(Target.[DefaultCategoryId], Source.[DefaultCategoryId]) IS NOT NULL OR 
	NULLIF(Source.[ExtensionId], Target.[ExtensionId]) IS NOT NULL OR NULLIF(Target.[ExtensionId], Source.[ExtensionId]) IS NOT NULL OR 
	NULLIF(Source.[OfflineFilter], Target.[OfflineFilter]) IS NOT NULL OR NULLIF(Target.[OfflineFilter], Source.[OfflineFilter]) IS NOT NULL OR 
	NULLIF(Source.[OriginId], Target.[OriginId]) IS NOT NULL OR NULLIF(Target.[OriginId], Source.[OriginId]) IS NOT NULL) THEN
 UPDATE SET
  [RootPath] = Source.[RootPath], 
  [TypeId] = Source.[TypeId], 
  [ERPObjectName] = Source.[ERPObjectName], 
  [DefaultCategoryId] = Source.[DefaultCategoryId], 
  [ExtensionId] = Source.[ExtensionId], 
  [OfflineFilter] = Source.[OfflineFilter], 
  [OriginId] = Source.[OriginId]
WHEN NOT MATCHED BY TARGET THEN
 INSERT([ObjectName],[KeyProperty],[RootPath],[TypeId],[ERPObjectName],[DefaultCategoryId],[ExtensionId],[OfflineFilter],[OriginId])
 VALUES(Source.[ObjectName],Source.[KeyProperty],Source.[RootPath],Source.[TypeId],Source.[ERPObjectName],Source.[DefaultCategoryId],Source.[ExtensionId],Source.[OfflineFilter],Source.[OriginId])
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





