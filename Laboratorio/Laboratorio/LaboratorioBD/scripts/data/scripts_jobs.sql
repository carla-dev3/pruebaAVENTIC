

BEGIN TRY

MERGE INTO [Scripts_Jobs] AS Target
USING (VALUES
  (N'5f3d8331-c651-45ab-b57b-c1de2eb8aaaf',N'Crea tabla Pers_Pedidos_Estados_Lab',NULL,'2022-04-21T16:39:00',N'P',N'DECLARE @SQL nvarchar (MAX) = ''''



IF NOT EXISTS (Select * from sys.objects where name = ''Pers_Pedidos_Estados_Lab'') BEGIN
SET @SQL = ''
CREATE TABLE [dbo].[Pers_Pedidos_Estados_Lab](
[IdEstadoLab] [int] NOT NULL,
[Descrip] [varchar](350) NOT NULL,
[IdDoc] [dbo].[T_Id_Doc] IDENTITY(1,1) NOT NULL,
[InsertUpdate] [dbo].[T_CEESI_Insert_Update] NOT NULL,
[Usuario] [dbo].[T_CEESI_Usuario] NOT NULL,
[FechaInsertUpdate] [dbo].[T_CEESI_Fecha_Sistema] NOT NULL,
PRIMARY KEY CLUSTERED
(
[IdEstadoLab] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]





ALTER TABLE [dbo].[Pers_Pedidos_Estados_Lab] ADD CONSTRAINT [DF_Pers_Pedidos_Estados_Lab_InsertUpdate] DEFAULT ((0)) FOR [InsertUpdate]





ALTER TABLE [dbo].[Pers_Pedidos_Estados_Lab] ADD CONSTRAINT [DF_Pers_Pedidos_Estados_Lab_Usuario] DEFAULT (user_name()) FOR [Usuario]





ALTER TABLE [dbo].[Pers_Pedidos_Estados_Lab] ADD CONSTRAINT [DF_Pers_Pedidos_Estados_Lab_FechaInsertUpdate] DEFAULT (getdate()) FOR [FechaInsertUpdate]
''
EXEC sp_executesql @SQL


EXEC zpermisos Pers_Pedidos_Estados_Lab
END',N'DataConnectionString',2,NULL,NULL,NULL,1)
 ,(N'704763bf-c945-469c-b988-1807df9f42b6',N'Crea campos en Conf_Pedidos_Cli',NULL,'2022-04-12T13:45:00',N'P',N'DECLARE @SQL nvarchar (MAX) = ''''''''

IF not exists
(
SELECT *
FROM INFORMATION_SCHEMA.COLUMNS
WHERE COLUMN_NAME = ''P_Medico'' AND TABLE_NAME = ''conf_pedidos_cli''
)
BEGIN
SET @SQL  = ''
ALTER TABLE conf_pedidos_cli add P_Medico nvarchar(150) null

EXEC sys.sp_addextendedproperty 
	@name=N''''MS_Description'''',
	@value=N''''Medico'''',
	@level0type=N''''SCHEMA'''',
	@level0name=N''''dbo'''',
	@level1type=N''''TABLE'''',
	@level1name=N''''conf_pedidos_cli'''',
	@level2type=N''''COLUMN'''',
	@level2name=N''''P_Medico''''
''
exec sp_executesql @sql
end


IF not exists
(
SELECT *
FROM INFORMATION_SCHEMA.COLUMNS
WHERE COLUMN_NAME = ''P_Paciente'' AND TABLE_NAME = ''conf_pedidos_cli''
)
BEGIN
SET @SQL  = ''
ALTER TABLE conf_pedidos_cli add P_Paciente nvarchar(150) null

EXEC sys.sp_addextendedproperty 
	@name=N''''MS_Description'''',
	@value=N''''Paciente'''',
	@level0type=N''''SCHEMA'''',
	@level0name=N''''dbo'''',
	@level1type=N''''TABLE'''',
	@level1name=N''''conf_pedidos_cli'''',
	@level2type=N''''COLUMN'''',
	@level2name=N''''P_Paciente''''
''
exec sp_executesql @sql
end

IF not exists
(
SELECT *
FROM INFORMATION_SCHEMA.COLUMNS
WHERE COLUMN_NAME = ''P_Clinica'' AND TABLE_NAME = ''conf_pedidos_cli''
)
BEGIN
SET @SQL  = ''
ALTER TABLE conf_pedidos_cli add P_Clinica nvarchar(150) null

EXEC sys.sp_addextendedproperty 
	@name=N''''MS_Description'''',
	@value=N''''Clinica'''',
	@level0type=N''''SCHEMA'''',
	@level0name=N''''dbo'''',
	@level1type=N''''TABLE'''',
	@level1name=N''''conf_pedidos_cli'''',
	@level2type=N''''COLUMN'''',
	@level2name=N''''P_Clinica''''
''
exec sp_executesql @sql
end

IF not exists
(
SELECT *
FROM INFORMATION_SCHEMA.COLUMNS
WHERE COLUMN_NAME = ''P_Colegiado'' AND TABLE_NAME = ''conf_pedidos_cli''
)
BEGIN
SET @SQL  = ''
ALTER TABLE conf_pedidos_cli add P_Colegiado nvarchar(150) null

EXEC sys.sp_addextendedproperty 
	@name=N''''MS_Description'''',
	@value=N''''Colegiado'''',
	@level0type=N''''SCHEMA'''',
	@level0name=N''''dbo'''',
	@level1type=N''''TABLE'''',
	@level1name=N''''conf_pedidos_cli'''',
	@level2type=N''''COLUMN'''',
	@level2name=N''''P_Colegiado''''
''
exec sp_executesql @sql
end

IF not exists
(
SELECT *
FROM INFORMATION_SCHEMA.COLUMNS
WHERE COLUMN_NAME = ''P_Farmacia'' AND TABLE_NAME = ''conf_pedidos_cli''
)
BEGIN
SET @SQL  = ''
ALTER TABLE conf_pedidos_cli add P_Farmacia nvarchar(150) null

EXEC sys.sp_addextendedproperty 
	@name=N''''MS_Description'''',
	@value=N''''Farmacia'''',
	@level0type=N''''SCHEMA'''',
	@level0name=N''''dbo'''',
	@level1type=N''''TABLE'''',
	@level1name=N''''conf_pedidos_cli'''',
	@level2type=N''''COLUMN'''',
	@level2name=N''''P_Farmacia''''
''	
exec sp_executesql @sql
end',N'DataConnectionString',1,NULL,NULL,NULL,1)
) AS Source ([ScriptId],[Descrip],[Notes],[CreationDate],[State],[Script],[ConnStringId],[ExecuteOrder],[StartDate],[EndDate],[ErrorMessage],[OriginId])
ON (Target.[ScriptId] = Source.[ScriptId])
WHEN MATCHED AND (
	NULLIF(Source.[Descrip], Target.[Descrip]) IS NOT NULL OR NULLIF(Target.[Descrip], Source.[Descrip]) IS NOT NULL OR 
	NULLIF(Source.[Notes], Target.[Notes]) IS NOT NULL OR NULLIF(Target.[Notes], Source.[Notes]) IS NOT NULL OR 
	NULLIF(Source.[CreationDate], Target.[CreationDate]) IS NOT NULL OR NULLIF(Target.[CreationDate], Source.[CreationDate]) IS NOT NULL OR 
	NULLIF(Source.[State], Target.[State]) IS NOT NULL OR NULLIF(Target.[State], Source.[State]) IS NOT NULL OR 
	NULLIF(Source.[Script], Target.[Script]) IS NOT NULL OR NULLIF(Target.[Script], Source.[Script]) IS NOT NULL OR 
	NULLIF(Source.[ConnStringId], Target.[ConnStringId]) IS NOT NULL OR NULLIF(Target.[ConnStringId], Source.[ConnStringId]) IS NOT NULL OR 
	NULLIF(Source.[ExecuteOrder], Target.[ExecuteOrder]) IS NOT NULL OR NULLIF(Target.[ExecuteOrder], Source.[ExecuteOrder]) IS NOT NULL OR 
	NULLIF(Source.[StartDate], Target.[StartDate]) IS NOT NULL OR NULLIF(Target.[StartDate], Source.[StartDate]) IS NOT NULL OR 
	NULLIF(Source.[EndDate], Target.[EndDate]) IS NOT NULL OR NULLIF(Target.[EndDate], Source.[EndDate]) IS NOT NULL OR 
	NULLIF(Source.[ErrorMessage], Target.[ErrorMessage]) IS NOT NULL OR NULLIF(Target.[ErrorMessage], Source.[ErrorMessage]) IS NOT NULL OR 
	NULLIF(Source.[OriginId], Target.[OriginId]) IS NOT NULL OR NULLIF(Target.[OriginId], Source.[OriginId]) IS NOT NULL) THEN
 UPDATE SET
  [Descrip] = Source.[Descrip], 
  [Notes] = Source.[Notes], 
  [CreationDate] = Source.[CreationDate], 
  [State] = Source.[State], 
  [Script] = Source.[Script], 
  [ConnStringId] = Source.[ConnStringId], 
  [ExecuteOrder] = Source.[ExecuteOrder], 
  [StartDate] = Source.[StartDate], 
  [EndDate] = Source.[EndDate], 
  [ErrorMessage] = Source.[ErrorMessage], 
  [OriginId] = Source.[OriginId]
WHEN NOT MATCHED BY TARGET THEN
 INSERT([ScriptId],[Descrip],[Notes],[CreationDate],[State],[Script],[ConnStringId],[ExecuteOrder],[StartDate],[EndDate],[ErrorMessage],[OriginId])
 VALUES(Source.[ScriptId],Source.[Descrip],Source.[Notes],Source.[CreationDate],Source.[State],Source.[Script],Source.[ConnStringId],Source.[ExecuteOrder],Source.[StartDate],Source.[EndDate],Source.[ErrorMessage],Source.[OriginId])
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





