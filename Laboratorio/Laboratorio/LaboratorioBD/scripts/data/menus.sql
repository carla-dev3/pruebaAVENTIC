

BEGIN TRY

MERGE INTO [Menus] AS Target
USING (VALUES
  (N'243318a5-48f1-4136-9cb1-68abe4cfeb87',N'Precios Proveedores',NULL,N'price',1)
 ,(N'3bf76f58-be36-481c-970a-773a3d69798c',N'Precios Clientes',NULL,N'price',1)
 ,(N'495e6267-bab8-4453-af9a-89bca6ec7d16',N'Copiar Artículo',NULL,N'articles',1)
 ,(N'59f132f1-6892-41e5-97d9-70127d3fc5a1',N'Valoración',NULL,N'checked-2',1)
 ,(N'dc48fe4b-5da4-47af-915e-855a63543db8',N'Etiquetas',NULL,N'label',1)
 ,(N'ee362608-6a77-4888-87c8-932983ccba57',N'Métodos',NULL,N'organization',1)
) AS Source ([MenuId],[Descrip],[ParentId],[IconName],[OriginId])
ON (Target.[MenuId] = Source.[MenuId])
WHEN MATCHED AND (
	NULLIF(Source.[Descrip], Target.[Descrip]) IS NOT NULL OR NULLIF(Target.[Descrip], Source.[Descrip]) IS NOT NULL OR 
	NULLIF(Source.[ParentId], Target.[ParentId]) IS NOT NULL OR NULLIF(Target.[ParentId], Source.[ParentId]) IS NOT NULL OR 
	NULLIF(Source.[IconName], Target.[IconName]) IS NOT NULL OR NULLIF(Target.[IconName], Source.[IconName]) IS NOT NULL OR 
	NULLIF(Source.[OriginId], Target.[OriginId]) IS NOT NULL OR NULLIF(Target.[OriginId], Source.[OriginId]) IS NOT NULL) THEN
 UPDATE SET
  [Descrip] = Source.[Descrip], 
  [ParentId] = Source.[ParentId], 
  [IconName] = Source.[IconName], 
  [OriginId] = Source.[OriginId]
WHEN NOT MATCHED BY TARGET THEN
 INSERT([MenuId],[Descrip],[ParentId],[IconName],[OriginId])
 VALUES(Source.[MenuId],Source.[Descrip],Source.[ParentId],Source.[IconName],Source.[OriginId])
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





