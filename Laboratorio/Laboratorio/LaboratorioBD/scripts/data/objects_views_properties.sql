

BEGIN TRY

MERGE INTO [Objects_Views_Properties] AS Target
USING (VALUES
  (N'Articulo',N'ArticuloDefaultList',N'Articulo',N'CodBarras',N'Articulo',2,N'Cod. Barras',1)
 ,(N'Articulo',N'ArticuloDefaultList',N'Articulo',N'Descrip',N'Articulo',1,N'Descripción',1)
 ,(N'Articulo',N'ArticuloDefaultList',N'Articulo',N'IdArticulo',N'Articulo',0,N'Id Artículo',1)
 ,(N'Articulo',N'ArticuloDefaultList',N'Articulo',N'IdFamilia',N'Articulo',3,N'Familia',1)
 ,(N'Articulo',N'ArticuloDefaultList',N'Articulo',N'IdIva',N'Articulo',4,N'Tipo IVA',1)
 ,(N'Articulo',N'ArticuloDefaultList',N'Articulo',N'P_Departamento',N'Articulo',5,N'Departamento',1)
 ,(N'ControlCalidad',N'ControlCalidadDefaultList',N'ControlCalidad',N'Descrip',N'ControlCalidad',1,N'Descrip',1)
 ,(N'ControlCalidad',N'ControlCalidadDefaultList',N'ControlCalidad',N'IdControlCalidad',N'ControlCalidad',0,N'IdControlCalidad_1',1)
 ,(N'Objeto_Imagenes',N'Objeto_ImagenesDefaultList',N'Objeto_Imagenes',N'Descrip',N'Objeto_Imagenes',3,N'Descrip',1)
 ,(N'Objeto_Imagenes',N'Objeto_ImagenesDefaultList',N'Objeto_Imagenes',N'IdDocObjeto',N'Objeto_Imagenes',2,N'IdDocObjeto_1',1)
 ,(N'Objeto_Imagenes',N'Objeto_ImagenesDefaultList',N'Objeto_Imagenes',N'NombreFichero',N'Objeto_Imagenes',1,N'NombreFichero_1',1)
 ,(N'Objeto_Imagenes',N'Objeto_ImagenesDefaultList',N'Objeto_Imagenes',N'Objeto',N'Objeto_Imagenes',0,N'Objeto_1',1)
 ,(N'Objeto_Imagenes',N'Objeto_ImagenesDefaultList',N'Objeto_Imagenes',N'Principal',N'Objeto_Imagenes',4,N'Principal',1)
 ,(N'Pedido',N'PedidoDefaultList',N'Pedido',N'Articulo',N'Pedido',4,N'Articulo',1)
 ,(N'Pedido',N'PedidoDefaultList',N'Pedido',N'Fecha',N'Pedido',0,N'Fecha',1)
 ,(N'Pedido',N'PedidoDefaultList',N'Pedido',N'FechaSalida',N'Pedido',2,N'FechaSalida',1)
 ,(N'Pedido',N'PedidoDefaultList',N'Pedido',N'IdCliente',N'Pedido',1,N'IdCliente',1)
 ,(N'Pedido',N'PedidoDefaultList',N'Pedido',N'IdEstado',N'Pedido',5,N'IdEstado',1)
 ,(N'Pedido',N'PedidoDefaultList',N'Pedido',N'P_Departamento',N'Pedido',3,N'Departamento',1)
 ,(N'Precios_Cliente',N'Precios_ClienteDefaultList',N'Precios_Cliente',N'Descrip',N'Precios_Cliente',1,N'Descrip',1)
 ,(N'Precios_Cliente',N'Precios_ClienteDefaultList',N'Precios_Cliente',N'IdLista',N'Precios_Cliente',0,N'IdLista_1',1)
 ,(N'Precios_Cliente',N'Precios_ClienteDefaultList',N'Precios_Cliente',N'IdMoneda',N'Precios_Cliente',2,N'IdMoneda',1)
 ,(N'Precios_Clientes_Articulo',N'Precios_Clientes_ArticuloDefaultList',N'Precios_Clientes_Articulo',N'Descuento1',N'Precios_Clientes_Articulo',3,N'Dto1',1)
 ,(N'Precios_Clientes_Articulo',N'Precios_Clientes_ArticuloDefaultList',N'Precios_Clientes_Articulo',N'DesdeUnidades',N'Precios_Clientes_Articulo',1,N'Desde unid.',1)
 ,(N'Precios_Clientes_Articulo',N'Precios_Clientes_ArticuloDefaultList',N'Precios_Clientes_Articulo',N'IdLista',N'Precios_Clientes_Articulo',0,N'Id Lista',1)
 ,(N'Precios_Clientes_Articulo',N'Precios_Clientes_ArticuloDefaultList',N'Precios_Clientes_Articulo',N'Precio',N'Precios_Clientes_Articulo',2,N'Precio',1)
 ,(N'Precios_Prov',N'Precios_ProvDefaultList',N'Precios_Prov',N'Descrip',N'Precios_Prov',1,N'Lista',1)
 ,(N'Precios_Prov',N'Precios_ProvDefaultList',N'Precios_Prov',N'IdLista',N'Precios_Prov',0,N'Id_Lista',1)
 ,(N'Precios_Prov',N'Precios_ProvDefaultList',N'Precios_Prov',N'IdMoneda',N'Precios_Prov',2,N'Moneda',1)
 ,(N'Precios_Prov_Articulo',N'Precios_Prov_ArticuloDefaultList',N'Precios_Prov_Articulo',N'Descuento1',N'Precios_Prov_Articulo',3,N'Dto1',1)
 ,(N'Precios_Prov_Articulo',N'Precios_Prov_ArticuloDefaultList',N'Precios_Prov_Articulo',N'DesdeUnidades',N'Precios_Prov_Articulo',1,N'DesdeUnid',1)
 ,(N'Precios_Prov_Articulo',N'Precios_Prov_ArticuloDefaultList',N'Precios_Prov_Articulo',N'IdLista',N'Precios_Prov_Articulo',0,N'IdLista_1',1)
 ,(N'Precios_Prov_Articulo',N'Precios_Prov_ArticuloDefaultList',N'Precios_Prov_Articulo',N'Precio',N'Precios_Prov_Articulo',2,N'Precio',1)
 ,(N'Utillaje',N'UtillajeDefaultList',N'Utillaje',N'Descrip',N'Utillaje',1,N'Descrip',1)
 ,(N'Utillaje',N'UtillajeDefaultList',N'Utillaje',N'IdUtillaje',N'Utillaje',0,N'IdUtillaje_1',1)
) AS Source ([ObjectName],[ViewName],[ObjectPropertyName],[PropertyName],[ObjectPath],[Order],[Label],[OriginId])
ON (Target.[ObjectName] = Source.[ObjectName] AND Target.[ViewName] = Source.[ViewName] AND Target.[ObjectPropertyName] = Source.[ObjectPropertyName] AND Target.[PropertyName] = Source.[PropertyName])
WHEN MATCHED AND (
	NULLIF(Source.[ObjectPath], Target.[ObjectPath]) IS NOT NULL OR NULLIF(Target.[ObjectPath], Source.[ObjectPath]) IS NOT NULL OR 
	NULLIF(Source.[Order], Target.[Order]) IS NOT NULL OR NULLIF(Target.[Order], Source.[Order]) IS NOT NULL OR 
	NULLIF(Source.[Label], Target.[Label]) IS NOT NULL OR NULLIF(Target.[Label], Source.[Label]) IS NOT NULL OR 
	NULLIF(Source.[OriginId], Target.[OriginId]) IS NOT NULL OR NULLIF(Target.[OriginId], Source.[OriginId]) IS NOT NULL) THEN
 UPDATE SET
  [ObjectPath] = Source.[ObjectPath], 
  [Order] = Source.[Order], 
  [Label] = Source.[Label], 
  [OriginId] = Source.[OriginId]
WHEN NOT MATCHED BY TARGET THEN
 INSERT([ObjectName],[ViewName],[ObjectPropertyName],[PropertyName],[ObjectPath],[Order],[Label],[OriginId])
 VALUES(Source.[ObjectName],Source.[ViewName],Source.[ObjectPropertyName],Source.[PropertyName],Source.[ObjectPath],Source.[Order],Source.[Label],Source.[OriginId])
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





