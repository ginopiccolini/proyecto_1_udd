Algoritmo CalcularCostoProducto
	
	// Declaraci�n de las variables
	Definir opcion, cantidadArticulos, pesoPaquete, contadorProductos Como Entero
	Definir tipoProducto, destino, productoBuscado Como Caracter
	Definir precioOriginal, descuento, impuestos, descuentoPorCantidad, costoEnvio, costoFinal Como Real
	Definir tieneCupon, encontrado Como Logico 
	
	// Arreglos para almacenar productos vendidos
	Dimension productos[100], costos[100]
	contadorProductos = 0
	
	Repetir
		// Mostrando el men�
		Escribir " "
		Escribir "Men� de Opciones"
		Escribir "1. Venta de un nuevo producto"
		Escribir "2. Buscar un producto vendido"
		Escribir "3. Mostrar todos los productos vendidos"
		Escribir "4. Salir"
		Escribir " "
		Escribir "Seleccione una opci�n:"
		Leer opcion
		
		Segun opcion Hacer
				// Opci�n 1: Ingresar un nuevo producto
			1:
				Escribir "Ingrese el tipo de producto qu� se est� comprando:"
				Leer tipoProducto
				
				Escribir "Ingrese el precio del producto: $"
				Leer precioOriginal
				
				Escribir "Ingrese la cantidad de art�culos comprados:"
				Leer cantidadArticulos
				
				Si cantidadArticulos > 1 Entonces
					descuentoPorCantidad = precioOriginal * 0.05 // 5% de descuento por cantidad
				SiNo
					descuentoPorCantidad = 0
				Fin Si
				
				Escribir "Ingrese el peso del paquete en kg:"
				Leer pesoPaquete
				
				Escribir "Ingrese el destino del env�o (RM = (1), Regiones = (2), Internacional = (3):"
				Leer destino
				
				Segun destino Hacer
					"1":
						costoEnvio = 10 + (pesoPaquete * 5)
					"2":
						costoEnvio = 10 + (pesoPaquete * 10)
					"3":
						costoEnvio = 10 + (pesoPaquete * 15)
					De Otro Modo:
						Escribir "Destino no v�lido. No se puede calcular el costo de env�o."
						costoEnvio = 0
				Fin Segun
				
				Escribir "�Tiene el cliente un cup�n de descuento? (1 para s�, 0 para no):"
				Leer tieneCupon
				
				Si tieneCupon Entonces
					Escribir "Ingrese el porcentaje de descuento del cup�n:"
					Leer descuento
					descuento = precioOriginal * (descuento / 100)
				SiNo
					descuento = 0
				Fin Si
				
				Escribir "Ingrese el porcentaje de impuestos aplicable (IVA u otros):"
				Leer impuestos
				impuestos = precioOriginal * (impuestos / 100)
				
				costoFinal = (precioOriginal - descuento - descuentoPorCantidad) + impuestos + costoEnvio
				
				// Guardar el producto y su costo final en los arreglos
				productos[contadorProductos] = tipoProducto
				costos[contadorProductos] = costoFinal
				contadorProductos = contadorProductos + 1
				
				Escribir " "
				Escribir "Desglose del costo final del producto:"
				Escribir " "
				Escribir "El producto comprado es: ", tipoProducto
				Escribir "Precio original: $ ", precioOriginal
				Escribir "Descuento cup�n aplicado: $ ", descuento
				Escribir "Descuento por cantidad: $ ", descuentoPorCantidad
				Escribir " "
				Escribir "Costo de env�o: $ ", costoEnvio
				Escribir "IVA: $ ", impuestos
				Escribir " "
				Escribir "Costo final del producto IVA incluido: $ ", costoFinal
				
				// Opci�n 2: Buscar un producto vendido
			2:
				Escribir "Ingrese el nombre del producto que desea buscar:"
				Leer productoBuscado
				
				encontrado = Falso // Inicializar la variable aqu� antes de usarla
				
				Para i Desde 0 Hasta contadorProductos - 1 Con Paso 1 Hacer
					Si productos[i] = productoBuscado Entonces
						Escribir " "
						Escribir "Producto encontrado: ", productos[i], " con costo final de $", costos[i]
						encontrado = Verdadero
						
					Fin Si
				Fin Para
				
				Si No encontrado Entonces
					Escribir "Producto no encontrado en el registro."
				Fin Si
				
				// Opci�n 3: Mostrar todos los productos vendidos
			3:
				Si contadorProductos = 0 Entonces
					Escribir "No se han registrado productos vendidos."
				SiNo
					Escribir "Lista de productos vendidos:"
					Para i Desde 0 Hasta contadorProductos - 1 Con Paso 1 Hacer
						Escribir " "
						Escribir i + 1, ". ", productos[i], " - Costo final: $", costos[i]
					Fin Para
				Fin Si
				
				// Opci�n 4: Salir
			4:
				Escribir "Saliendo del programa..."
				
				// Opci�n inv�lida
			De Otro Modo:
				Escribir "Opci�n no v�lida. Por favor seleccione una opci�n v�lida."
		Fin Segun
		
		// Repetir hasta que el usuario elija salir
	Hasta Que opcion = 4
	
Fin Algoritmo
