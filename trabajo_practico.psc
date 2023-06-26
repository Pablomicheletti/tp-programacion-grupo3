Proceso trabajo_practico
	Definir reserva, dni, cancha, horario como real
	Definir leer_opcion Como Entero
	Dimension reserva[6,2]
	
	bienvenida(enter)
	
	Repetir
		menu_principal(opcion)
		
		Segun leer_opcion Hacer
			1:
				cargar_reserva(horario, dni, bandera)
			2:
				//busquedad_cliente()
			3:
				verificar_disponibilidad(disponible)
			4:
				//cancelar_reserva()
			5:
				Escribir "Saliendo del programa..."
			De Otro Modo:
				Escribir "Opcion incorrecta."
		Fin Segun
	Hasta Que leer_opcion = 5
FinProceso

//Bienvenida
SubProceso bienvenida(enter)
	Escribir "----------------------------------------"
	Escribir "-------------- Bienvenido --------------"
	Escribir "----------------------------------------"
	Escribir "Presione cualquier tecla para continuar."
	leer enter
FinSubProceso


//Menu Pincipal
SubProceso menu_principal(opcion)
	Escribir "------- Menú Principal -------"
	Escribir "1) Reservas de cancha."
	Escribir "2) Buscar reserva de clientes."
	Escribir "3) Ver disponibilidad de canchas."
	Escribir "4) Cancelar reserva."
	Escribir "5) Salir."
	leer leer_opcion
FinSubProceso


//OPCION 1
SubProceso cargar_reserva(dni Por Referencia,horario Por Referencia, bandera por referencia)
	
	Dimension  reserva[6,2]
	reserva[0,0]=15
	reserva[1,0]=16
	reserva[2,0]=17
	reserva[3,0]=18
	reserva[4,0]=19
	reserva[5,0]=20
	
	Repetir
		Repetir
			Escribir "1) Para reservar cancha 1."
			Leer cancha
			Si cancha<=0 o cancha>=2 Entonces
				Escribir "Numero de cancha incorrecto"
			Fin Si
		Mientras Que cancha <= 0 o cancha >= 2
		Escribir "Horarios disponibles"
		Escribir "1) 15:00"
		Escribir "2) 16:00"
		Escribir "3) 17:00"
		Escribir "4) 18:00"
		Escribir "5) 19:00"
		Escribir "6) 20:00"
		Leer horario
		
		Si horario < 1 o horario > 6 Entonces
			Escribir "Horario incorrecto. Inténtelo nuevamente."
		Fin Si
		
		Repetir
			Escribir "Ingresar un número de documento para reservar."
			Leer dni
			Si dni > 999999999 o dni < 10000000 Entonces
				Escribir "El dni ingresado es incorrecto. Intente nuevamente"
				Escribir ""
			Fin Si
		Hasta Que dni <= 999999999 y dni >= 10000000		
		bandera=falso
		Para j<-0 Hasta 0 Con Paso 1 Hacer
			reserva[j,0] = horario
			Para i<-0 Hasta 0 Con Paso 1 Hacer
				reserva[i,1]= dni
				Escribir  "horario ", horario " " , reserva[i,1] 
				bandera= Verdadero
			Fin Para
		Fin Para
		
	Hasta Que  reserva[i,1] = 0
FinSubProceso


//OPCION 3
SubProceso verificar_disponibilidad(disponible)
	Dimension  reserva[6,2]
	Para i<-0 Hasta 5 Con Paso 1 Hacer
		Para j<-0 Hasta 1 Con Paso 1 Hacer
			Escribir reserva[i,j]
		Fin Para
	Fin Para
	
FinSubProceso
	