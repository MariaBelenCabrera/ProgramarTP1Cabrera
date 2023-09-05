Algoritmo TPFinalCabreraMariaBelen
	
	//Una tienda de remeras* (v4) que requiere: saludo inicial al ingresar un comprador detallando horarios de atención. 
	//Requiere tener un catalogo base de ropa disponible que el comprador pueda navegar por tipo de ropa o talle. 
	//Requiere ademas un menu para comprador y vendedor por separado.
	
	//primero se tiene que crear el catalogo por vez primera que la vendedora informó cuando se creo el programa
	//Se recortó el stock para que sea viable en un ejercicio rapido en futuras versiones se veria de ampliar la matriz
	
	//se separó la forma de escribir el STOCK en un archivo nuevo para probarlo rapidamente//
	//se uso carga manual de datos// //v6.2 ya funciona menu del vendedor opcion 1
	
	Definir Stock Como Caracter
	dimension Stock[20,4]
	
	//Stock[fila i, columna j]//
	//primero los tipos de remeras, se repiten porque hay varios talles//
	
	Stock[1, 1]<-"Remera Rolling Stones"
	Stock[2, 1]<-"Remera Rolling Stones"
	Stock[3, 1]<-"Remera Rolling Stones"
	Stock[4, 1]<-"Remera Rolling Stones"
	Stock[5, 1]<-"Remera Rolling Stones"
	Stock[6, 1]<-"Remeras Messi Campeón"
	Stock[7, 1]<-"Remeras Messi Campeón"
	Stock[8, 1]<-"Remeras Messi Campeón"
	Stock[9, 1]<-"Remeras Messi Campeón"
	Stock[10, 1]<-"Remeras Messi Campeón"
	Stock[11, 1]<-"Remera Harry Potter"
	Stock[12, 1]<-"Remera Harry Potter"
	Stock[13, 1]<-"Remera Harry Potter"
	Stock[14, 1]<-"Remera Harry Potter"
	Stock[15, 1]<-"Remera Harry Potter"
	Stock[16, 1]<-"Remera Jackson Wang"
	Stock[17, 1]<-"Remera Jackson Wang"
	Stock[18, 1]<-"Remera Jackson Wang"
	Stock[19, 1]<-"Remera Jackson Wang"
	Stock[20, 1]<-"Remera Jackson Wang"
	
	//ahora los talles en la columna j2//
	
	Stock[1,2]<-"S"
	Stock[2,2]<-"M"
	Stock[3,2]<-"L"
	Stock[4,2]<-"XL"
	Stock[5,2]<-"XXL"
	Stock[6,2]<-"S"
	Stock[7,2]<-"M"
	Stock[8,2]<-"L"
	Stock[9,2]<-"XL"
	Stock[10,2]<-"XXL"
	Stock[11,2]<-"S"
	Stock[12,2]<-"M"
	Stock[13,2]<-"L"
	Stock[14,2]<-"XL"
	Stock[15,2]<-"XXL"
	Stock[16,2]<-"S"
	Stock[17,2]<-"M"
	Stock[18,2]<-"L"
	Stock[19,2]<-"XL"
	Stock[20,2]<-"XXL"
	
	//ahora las cantidades de cada remera y cada talle en columna j3//
	
	Stock[1,3]<-"3"
	Stock[2,3]<-"4"
	Stock[3,3]<-"3"
	Stock[4,3]<-"2"
	Stock[5,3]<-"1"
	Stock[6,3]<-"3"
	Stock[7,3]<-"3"
	Stock[8,3]<-"4"
	Stock[9,3]<-"3"
	Stock[10,3]<-"0"
	Stock[11,3]<-"1"
	Stock[12,3]<-"2"
	Stock[13,3]<-"1"
	Stock[14,3]<-"3"
	Stock[15,3]<-"3"
	Stock[16,3]<-"4"
	Stock[17,3]<-"3"
	Stock[18,3]<-"0"
	Stock[19,3]<-"2"
	Stock[20,3]<-"1"
	
	//ahora el precio en columna j4//
	Stock[1,4]<-"5500"
	Stock[2,4]<-"5500"
	Stock[3,4]<-"5500"
	Stock[4,4]<-"5500"
	Stock[5,4]<-"5500"
	Stock[6,4]<-"6000"
	Stock[7,4]<-"6000"
	Stock[8,4]<-"6000"
	Stock[9,4]<-"6000"
	Stock[10,4]<-"6000"
	Stock[11,4]<-"4700"
	Stock[12,4]<-"4700"
	Stock[13,4]<-"4700"
	Stock[14,4]<-"4700"
	Stock[15,4]<-"4700"
	Stock[16,4]<-"7000"
	Stock[17,4]<-"7000"
	Stock[18,4]<-"7000"
	Stock[19,4]<-"7000"
	Stock[20,4]<-"7000"
	
	//con el stock básico cargado se continua con el menu//
	
	
	Escribir "Hola buenos días."
	
	Escribir "Es ústed el vendedor?"
	Escribir "1) Sí"
	Escribir "2) No"
	Repetir
		Escribir "Recuerde que solo puede seleccionar 1 o 2."
		Leer VendUsua
		Si VendUsua<>1 y VendUsua<>2
			Escribir "Error. Debe seleccionar 1 o 2."
		FinSi
	Hasta Que VendUsua=1 o VendUsua=2
	
	Segun VendUsua Hacer //se asigna una contraseña para que los datos internos solo los pueda ver el vendedor
		1:
			Escribir "ingrese la contraseña:"
			Leer Pass
			Si Pass=123456 Entonces
				Escribir "¡¡Bienvenida Dai!!"
				Escribir "Presiona cualquier tecla para entrar a tu menu"
				Esperar Tecla
				
				Repetir
					Borrar Pantalla
					Escribir "Selecciona la acción que quieres realizar"
					Escribir "1) Ver el listado de disponibles"
					Escribir "2) Modificar el listado de disponibles"
					Escribir "3) Salir"
					Leer MenuVendedor
					
					Segun MenuVendedor Hacer
						1:
							Escribir "Se muestra a continuación el Stock disponible, detallando Tipo de remera, Talle, Cantidad y Precio"
							
							Para i<-1 Hasta 20 Con Paso 1 Hacer
								Para j<-1 Hasta 4 Con Paso 1 Hacer
									Escribir Stock[i,j] 
								Fin Para
								Escribir "---------" 
							fin para
							
							Escribir "Terminó el listado del Stock disponible"
							Escribir "Presione cualquier tecla para regresar al Menu anterior"
							Esperar Tecla
							
						2: //se realizo la prueba para editar stock de forma separada y luego se inserto al pseint principal
							
							Para i<-1 Hasta 20 con paso 1 Hacer
								Escribir "Modificaremos el listado original deberá ingresar las caracteristicas de cada articulo en el siguiente orden:"
								Escribir "Tipo de remera, Talle, Cantidad y Precio"
								para j<-1 hasta 4 con paso 4 Hacer
									Escribir "Ingrese el Tipo de Remera del N°",i," ."
									leer ModStock
									Stock[i,j]<- ModStock
									Para j<-2 hasta 4 con paso 4 Hacer
										Escribir "Ingrese el Talle del N°",i," ."
										leer ModStock
										Stock[i,j]<- ModStock
										Para j<-3 hasta 4 con paso 4 Hacer
											Escribir "Ingrese el Cantidad de Remeras del N°",i," ."
											leer ModStock
											Stock[i,j]<- ModStock
											Para j<-4 hasta 4 con paso 4 Hacer
												Escribir "Ingrese el Precio del N°",i," ."
												leer ModStock
												Stock[i,j]<- ModStock
												
											FinPara
										FinPara
									FinPara
								FinPara
							FinPara
							
							Escribir "Presione cualquier tecla y se detallará a continuacion el listado modificado"
							Escribir "------------------"
							Esperar Tecla
							
							para i<-1 Hasta 20 con paso 1 Hacer
								para j<-1 hasta 4 con paso 1 Hacer
									Escribir Stock[i,j]
								FinPara
								Escribir "------------------"
							FinPara
							
							Escribir "Terminó el listado del Stock Modificado"
							Escribir "Presione cualquier tecla para regresar al Menu anterior"
							Esperar Tecla
							
						3:
							Escribir "¡Saludos Dai! que tengas muy buen día."
						De Otro Modo:
							Escribir "Debe elegir una de las opciones del menu"
					Fin Segun
				Hasta Que MenuVendedor=3
			SiNo
				Escribir "Error de contraseña: Acceso denegado."
				Escribir "Debe reiniciar para salir."
			Fin Si
			
		2:
			
			Repetir
				Borrar Pantalla
				
				Escribir "¡Hola cliente! Bienvenido a Tiendas Dai."
				Escribir "Te recordamos que la tienda digital solo funciona"
				Escribir "en el horario de 9:00 a 21:00."
				Escribir "La atención en persona en nuestro local es de 10:00 a 17:00 de lunes a viernes"
				Escribir "Presiona cualquier tecla para continuar con la compra"
				Esperar Tecla
				Borrar Pantalla
				
				//v8 se saca el primer menu de talles y remeras para unificarlo en futuras versiones podria agregarse si hay tiempo
				Escribir "Estas son nuestras remeras disponibles"
				Escribir "¿Que remera querias comprar?"
				Escribir "1) Remera de ",Stock[1, 1],"."
				Escribir "2) Remera de ",Stock[6, 1],"."
				Escribir "3) Remera de ",Stock[11, 1],"."
				Escribir "4) Remera de ",Stock[16, 1],"."
				Escribir "5) SALIR "
				
				Repetir
					Escribir "Recuerde que solo puede seleccionar desde el 1 al 5."
					Leer CompraPorRemera
					Si CompraPorRemera<1 y CompraPorRemera>5
						Escribir "Error. Debe seleccionar desde el 1 al 5."
					FinSi
				Hasta Que CompraPorRemera>=1 y CompraPorRemera<=5
				
				Segun CompraPorRemera Hacer
					1:
						Escribir "Remeras de ",Stock[1, 1],"."
						Escribir "------------------------------"
						Escribir "¿Que talle querias consultar?"
						Escribir "1) S"
						Escribir "2) M"
						Escribir "3) L"
						Escribir "4) XL"
						Escribir "5) XXL"
						
						Repetir
							Escribir "Recuerde que solo puede seleccionar desde el 1 al 5."
							Leer CompraPorTalle
							Si CompraPorTalle<1 y CompraPorTalle>5
								Escribir "Error. Debe seleccionar desde el 1 al 5."
							FinSi
						Hasta Que CompraPorTalle>=1 y CompraPorTalle<=5
						
						Segun CompraPorTalle Hacer
							1:
								StockTemporal<-ConvertirANumero(Stock[1,3])
								
								Escribir "Hay ",StockTemporal," remeras disponibles a $",Stock[1,4]," cada una."
								Escribir "Recuerde que solo puede seleccionar desde el 1 al ",StockTemporal,"."
								Escribir "¿Cuantas remeras quiere comprar?"
								Leer CompraUsuario
								
								Repetir
									Si CompraUsuario>StockTemporal Entonces
										Escribir "No puede superar la cantidad de ",StockTemporal,"."
										Leer CompraUsuario
									Fin Si
								Hasta Que CompraUsuario<=StockTemporal
								
								PrecioTemporal<-ConvertirANumero(Stock[1,4])
								TotalPago=(PrecioTemporal*CompraUsuario)
								Escribir "Muchas gracias por su compra"
								Escribir "Debe abonar un total de $",TotalPago,"."
								
								NuevoStock<-StockTemporal-CompraUsuario
								Stock[1,3]<-ConvertirATexto(NuevoStock)
								
								Escribir "Presione cualquier tecla para regresar al Menu anterior"
								Esperar Tecla
							2:
								StockTemporal<-ConvertirANumero(Stock[2,3])
								
								Escribir "Hay ",StockTemporal," remeras disponibles a $",Stock[2,4]," cada una."
								Escribir "Recuerde que solo puede seleccionar desde el 1 al ",StockTemporal,"."
								Escribir "¿Cuantas remeras quiere comprar?"
								Leer CompraUsuario
								
								Repetir
									Si CompraUsuario>StockTemporal Entonces
										Escribir "No puede superar la cantidad de ",StockTemporal,"."
										Leer CompraUsuario
									Fin Si
								Hasta Que CompraUsuario<=StockTemporal
								
								PrecioTemporal<-ConvertirANumero(Stock[2,4])
								TotalPago=(PrecioTemporal*CompraUsuario)
								Escribir "Muchas gracias por su compra"
								Escribir "Debe abonar un total de $",TotalPago,"."
								
								NuevoStock<-StockTemporal-CompraUsuario
								Stock[2,3]<-ConvertirATexto(NuevoStock)
								
								Escribir "Presione cualquier tecla para regresar al Menu anterior"
								Esperar Tecla
								
								
							3:
								StockTemporal<-ConvertirANumero(Stock[3,3])
								
								Escribir "Hay ",StockTemporal," remeras disponibles a $",Stock[3,4]," cada una."
								Escribir "Recuerde que solo puede seleccionar desde el 1 al ",StockTemporal,"."
								Escribir "¿Cuantas remeras quiere comprar?"
								Leer CompraUsuario
								
								Repetir
									Si CompraUsuario>StockTemporal Entonces
										Escribir "No puede superar la cantidad de ",StockTemporal,"."
										Leer CompraUsuario
									Fin Si
								Hasta Que CompraUsuario<=StockTemporal
								
								PrecioTemporal<-ConvertirANumero(Stock[3,4])
								TotalPago=(PrecioTemporal*CompraUsuario)
								Escribir "Muchas gracias por su compra"
								Escribir "Debe abonar un total de $",TotalPago,"."
								
								NuevoStock<-StockTemporal-CompraUsuario
								Stock[3,3]<-ConvertirATexto(NuevoStock)
								
								Escribir "Presione cualquier tecla para regresar al Menu anterior"
								Esperar Tecla
								
							4:
								StockTemporal<-ConvertirANumero(Stock[4,3])
								
								Escribir "Hay ",StockTemporal," remeras disponibles a $",Stock[4,4]," cada una."
								Escribir "Recuerde que solo puede seleccionar desde el 1 al ",StockTemporal,"."
								Escribir "¿Cuantas remeras quiere comprar?"
								Leer CompraUsuario
								
								Repetir
									Si CompraUsuario>StockTemporal Entonces
										Escribir "No puede superar la cantidad de ",StockTemporal,"."
										Leer CompraUsuario
									Fin Si
								Hasta Que CompraUsuario<=StockTemporal
								
								PrecioTemporal<-ConvertirANumero(Stock[4,4])
								TotalPago=(PrecioTemporal*CompraUsuario)
								Escribir "Muchas gracias por su compra"
								Escribir "Debe abonar un total de $",TotalPago,"."
								
								NuevoStock<-StockTemporal-CompraUsuario
								Stock[4,3]<-ConvertirATexto(NuevoStock)
								
								Escribir "Presione cualquier tecla para regresar al Menu anterior"
								Esperar Tecla
								
							5:	
								StockTemporal<-ConvertirANumero(Stock[5,3])
								
								Escribir "Hay ",StockTemporal," remeras disponibles a $",Stock[5,4]," cada una."
								Escribir "Recuerde que solo puede seleccionar desde el 1 al ",StockTemporal,"."
								Escribir "¿Cuantas remeras quiere comprar?"
								Leer CompraUsuario
								
								Repetir
									Si CompraUsuario>StockTemporal Entonces
										Escribir "No puede superar la cantidad de ",StockTemporal,"."
										Leer CompraUsuario
									Fin Si
								Hasta Que CompraUsuario<=StockTemporal
								
								PrecioTemporal<-ConvertirANumero(Stock[5,4])
								TotalPago=(PrecioTemporal*CompraUsuario)
								Escribir "Muchas gracias por su compra"
								Escribir "Debe abonar un total de $",TotalPago,"."
								
								NuevoStock<-StockTemporal-CompraUsuario
								Stock[5,3]<-ConvertirATexto(NuevoStock)
								
								Escribir "Presione cualquier tecla para regresar al Menu anterior"
								Esperar Tecla
						Fin Segun
						
						
						
					2:
						Escribir "Remeras de ",Stock[6, 1],"."
						Escribir "------------------------------"
						Escribir "¿Que talle querias consultar?"
						Escribir "1) S"
						Escribir "2) M"
						Escribir "3) L"
						Escribir "4) XL"
						Escribir "5) XXL"
						
						Repetir
							Escribir "Recuerde que solo puede seleccionar desde el 1 al 5."
							Leer CompraPorTalle
							Si CompraPorTalle<1 y CompraPorTalle>5
								Escribir "Error. Debe seleccionar desde el 1 al 5."
							FinSi
						Hasta Que CompraPorTalle>=1 y CompraPorTalle<=5
						
						Segun CompraPorTalle Hacer
							1:
								StockTemporal<-ConvertirANumero(Stock[6,3])
								
								Escribir "Hay ",StockTemporal," remeras disponibles a $",Stock[6,4]," cada una."
								Escribir "Recuerde que solo puede seleccionar desde el 1 al ",StockTemporal,"."
								Escribir "¿Cuantas remeras quiere comprar?"
								Leer CompraUsuario
								
								Repetir
									Si CompraUsuario>StockTemporal Entonces
										Escribir "No puede superar la cantidad de ",StockTemporal,"."
										Leer CompraUsuario
									Fin Si
								Hasta Que CompraUsuario<=StockTemporal
								
								PrecioTemporal<-ConvertirANumero(Stock[6,4])
								TotalPago=(PrecioTemporal*CompraUsuario)
								Escribir "Muchas gracias por su compra"
								Escribir "Debe abonar un total de $",TotalPago,"."
								
								NuevoStock<-StockTemporal-CompraUsuario
								Stock[6,3]<-ConvertirATexto(NuevoStock)
								
								Escribir "Presione cualquier tecla para regresar al Menu anterior"
								Esperar Tecla
							2:
								StockTemporal<-ConvertirANumero(Stock[7,3])
								
								Escribir "Hay ",StockTemporal," remeras disponibles a $",Stock[7,4]," cada una."
								Escribir "Recuerde que solo puede seleccionar desde el 1 al ",StockTemporal,"."
								Escribir "¿Cuantas remeras quiere comprar?"
								Leer CompraUsuario
								
								Repetir
									Si CompraUsuario>StockTemporal Entonces
										Escribir "No puede superar la cantidad de ",StockTemporal,"."
										Leer CompraUsuario
									Fin Si
								Hasta Que CompraUsuario<=StockTemporal
								
								PrecioTemporal<-ConvertirANumero(Stock[7,4])
								TotalPago=(PrecioTemporal*CompraUsuario)
								Escribir "Muchas gracias por su compra"
								Escribir "Debe abonar un total de $",TotalPago,"."
								
								NuevoStock<-StockTemporal-CompraUsuario
								Stock[7,3]<-ConvertirATexto(NuevoStock)
								
								Escribir "Presione cualquier tecla para regresar al Menu anterior"
								Esperar Tecla
								
								
							3:
								StockTemporal<-ConvertirANumero(Stock[8,3])
								
								Escribir "Hay ",StockTemporal," remeras disponibles a $",Stock[8,4]," cada una."
								Escribir "Recuerde que solo puede seleccionar desde el 1 al ",StockTemporal,"."
								Escribir "¿Cuantas remeras quiere comprar?"
								Leer CompraUsuario
								
								Repetir
									Si CompraUsuario>StockTemporal Entonces
										Escribir "No puede superar la cantidad de ",StockTemporal,"."
										Leer CompraUsuario
									Fin Si
								Hasta Que CompraUsuario<=StockTemporal
								
								PrecioTemporal<-ConvertirANumero(Stock[8,4])
								TotalPago=(PrecioTemporal*CompraUsuario)
								Escribir "Muchas gracias por su compra"
								Escribir "Debe abonar un total de $",TotalPago,"."
								
								NuevoStock<-StockTemporal-CompraUsuario
								Stock[8,3]<-ConvertirATexto(NuevoStock)
								
								Escribir "Presione cualquier tecla para regresar al Menu anterior"
								Esperar Tecla
								
							4:
								StockTemporal<-ConvertirANumero(Stock[9,3])
								
								Escribir "Hay ",StockTemporal," remeras disponibles a $",Stock[9,4]," cada una."
								Escribir "Recuerde que solo puede seleccionar desde el 1 al ",StockTemporal,"."
								Escribir "¿Cuantas remeras quiere comprar?"
								Leer CompraUsuario
								
								Repetir
									Si CompraUsuario>StockTemporal Entonces
										Escribir "No puede superar la cantidad de ",StockTemporal,"."
										Leer CompraUsuario
									Fin Si
								Hasta Que CompraUsuario<=StockTemporal
								
								PrecioTemporal<-ConvertirANumero(Stock[9,4])
								TotalPago=(PrecioTemporal*CompraUsuario)
								Escribir "Muchas gracias por su compra"
								Escribir "Debe abonar un total de $",TotalPago,"."
								
								NuevoStock<-StockTemporal-CompraUsuario
								Stock[9,3]<-ConvertirATexto(NuevoStock)
								
								Escribir "Presione cualquier tecla para regresar al Menu anterior"
								Esperar Tecla
								
							5:
								StockTemporal<-ConvertirANumero(Stock[10,3])
								
								Escribir "Hay ",StockTemporal," remeras disponibles a $",Stock[10,4]," cada una."
								Escribir "Recuerde que solo puede seleccionar desde el 1 al ",StockTemporal,"."
								Escribir "¿Cuantas remeras quiere comprar?"
								Leer CompraUsuario
								
								Repetir
									Si CompraUsuario>StockTemporal Entonces
										Escribir "No puede superar la cantidad de ",StockTemporal,"."
										Leer CompraUsuario
									Fin Si
								Hasta Que CompraUsuario<=StockTemporal
								
								PrecioTemporal<-ConvertirANumero(Stock[10,4])
								TotalPago=(PrecioTemporal*CompraUsuario)
								Escribir "Muchas gracias por su compra"
								Escribir "Debe abonar un total de $",TotalPago,"."
								
								NuevoStock<-StockTemporal-CompraUsuario
								Stock[10,3]<-ConvertirATexto(NuevoStock)
								
								Escribir "Presione cualquier tecla para regresar al Menu anterior"
								Esperar Tecla
								
						Fin Segun
						
						
					3:
						Escribir "Remeras de ",Stock[11, 1],"."
						Escribir "------------------------------"
						Escribir "¿Que talle querias consultar?"
						Escribir "1) S"
						Escribir "2) M"
						Escribir "3) L"
						Escribir "4) XL"
						Escribir "5) XXL"
						
						Repetir
							Escribir "Recuerde que solo puede seleccionar desde el 1 al 5."
							Leer CompraPorTalle
							Si CompraPorTalle<1 y CompraPorTalle>5
								Escribir "Error. Debe seleccionar desde el 1 al 5."
							FinSi
						Hasta Que CompraPorTalle>=1 y CompraPorTalle<=5
						
						Segun CompraPorTalle Hacer
							1:
								StockTemporal<-ConvertirANumero(Stock[11,3])
								
								Escribir "Hay ",StockTemporal," remeras disponibles a $",Stock[11,4]," cada una."
								Escribir "Recuerde que solo puede seleccionar desde el 1 al ",StockTemporal,"."
								Escribir "¿Cuantas remeras quiere comprar?"
								Leer CompraUsuario
								
								Repetir
									Si CompraUsuario>StockTemporal Entonces
										Escribir "No puede superar la cantidad de ",StockTemporal,"."
										Leer CompraUsuario
									Fin Si
								Hasta Que CompraUsuario<=StockTemporal
								
								PrecioTemporal<-ConvertirANumero(Stock[11,4])
								TotalPago=(PrecioTemporal*CompraUsuario)
								Escribir "Muchas gracias por su compra"
								Escribir "Debe abonar un total de $",TotalPago,"."
								
								NuevoStock<-StockTemporal-CompraUsuario
								Stock[11,3]<-ConvertirATexto(NuevoStock)
								
								Escribir "Presione cualquier tecla para regresar al Menu anterior"
								Esperar Tecla
							2:
								StockTemporal<-ConvertirANumero(Stock[12,3])
								
								Escribir "Hay ",StockTemporal," remeras disponibles a $",Stock[12,4]," cada una."
								Escribir "Recuerde que solo puede seleccionar desde el 1 al ",StockTemporal,"."
								Escribir "¿Cuantas remeras quiere comprar?"
								Leer CompraUsuario
								
								Repetir
									Si CompraUsuario>StockTemporal Entonces
										Escribir "No puede superar la cantidad de ",StockTemporal,"."
										Leer CompraUsuario
									Fin Si
								Hasta Que CompraUsuario<=StockTemporal
								
								PrecioTemporal<-ConvertirANumero(Stock[12,4])
								TotalPago=(PrecioTemporal*CompraUsuario)
								Escribir "Muchas gracias por su compra"
								Escribir "Debe abonar un total de $",TotalPago,"."
								
								NuevoStock<-StockTemporal-CompraUsuario
								Stock[12,3]<-ConvertirATexto(NuevoStock)
								
								Escribir "Presione cualquier tecla para regresar al Menu anterior"
								Esperar Tecla
								
								
							3:
								StockTemporal<-ConvertirANumero(Stock[13,3])
								
								Escribir "Hay ",StockTemporal," remeras disponibles a $",Stock[13,4]," cada una."
								Escribir "Recuerde que solo puede seleccionar desde el 1 al ",StockTemporal,"."
								Escribir "¿Cuantas remeras quiere comprar?"
								Leer CompraUsuario
								
								Repetir
									Si CompraUsuario>StockTemporal Entonces
										Escribir "No puede superar la cantidad de ",StockTemporal,"."
										Leer CompraUsuario
									Fin Si
								Hasta Que CompraUsuario<=StockTemporal
								
								PrecioTemporal<-ConvertirANumero(Stock[13,4])
								TotalPago=(PrecioTemporal*CompraUsuario)
								Escribir "Muchas gracias por su compra"
								Escribir "Debe abonar un total de $",TotalPago,"."
								
								NuevoStock<-StockTemporal-CompraUsuario
								Stock[13,3]<-ConvertirATexto(NuevoStock)
								
								Escribir "Presione cualquier tecla para regresar al Menu anterior"
								Esperar Tecla
								
							4:
								StockTemporal<-ConvertirANumero(Stock[14,3])
								
								Escribir "Hay ",StockTemporal," remeras disponibles a $",Stock[14,4]," cada una."
								Escribir "Recuerde que solo puede seleccionar desde el 1 al ",StockTemporal,"."
								Escribir "¿Cuantas remeras quiere comprar?"
								Leer CompraUsuario
								
								Repetir
									Si CompraUsuario>StockTemporal Entonces
										Escribir "No puede superar la cantidad de ",StockTemporal,"."
										Leer CompraUsuario
									Fin Si
								Hasta Que CompraUsuario<=StockTemporal
								
								PrecioTemporal<-ConvertirANumero(Stock[14,4])
								TotalPago=(PrecioTemporal*CompraUsuario)
								Escribir "Muchas gracias por su compra"
								Escribir "Debe abonar un total de $",TotalPago,"."
								
								NuevoStock<-StockTemporal-CompraUsuario
								Stock[14,3]<-ConvertirATexto(NuevoStock)
								
								Escribir "Presione cualquier tecla para regresar al Menu anterior"
								Esperar Tecla
							5:	
								StockTemporal<-ConvertirANumero(Stock[15,3])
								
								Escribir "Hay ",StockTemporal," remeras disponibles a $",Stock[15,4]," cada una."
								Escribir "Recuerde que solo puede seleccionar desde el 1 al ",StockTemporal,"."
								Escribir "¿Cuantas remeras quiere comprar?"
								Leer CompraUsuario
								
								Repetir
									Si CompraUsuario>StockTemporal Entonces
										Escribir "No puede superar la cantidad de ",StockTemporal,"."
										Leer CompraUsuario
									Fin Si
								Hasta Que CompraUsuario<=StockTemporal
								
								PrecioTemporal<-ConvertirANumero(Stock[15,4])
								TotalPago=(PrecioTemporal*CompraUsuario)
								Escribir "Muchas gracias por su compra"
								Escribir "Debe abonar un total de $",TotalPago,"."
								
								NuevoStock<-StockTemporal-CompraUsuario
								Stock[15,3]<-ConvertirATexto(NuevoStock)
								
								Escribir "Presione cualquier tecla para regresar al Menu anterior"
								Esperar Tecla
						Fin Segun
						
						
					4:
						Escribir "Remeras de ",Stock[17, 1],"."
						Escribir "------------------------------"
						Escribir "¿Que talle querias consultar?"
						Escribir "1) S"
						Escribir "2) M"
						Escribir "3) L"
						Escribir "4) XL"
						Escribir "5) XXL"
						
						Repetir
							Escribir "Recuerde que solo puede seleccionar desde el 1 al 5."
							Leer CompraPorTalle
							Si CompraPorTalle<1 y CompraPorTalle>5
								Escribir "Error. Debe seleccionar desde el 1 al 5."
							FinSi
						Hasta Que CompraPorTalle>=1 y CompraPorTalle<=5
						
						Segun CompraPorTalle Hacer
							1:
								StockTemporal<-ConvertirANumero(Stock[16,3])
								
								Escribir "Hay ",StockTemporal," remeras disponibles a $",Stock[16,4]," cada una."
								Escribir "Recuerde que solo puede seleccionar desde el 1 al ",StockTemporal,"."
								Escribir "¿Cuantas remeras quiere comprar?"
								Leer CompraUsuario
								
								Repetir
									Si CompraUsuario>StockTemporal Entonces
										Escribir "No puede superar la cantidad de ",StockTemporal,"."
										Leer CompraUsuario
									Fin Si
								Hasta Que CompraUsuario<=StockTemporal
								
								PrecioTemporal<-ConvertirANumero(Stock[16,4])
								TotalPago=(PrecioTemporal*CompraUsuario)
								Escribir "Muchas gracias por su compra"
								Escribir "Debe abonar un total de $",TotalPago,"."
								
								NuevoStock<-StockTemporal-CompraUsuario
								Stock[16,3]<-ConvertirATexto(NuevoStock)
								
								Escribir "Presione cualquier tecla para regresar al Menu anterior"
								Esperar Tecla
							2:
								StockTemporal<-ConvertirANumero(Stock[17,3])
								
								Escribir "Hay ",StockTemporal," remeras disponibles a $",Stock[17,4]," cada una."
								Escribir "Recuerde que solo puede seleccionar desde el 1 al ",StockTemporal,"."
								Escribir "¿Cuantas remeras quiere comprar?"
								Leer CompraUsuario
								
								Repetir
									Si CompraUsuario>StockTemporal Entonces
										Escribir "No puede superar la cantidad de ",StockTemporal,"."
										Leer CompraUsuario
									Fin Si
								Hasta Que CompraUsuario<=StockTemporal
								
								PrecioTemporal<-ConvertirANumero(Stock[17,4])
								TotalPago=(PrecioTemporal*CompraUsuario)
								Escribir "Muchas gracias por su compra"
								Escribir "Debe abonar un total de $",TotalPago,"."
								
								NuevoStock<-StockTemporal-CompraUsuario
								Stock[17,3]<-ConvertirATexto(NuevoStock)
								
								Escribir "Presione cualquier tecla para regresar al Menu anterior"
								Esperar Tecla
								
								
							3:
								StockTemporal<-ConvertirANumero(Stock[18,3])
								
								Escribir "Hay ",StockTemporal," remeras disponibles a $",Stock[18,4]," cada una."
								Escribir "Recuerde que solo puede seleccionar desde el 1 al ",StockTemporal,"."
								Escribir "¿Cuantas remeras quiere comprar?"
								Leer CompraUsuario
								
								Repetir
									Si CompraUsuario>StockTemporal Entonces
										Escribir "No puede superar la cantidad de ",StockTemporal,"."
										Leer CompraUsuario
									Fin Si
								Hasta Que CompraUsuario<=StockTemporal
								
								PrecioTemporal<-ConvertirANumero(Stock[18,4])
								TotalPago=(PrecioTemporal*CompraUsuario)
								Escribir "Muchas gracias por su compra"
								Escribir "Debe abonar un total de $",TotalPago,"."
								
								NuevoStock<-StockTemporal-CompraUsuario
								Stock[18,3]<-ConvertirATexto(NuevoStock)
								
								Escribir "Presione cualquier tecla para regresar al Menu anterior"
								Esperar Tecla
								
							4:
								StockTemporal<-ConvertirANumero(Stock[19,3])
								
								Escribir "Hay ",StockTemporal," remeras disponibles a $",Stock[19,4]," cada una."
								Escribir "Recuerde que solo puede seleccionar desde el 1 al ",StockTemporal,"."
								Escribir "¿Cuantas remeras quiere comprar?"
								Leer CompraUsuario
								
								Repetir
									Si CompraUsuario>StockTemporal Entonces
										Escribir "No puede superar la cantidad de ",StockTemporal,"."
										Leer CompraUsuario
									Fin Si
								Hasta Que CompraUsuario<=StockTemporal
								
								PrecioTemporal<-ConvertirANumero(Stock[19,4])
								TotalPago=(PrecioTemporal*CompraUsuario)
								Escribir "Muchas gracias por su compra"
								Escribir "Debe abonar un total de $",TotalPago,"."
								
								NuevoStock<-StockTemporal-CompraUsuario
								Stock[19,3]<-ConvertirATexto(NuevoStock)
								
								Escribir "Presione cualquier tecla para regresar al Menu anterior"
								Esperar Tecla
								
							5: StockTemporal<-ConvertirANumero(Stock[20,3])
								
								Escribir "Hay ",StockTemporal," remeras disponibles a $",Stock[20,4]," cada una."
								Escribir "Recuerde que solo puede seleccionar desde el 1 al ",StockTemporal,"."
								Escribir "¿Cuantas remeras quiere comprar?"
								Leer CompraUsuario
								
								Repetir
									Si CompraUsuario>StockTemporal Entonces
										Escribir "No puede superar la cantidad de ",StockTemporal,"."
										Leer CompraUsuario
									Fin Si
								Hasta Que CompraUsuario<=StockTemporal
								
								PrecioTemporal<-ConvertirANumero(Stock[20,4])
								TotalPago=(PrecioTemporal*CompraUsuario)
								Escribir "Muchas gracias por su compra"
								Escribir "Debe abonar un total de $",TotalPago,"."
								
								NuevoStock<-StockTemporal-CompraUsuario
								Stock[20,3]<-ConvertirATexto(NuevoStock)
								
								Escribir "Presione cualquier tecla para regresar al Menu anterior"
								Esperar Tecla	
								
						Fin Segun
						
				Fin Segun
			
			Hasta Que 	CompraPorRemera=5
			Escribir "Saludos! Vuelva pronto"
			
	Fin Segun
	
	
FinAlgoritmo
