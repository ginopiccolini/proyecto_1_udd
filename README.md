# proyecto_1_udd
proyecto de sistema de ventas en pseudocodigo

# Calcular Costo Producto

Este proyecto implementa un algoritmo para calcular el costo final de productos vendidos, considerando múltiples variables que afectan el precio. Además, permite registrar y gestionar ventas para posteriormente buscar y listar los productos vendidos.

## Descripción General

El algoritmo está diseñado para ejecutarse en PSeInt, un entorno educativo que facilita la enseñanza de algoritmos mediante pseudocódigo. A través de un menú interactivo, los usuarios pueden realizar diversas acciones relacionadas con la venta de productos.

## Características y Funcionalidades

### 1. Cálculo de Costos

El programa calcula el costo final de un producto teniendo en cuenta los siguientes factores:

- **Precio Original:** Precio base del producto.
- **Descuentos:**
  - **Por Cantidad:** Un 5% de descuento si se compran más de un artículo del mismo tipo.
  - **Cupón de Descuento:** Un descuento adicional aplicado si el cliente posee un cupón.
- **Impuestos:** Cálculo de IVA u otros impuestos sobre el precio original.
- **Costo de Envío:** Calculado en función del destino del envío (Región Metropolitana, Regiones, o Internacional) y el peso del paquete.

### 2. Gestión de Ventas

- **Registro de Productos Vendidos:** Almacena el tipo de producto y su costo final en arreglos.
- **Búsqueda de Productos:** Permite buscar un producto específico por su nombre y muestra el costo final si se encuentra en el registro.
- **Listado de Productos Vendidos:** Muestra un resumen de todos los productos vendidos, con sus costos finales.

## Estructura del Código

El código se organiza en un bucle principal que muestra un menú con varias opciones:

1. **Venta de un nuevo producto:** Solicita información sobre el producto, aplica los cálculos correspondientes y almacena el resultado.
2. **Buscar un producto vendido:** Permite al usuario buscar un producto específico en el registro.
3. **Mostrar todos los productos vendidos:** Lista todos los productos vendidos y sus costos finales.
4. **Salir:** Finaliza la ejecución del programa.

### Sintaxis Utilizada

El algoritmo emplea la **sintaxis de camelCase** para nombrar variables y procedimientos, una práctica común en programación que mejora la legibilidad del código al indicar el comienzo de cada nueva palabra en mayúsculas después de la primera.

### Variables Utilizadas

- **Enteras:** `opcion`, `cantidadArticulos`, `pesoPaquete`, `contadorProductos`
- **Carácter:** `tipoProducto`, `destino`, `productoBuscado`
- **Reales:** `precioOriginal`, `descuento`, `impuestos`, `descuentoPorCantidad`, `costoEnvio`, `costoFinal`
- **Lógicas:** `tieneCupon`, `encontrado`

### Arreglos

- **`productos[100]`**: Arreglo para almacenar los nombres de los productos vendidos.
- **`costos[100]`**: Arreglo para almacenar el costo final de cada producto vendido.

## Requisitos

- **PSeInt:** Este algoritmo debe ejecutarse en PSeInt, un software educativo para la enseñanza de algoritmos mediante pseudocódigo.

## Ejecución

Para ejecutar este algoritmo, abre el archivo en PSeInt y sigue las instrucciones que se muestran en el menú para realizar las diferentes acciones.

## Autor

- [Gino Piccolini]


