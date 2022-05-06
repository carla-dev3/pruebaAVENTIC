

BEGIN TRY

MERGE INTO [Objects_Search_Properties] AS Target
USING (VALUES
  (N'6124874B-EE55-4C28-AC91-944A2E2AD5C5',N'Articulo',N'Descrip',N'Articulo',2,1,N'Descripción',N'text',1)
 ,(N'6124874B-EE55-4C28-AC91-944A2E2AD5C5',N'Articulo',N'IdArticulo',N'Articulo',2,0,N'IdArticulo',N'text',1)
 ,(N'6124874B-EE55-4C28-AC91-944A2E2AD5C5',N'Articulo',N'IdFamilia',N'Articulo',2,3,N'Familia',N'dbcombo',1)
 ,(N'6124874B-EE55-4C28-AC91-944A2E2AD5C5',N'Articulo',N'P_Departamento',N'Articulo',2,2,N'Dpto',N'dbcombo',1)
 ,(N'BFA19B9E-435D-424C-96F9-DB039A8F9CD0',N'Pedido',N'Articulo',N'Pedido',2,1,N'Articulo',N'dbcombo',1)
 ,(N'BFA19B9E-435D-424C-96F9-DB039A8F9CD0',N'Pedido',N'IdCliente',N'Pedido',2,0,N'IdCliente',N'dbcombo',1)
 ,(N'BFA19B9E-435D-424C-96F9-DB039A8F9CD0',N'Pedido',N'P_Departamento',N'Pedido',2,2,N'Departamento',N'dbcombo',1)
) AS Source ([SearchId],[ObjectName],[PropertyName],[ObjectPath],[Size],[Order],[Label],[PropertySearchType],[OriginId])
ON (Target.[SearchId] = Source.[SearchId] AND Target.[ObjectName] = Source.[ObjectName] AND Target.[PropertyName] = Source.[PropertyName])
WHEN MATCHED AND (
	NULLIF(Source.[ObjectPath], Target.[ObjectPath]) IS NOT NULL OR NULLIF(Target.[ObjectPath], Source.[ObjectPath]) IS NOT NULL OR 
	NULLIF(Source.[Size], Target.[Size]) IS NOT NULL OR NULLIF(Target.[Size], Source.[Size]) IS NOT NULL OR 
	NULLIF(Source.[Order], Target.[Order]) IS NOT NULL OR NULLIF(Target.[Order], Source.[Order]) IS NOT NULL OR 
	NULLIF(Source.[Label], Target.[Label]) IS NOT NULL OR NULLIF(Target.[Label], Source.[Label]) IS NOT NULL OR 
	NULLIF(Source.[PropertySearchType], Target.[PropertySearchType]) IS NOT NULL OR NULLIF(Target.[PropertySearchType], Source.[PropertySearchType]) IS NOT NULL OR 
	NULLIF(Source.[OriginId], Target.[OriginId]) IS NOT NULL OR NULLIF(Target.[OriginId], Source.[OriginId]) IS NOT NULL) THEN
 UPDATE SET
  [ObjectPath] = Source.[ObjectPath], 
  [Size] = Source.[Size], 
  [Order] = Source.[Order], 
  [Label] = Source.[Label], 
  [PropertySearchType] = Source.[PropertySearchType], 
  [OriginId] = Source.[OriginId]
WHEN NOT MATCHED BY TARGET THEN
 INSERT([SearchId],[ObjectName],[PropertyName],[ObjectPath],[Size],[Order],[Label],[PropertySearchType],[OriginId])
 VALUES(Source.[SearchId],Source.[ObjectName],Source.[PropertyName],Source.[ObjectPath],Source.[Size],Source.[Order],Source.[Label],Source.[PropertySearchType],Source.[OriginId])
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





