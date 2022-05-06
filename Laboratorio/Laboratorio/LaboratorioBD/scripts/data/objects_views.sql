

BEGIN TRY

MERGE INTO [Objects_Views] AS Target
USING (VALUES
  (N'Articulo',N'ArticuloDefaultList',N'ArticuloDefaultList',N'DataConnectionString',N' SELECT [Articulos].[IdArticulo], [Articulos].[IdArticulo] as [Id Artículo], [Articulos].[Descrip] as [Descripción], [Articulos].[CodBarras] as [Cod. Barras], [FlxCmb1].[Descrip] as [Familia], [FlxCmb2].[Descrip] as [Tipo IVA], [Conf_Articulos].[P_Departamento] as [Departamento] FROM [Articulos] 
 LEFT JOIN [dbo].[Conf_Articulos] ON [Articulos].[IdArticulo]=[Conf_Articulos].[IdArticulo] 
  LEFT JOIN (SELECT IdFamilia, Descrip, UltimoNivel FROM Articulos_Familias WHERE UltimoNivel=1 ) [FlxCmb1] ON [FlxCmb1].[IdFamilia]=[Articulos].[IdFamilia] 
  LEFT JOIN (SELECT IdIva, Descrip FROM IVas) [FlxCmb2] ON [FlxCmb2].[IdIva]=[Articulos].[IdIva] 

',0,1,1,0,1,NULL,0,NULL,NULL,1)
 ,(N'Articulo',N'VPers_ArticulosList',N'Vista personalizada artículos',N'DataConnectionString',N'SELECT Articulos.IdArticulo as IdArticuloA, Articulos.Descrip as descripcion, af.Descrip as familia, ppl.Cantidad as Cantidad, CFam.P_Formula as EsFormula FROM Articulos
LEFT JOIN Articulos_Familias af ON af.IdFamilia=Articulos.IdFamilia
LEFT JOIN Conf_Articulos Cfa ON Cfa.IdArticulo=Articulos.IdArticulo
LEFT JOIN Pedidos_Prov_Lineas ppl ON Articulos.IdArticulo=ppl.IdArticulo 
LEFT JOIN Conf_Art_Familias CFam ON CFam.IdFamilia = af.IdFamilia',0,0,1,0,0,NULL,0,NULL,NULL,1)
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
LEFT JOIN IVAs t6 ON t6.IdIVA = Articulos.IdIva',0,0,1,0,0,NULL,0,NULL,NULL,1)
 ,(N'Articulo',N'VPers_StockLotesAlmacenes',N'Vista personalizada Stock Lotes Almacenes',N'DataConnectionString',N'SELECT aal.IdAlmacen as almacen, aal.Unidades as stock, a.IdArticulo as IdArticulo, a.Descrip as descripArt, l.NumLote as numLote FROM Articulos a
LEFT JOIN Lotes l ON a.IdArticulo=l.IdArticulo
LEFT JOIN Articulos_Almacenes_Lotes aal ON l.NumLote= aal.Lote',0,0,1,0,0,NULL,0,NULL,NULL,1)
 ,(N'Articulo_Metodos',N'Articulo_MetodosDefaultList',N'Articulo_MetodosDefaultList',N'DataConnectionString',N' SELECT [VPers_Articulos_Metodos].[IdArticulo], [VPers_Articulos_Metodos].[IdArticulo] as [IdArticulo_1], [VPers_Articulos_Metodos].[P_Bibliografia] as [P_Bibliografia], [VPers_Articulos_Metodos].[P_Caracteristicas] as [P_Caracteristicas], [VPers_Articulos_Metodos].[P_ColorTapaFlipoff] as [P_ColorTapaFlipoff], [FlxCmb1].[Descrip] as [P_Conservacion], [FlxCmb2].[Descrip] as [P_ControlAnalitico], [FlxCmb3].[Descrip] as [P_ControlCalidad], [FlxCmb4].[Descrip] as [P_DuracionTratamiento], [VPers_Articulos_Metodos].[P_ModusOperandi] as [P_ModusOperandi], [FlxCmb5].[Descrip] as [P_Posologia], [VPers_Articulos_Metodos].[P_Prospectos] as [P_Prospectos], [VPers_Articulos_Metodos].[P_TextoEtiqueta] as [P_TextoEtiqueta], [FlxCmb6].[Descrip] as [P_Utillaje] FROM [VPers_Articulos_Metodos] 
  LEFT JOIN (SELECT IdConservacion, Descrip FROM Pers_Articulos_Conservacion) [FlxCmb1] ON [FlxCmb1].[IdConservacion]=[VPers_Articulos_Metodos].[P_Conservacion] 
  LEFT JOIN (SELECT IdControlAnalitico, Descrip FROM Pers_Articulos_Control_Analitico) [FlxCmb2] ON [FlxCmb2].[IdControlAnalitico]=[VPers_Articulos_Metodos].[P_ControlAnalitico] 
  LEFT JOIN (SELECT IdControlCalidad, Descrip FROM Pers_Articulos_Control_Calidad) [FlxCmb3] ON [FlxCmb3].[IdControlCalidad]=[VPers_Articulos_Metodos].[P_ControlCalidad] 
  LEFT JOIN (SELECT IdDuracionTratamiento, Descrip FROM Pers_Articulos_Duracion_Tratamiento) [FlxCmb4] ON [FlxCmb4].[IdDuracionTratamiento]=[VPers_Articulos_Metodos].[P_DuracionTratamiento] 
  LEFT JOIN (SELECT IdPosologia, Descrip FROM Pers_Articulos_Posologia) [FlxCmb5] ON [FlxCmb5].[IdPosologia]=[VPers_Articulos_Metodos].[P_Posologia] 
  LEFT JOIN (SELECT IdUtillaje, Descrip FROM Pers_Articulos_Utillaje) [FlxCmb6] ON [FlxCmb6].[IdUtillaje]=[VPers_Articulos_Metodos].[P_Utillaje] 

',0,1,1,0,1,NULL,0,NULL,NULL,1)
 ,(N'ControlCalidad',N'ControlCalidadDefaultList',N'ControlCalidadDefaultList',N'DataConnectionString',N' SELECT [Pers_Articulos_Control_Calidad].[IdControlCalidad], [Pers_Articulos_Control_Calidad].[IdControlCalidad] as [IdControlCalidad_1], [Pers_Articulos_Control_Calidad].[Descrip] as [Descrip] FROM [Pers_Articulos_Control_Calidad] 

',0,1,1,0,1,NULL,0,NULL,NULL,1)
 ,(N'Objeto_Imagenes',N'Objeto_ImagenesDefaultList',N'Objeto_ImagenesDefaultList',N'DataConnectionString',N' SELECT [Objetos_Imagenes].[Objeto], [Objetos_Imagenes].[NombreFichero], [Objetos_Imagenes].[IdDocObjeto], [Objetos_Imagenes].[Objeto] as [Objeto_1], [Objetos_Imagenes].[NombreFichero] as [NombreFichero_1], [Objetos_Imagenes].[IdDocObjeto] as [IdDocObjeto_1], [Objetos_Imagenes].[Descrip] as [Descrip], [Objetos_Imagenes].[Principal] as [Principal] FROM [Objetos_Imagenes] 

',0,1,1,0,1,NULL,0,NULL,NULL,1)
 ,(N'Pedido',N'PedidoDefaultList',N'PedidoDefaultList',N'DataConnectionString',N' SELECT [Pedidos_Cli_Cabecera].[IdPedido], [Pedidos_Cli_Cabecera].[Fecha] as [Fecha], [FlxCmb1].[Cliente] as [IdCliente], [Pedidos_Cli_Cabecera].[FechaSalida] as [FechaSalida], [Conf_Articulos].[P_Departamento] as [Departamento], [FlxCmb2].[Descrip] as [Articulo], [FlxCmb3].[estado] as [IdEstado] FROM [Pedidos_Cli_Cabecera] 
 LEFT JOIN [dbo].[Conf_Articulos] ON [Pedidos_Cli_Cabecera].[IdPedido]=[Conf_Articulos].[IdArticulo] 
 LEFT JOIN [dbo].[Conf_Pedidos_Cli] ON [Pedidos_Cli_Cabecera].[IdPedido]=[Conf_Pedidos_Cli].[IdPedido] 
  LEFT JOIN (select IdCliente, Cliente from Clientes_Datos) [FlxCmb1] ON [FlxCmb1].[IdCliente]=[Pedidos_Cli_Cabecera].[IdCliente] 
  LEFT JOIN (select IdArticulo, Descrip from Articulos) [FlxCmb2] ON [FlxCmb2].[IdArticulo]=[Pedidos_Cli_Cabecera].[Articulo] 
  LEFT JOIN (select IdEstado,estado from Pedidos_Cli_Estados) [FlxCmb3] ON [FlxCmb3].[IdEstado]=[Pedidos_Cli_Cabecera].[IdEstado] 

',0,1,1,0,1,NULL,0,NULL,NULL,1)
 ,(N'Pedido',N'VPers_GestorPedidosList',N'Vista personalizada gestor de pedidos',N'DataConnectionString',N' SELECT [Pedidos_Cli_Cabecera].[IdPedido], [Pedidos_Cli_Cabecera].[Fecha] as [Fecha], [FlxCmb1].[Cliente] as [IdCliente], [Pedidos_Cli_Cabecera].[FechaSalida] as [FechaSalida], Pedidos_Cli_Cabecera.IdPedido, Pedidos_Cli_Lineas.IdLinea, Articulos.Descrip as IdArticulo, Pedidos_Cli_Lineas.IdEstado, Pedidos_Cli_Estados.Estado as IdEstado FROM [Pedidos_Cli_Cabecera] 
  LEFT JOIN (select IdCliente, Cliente from Clientes_Datos) [FlxCmb1] ON [FlxCmb1].[IdCliente]=[Pedidos_Cli_Cabecera].[IdCliente] 
 LEFT JOIN Pedidos_Cli_Lineas ON Pedidos_Cli_Lineas.IdPedido = Pedidos_Cli_Cabecera.IdPedido
LEFT JOIN Articulos ON Articulos.IdArticulo = Pedidos_Cli_Lineas.IdArticulo
LEFT JOIN Pedidos_Estados ON Pedidos_Estados.IdEstado = Pedidos_Cli_Lineas.IdEstado
LEFT JOIN Pedidos_Cli_Estados ON Pedidos_Cli_Estados.IdEstado = Pedidos_Cli_Lineas.IdEstado
ORDER BY Pedidos_Cli_Cabecera.IdPedido, Pedidos_Cli_Lineas.IdLinea

',0,0,1,0,0,NULL,0,NULL,NULL,1)
 ,(N'Precios_Cliente',N'Precios_ClienteDefaultList',N'Precios_ClienteDefaultList',N'DataConnectionString',N' SELECT [Listas_Precios_Cli].[IdLista], [Listas_Precios_Cli].[IdLista] as [IdLista_1], [Listas_Precios_Cli].[Descrip] as [Descrip], [FlxCmb1].[Simbolo] as [IdMoneda] FROM [Listas_Precios_Cli] 
  LEFT JOIN (SELECT IdMoneda, Descrip, Simbolo FROM Moneda) [FlxCmb1] ON [FlxCmb1].[IdMoneda]=[Listas_Precios_Cli].[IdMoneda] 

',0,1,1,0,1,NULL,0,NULL,NULL,1)
 ,(N'Precios_Clientes_Articulo',N'Precios_Clientes_ArticuloDefaultList',N'Precios_Clientes_ArticuloDefaultList',N'DataConnectionString',N' SELECT [Listas_Precios_Cli_Art].[IdLista], [Listas_Precios_Cli_Art].[IdArticulo], [Listas_Precios_Cli_Art].[DesdeUnidades], [Listas_Precios_Cli_Art].[DesdeFecha], [Listas_Precios_Cli_Art].[IdLista] as [Id Lista], [Listas_Precios_Cli_Art].[DesdeUnidades] as [Desde unid.], [Listas_Precios_Cli_Art].[Precio] as [Precio], [Listas_Precios_Cli_Art].[Descuento1] as [Dto1] FROM [Listas_Precios_Cli_Art] 

',0,1,1,0,1,NULL,0,NULL,NULL,1)
 ,(N'Precios_Prov',N'Precios_ProvDefaultList',N'Precios_ProvDefaultList',N'DataConnectionString',N' SELECT [Listas_Precios_Prov].[IdLista], [Listas_Precios_Prov].[IdLista] as [Id_Lista], [Listas_Precios_Prov].[Descrip] as [Lista], [FlxCmb1].[Simbolo] as [Moneda] FROM [Listas_Precios_Prov] 
  LEFT JOIN (SELECT IdMoneda, Descrip, Simbolo FROM Moneda) [FlxCmb1] ON [FlxCmb1].[IdMoneda]=[Listas_Precios_Prov].[IdMoneda] 

',0,1,1,0,1,NULL,0,NULL,NULL,1)
 ,(N'Precios_Prov_Articulo',N'Precios_Prov_ArticuloDefaultList',N'Precios_Prov_ArticuloDefaultList',N'DataConnectionString',N' SELECT [Listas_Precios_Prov_Art].[IdLista], [Listas_Precios_Prov_Art].[IdArticulo], [Listas_Precios_Prov_Art].[DesdeUnidades], [Listas_Precios_Prov_Art].[IdLista] as [IdLista_1], [Listas_Precios_Prov_Art].[DesdeUnidades] as [DesdeUnid], [Listas_Precios_Prov_Art].[Precio] as [Precio], [Listas_Precios_Prov_Art].[Descuento1] as [Dto1] FROM [Listas_Precios_Prov_Art] 

',0,1,1,0,1,NULL,0,NULL,NULL,1)
 ,(N'Utillaje',N'UtillajeDefaultList',N'UtillajeDefaultList',N'DataConnectionString',N' SELECT [Pers_Articulos_Utillaje].[IdUtillaje], [Pers_Articulos_Utillaje].[IdUtillaje] as [IdUtillaje_1], [Pers_Articulos_Utillaje].[Descrip] as [Descrip] FROM [Pers_Articulos_Utillaje] 

',0,1,1,0,1,NULL,0,NULL,NULL,1)
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





