

BEGIN TRY

MERGE INTO [Layouts] AS Target
USING (VALUES
  (N'PLayoutModuleArticulos',N'organization',N'Layout articulos',N'<div class="col-12 col-s-12 module-placeholder TopPosition"></div>
<div class="col-4 col-s-12 module-placeholder TopPosition"></div>
<div class="col-8 col-s-12 nopadding">
	<div class="col-12 col-s-12 module-placeholder TopRightPosition"></div>
	<div class="col-6 col-s-12 module-placeholder CenterLeftPosition"></div>
	<div class="col-6 col-s-12 module-placeholder CenterRightPosition"></div>
	<div class="col-12 col-s-12 module-placeholder BottomPosition"></div>
</div>',NULL,0,1)
) AS Source ([LayoutName],[IconName],[LayoutDescrip],[LayoutTemplate],[ImagePath],[Offline],[OriginId])
ON (Target.[LayoutName] = Source.[LayoutName])
WHEN MATCHED AND (
	NULLIF(Source.[IconName], Target.[IconName]) IS NOT NULL OR NULLIF(Target.[IconName], Source.[IconName]) IS NOT NULL OR 
	NULLIF(Source.[LayoutDescrip], Target.[LayoutDescrip]) IS NOT NULL OR NULLIF(Target.[LayoutDescrip], Source.[LayoutDescrip]) IS NOT NULL OR 
	NULLIF(Source.[LayoutTemplate], Target.[LayoutTemplate]) IS NOT NULL OR NULLIF(Target.[LayoutTemplate], Source.[LayoutTemplate]) IS NOT NULL OR 
	NULLIF(Source.[ImagePath], Target.[ImagePath]) IS NOT NULL OR NULLIF(Target.[ImagePath], Source.[ImagePath]) IS NOT NULL OR 
	NULLIF(Source.[Offline], Target.[Offline]) IS NOT NULL OR NULLIF(Target.[Offline], Source.[Offline]) IS NOT NULL OR 
	NULLIF(Source.[OriginId], Target.[OriginId]) IS NOT NULL OR NULLIF(Target.[OriginId], Source.[OriginId]) IS NOT NULL) THEN
 UPDATE SET
  [IconName] = Source.[IconName], 
  [LayoutDescrip] = Source.[LayoutDescrip], 
  [LayoutTemplate] = Source.[LayoutTemplate], 
  [ImagePath] = Source.[ImagePath], 
  [Offline] = Source.[Offline], 
  [OriginId] = Source.[OriginId]
WHEN NOT MATCHED BY TARGET THEN
 INSERT([LayoutName],[IconName],[LayoutDescrip],[LayoutTemplate],[ImagePath],[Offline],[OriginId])
 VALUES(Source.[LayoutName],Source.[IconName],Source.[LayoutDescrip],Source.[LayoutTemplate],Source.[ImagePath],Source.[Offline],Source.[OriginId])
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





