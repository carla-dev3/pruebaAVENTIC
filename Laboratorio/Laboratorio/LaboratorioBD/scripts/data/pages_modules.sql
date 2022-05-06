﻿

BEGIN TRY

MERGE INTO [Pages_Modules] AS Target
USING (VALUES
  (N'PPag_Articulos',N'PMod_ArticuloEdit',N'TopRightPosition',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1)
 ,(N'PPag_Articulos',N'PMod_ArticulosComponentes',N'TopRightPosition',NULL,2,N'SELECT CASE Conf_Art_Familias.P_Formula WHEN 1 THEN 1 ELSE 0 END AS ''CASO'' FROM Articulos
INNER JOIN Articulos_Familias ON Articulos_Familias.IdFamilia = Articulos.IdFamilia
INNER JOIN Conf_Art_Familias ON Conf_Art_Familias.IdFamilia = Articulos_Familias.IdFamilia
WHERE Articulos.IdArticulo = ''{{IdArticulo}}''',NULL,NULL,NULL,NULL,NULL,N'DataConnectionString',1)
 ,(N'PPag_Articulos',N'PMod_ArticulosList',N'TopPosition',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1)
 ,(N'PPag_Articulos',N'PMod_CompraLoteActivo',N'TopRightPosition',NULL,1,N'SELECT CASE WHEN Conf_Art_Familias.P_Formula IS NULL OR Conf_Art_Familias.P_Formula = 0 THEN 1 ELSE 0 END AS ''CASO'' FROM Articulos
INNER JOIN Articulos_Familias ON Articulos_Familias.IdFamilia = Articulos.IdFamilia
INNER JOIN Conf_Art_Familias ON Conf_Art_Familias.IdFamilia = Articulos_Familias.IdFamilia
WHERE Articulos.IdArticulo = ''{{IdArticulo}}''',NULL,NULL,NULL,NULL,NULL,N'DataConnectionString',1)
 ,(N'PPag_Articulos',N'PMod_Imagenes',N'CenterRightPosition',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1)
 ,(N'PPag_Articulos',N'PMod_InfoDocs',N'TopPosition',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1)
 ,(N'PPag_Articulos',N'PMod_LotesAlmacenesStockList',N'CenterLeftPosition',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1)
 ,(N'PPag_Articulos_Generico',N'P_ModNuevoArt',N'TopRightPosition',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1)
 ,(N'PPag_Articulos_Generico',N'PMod_ArticulosList',N'TopPosition',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1)
 ,(N'PPag_DocumentosArticulo',N'sysmod-document-manager',N'TopPosition',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1)
 ,(N'PPag_GestorPedidos',N'PMod_GestorPedidosList',N'TopPosition',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1)
 ,(N'PPag_Metodos',N'PMod_MetodosEdit',N'TopPosition',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1)
 ,(N'PPag_PreciosClientes',N'PMod_PreciosClientes',N'TopPosition',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1)
 ,(N'PPag_PreciosProv',N'PMod_PreciosProv',N'TopPosition',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1)
) AS Source ([PageName],[ModuleName],[LayoutPositionId],[RelationWhere],[Order],[SQlEnabled],[SQLEnabledDescrip],[Title],[IconName],[HeaderClass],[ModuleClass],[ConnStringID],[OriginId])
ON (Target.[PageName] = Source.[PageName] AND Target.[ModuleName] = Source.[ModuleName])
WHEN MATCHED AND (
	NULLIF(Source.[LayoutPositionId], Target.[LayoutPositionId]) IS NOT NULL OR NULLIF(Target.[LayoutPositionId], Source.[LayoutPositionId]) IS NOT NULL OR 
	NULLIF(Source.[RelationWhere], Target.[RelationWhere]) IS NOT NULL OR NULLIF(Target.[RelationWhere], Source.[RelationWhere]) IS NOT NULL OR 
	NULLIF(Source.[Order], Target.[Order]) IS NOT NULL OR NULLIF(Target.[Order], Source.[Order]) IS NOT NULL OR 
	NULLIF(Source.[SQlEnabled], Target.[SQlEnabled]) IS NOT NULL OR NULLIF(Target.[SQlEnabled], Source.[SQlEnabled]) IS NOT NULL OR 
	NULLIF(Source.[SQLEnabledDescrip], Target.[SQLEnabledDescrip]) IS NOT NULL OR NULLIF(Target.[SQLEnabledDescrip], Source.[SQLEnabledDescrip]) IS NOT NULL OR 
	NULLIF(Source.[Title], Target.[Title]) IS NOT NULL OR NULLIF(Target.[Title], Source.[Title]) IS NOT NULL OR 
	NULLIF(Source.[IconName], Target.[IconName]) IS NOT NULL OR NULLIF(Target.[IconName], Source.[IconName]) IS NOT NULL OR 
	NULLIF(Source.[HeaderClass], Target.[HeaderClass]) IS NOT NULL OR NULLIF(Target.[HeaderClass], Source.[HeaderClass]) IS NOT NULL OR 
	NULLIF(Source.[ModuleClass], Target.[ModuleClass]) IS NOT NULL OR NULLIF(Target.[ModuleClass], Source.[ModuleClass]) IS NOT NULL OR 
	NULLIF(Source.[ConnStringID], Target.[ConnStringID]) IS NOT NULL OR NULLIF(Target.[ConnStringID], Source.[ConnStringID]) IS NOT NULL OR 
	NULLIF(Source.[OriginId], Target.[OriginId]) IS NOT NULL OR NULLIF(Target.[OriginId], Source.[OriginId]) IS NOT NULL) THEN
 UPDATE SET
  [LayoutPositionId] = Source.[LayoutPositionId], 
  [RelationWhere] = Source.[RelationWhere], 
  [Order] = Source.[Order], 
  [SQlEnabled] = Source.[SQlEnabled], 
  [SQLEnabledDescrip] = Source.[SQLEnabledDescrip], 
  [Title] = Source.[Title], 
  [IconName] = Source.[IconName], 
  [HeaderClass] = Source.[HeaderClass], 
  [ModuleClass] = Source.[ModuleClass], 
  [ConnStringID] = Source.[ConnStringID], 
  [OriginId] = Source.[OriginId]
WHEN NOT MATCHED BY TARGET THEN
 INSERT([PageName],[ModuleName],[LayoutPositionId],[RelationWhere],[Order],[SQlEnabled],[SQLEnabledDescrip],[Title],[IconName],[HeaderClass],[ModuleClass],[ConnStringID],[OriginId])
 VALUES(Source.[PageName],Source.[ModuleName],Source.[LayoutPositionId],Source.[RelationWhere],Source.[Order],Source.[SQlEnabled],Source.[SQLEnabledDescrip],Source.[Title],Source.[IconName],Source.[HeaderClass],Source.[ModuleClass],Source.[ConnStringID],Source.[OriginId])
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





