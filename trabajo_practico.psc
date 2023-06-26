Proceso trabajo_practico
	Definir reservar, dni, cancha, horario como real
	Definir leer_opcion Como Entero
	Dimension reserva[2,7,2]
	
	Escribir "----------------------------------------"
	Escribir "-------------- Bienvenido --------------"
	Escribir "----------------------------------------"
	Escribir "Presione cualquier tecla para continuar."
	leer enter
	
	Repetir
		Escribir "------- Menú Principal -------"
		Escribir "1) Reservas de cancha."
		Escribir "2) Buscar reserva de clientes."
		Escribir "3) Ver disponibilidad de canchas."
		Escribir "4) Cancelar reserva."
		Escribir "5) Salir."
		leer leer_opcion
		
		Segun leer_opcion Hacer
			1:
				cargar_reserva(reserva, horario, dni, cancha)
			2:
				busquedad_cliente(num_dni, cancha, horario)
			3:
				// verificar_disponibilidad()
			4:
				//cancelar_reserva()
			5:
				Escribir "Saliendo del programa..."
			De Otro Modo:
				Escribir "Opcion incorrecta."
		Fin Segun
	Hasta Que leer_opcion = 5
FinProceso

SubProceso cargar_reserva(reserva por referencia, horario por referencia, dni por referencia, cancha por referencia)
	
	Repetir
		Escribir "1) Para reservar cancha 1."
		Escribir "2) Para reservar cancha 2."
		Leer cancha
		Si cancha<=0 o cancha>=3 Entonces
			Escribir "Numero de cancha incorrecto"
		Fin Si
	Mientras Que cancha <= 0 o cancha >= 3
	
	Si cancha == 1 Entonces
		Escribir "Has seleccionado cancha 1"
		Repetir
			Escribir "Horarios disponibles"
			Escribir "15:00"
			Escribir "16:00"
			Escribir "17:00"
			Escribir "18:00"
			Escribir "19:00"
			Escribir "20:00"
			Leer horario
			Segun horario Hacer
				1:
					Escribir "Vas a reservar en el horario de 15:00"
				2:
					Escribir "Vas a reservar en el horario de 16:00"
				3:
					Escribir "Vas a reservar en el horario de 17:00"
				4:
					Escribir "Vas a reservar en el horario de 18:00"
				5:
					Escribir "Vas a reservar en el horario de 19:00"
				6:	
					Escribir "Vas a reservar en el horario de 20:00"
			Fin Segun
			Si horario < 15 o horario > 20 Entonces
				Escribir "Horario incorrecto. Intentelo nuevamente"
				Escribir ""
			Fin Si
		Hasta Que horario >= 15 y horario <= 20
		
		Repetir
			Escribir "Ingresar un número de documento para reservar."
			Leer dni
			Si dni > 999999999 o dni < 10000000 Entonces
				Escribir "El dni ingresado es incorrecto. Intente nuevamente"
				Escribir ""
			Fin Si
		Hasta Que dni <= 999999999 y dni >= 10000000
		
		Segun horario Hacer
			15:
				reserva[0, 1, 1] = dni
				Escribir "El horario de las 15:00 fue reservado por el dni: ", dni
				Escribir ""
			16:
				reserva[0, 2, 1] = dni
				Escribir "El horario de las 16:00 fue reservado por el dni: ", dni
				Escribir ""
			17:
				reserva[0, 3, 1] = dni
				Escribir "El horario de las 17:00 fue reservado por el dni: ", dni
				Escribir ""
			18:
				reserva[0, 4, 1] = dni
				Escribir "El horario de las 18:00 fue reservado por el dni: ", dni
				Escribir ""
			19:
				reserva[0, 5, 1] = dni
				Escribir "El horario de las 19:00 fue reservado por el dni: ", dni
				Escribir ""
			20:
				reserva[0, 6, 1] = dni
				Escribir "El horario de las 20:00 fue reservado por el dni: ", dni
				Escribir ""
			De Otro Modo:
				Mostrar "Finalizar"
		Fin Segun
	Sino
		Si cancha == 2 Entonces
			Escribir "Has seleccionado cancha 2"
			Repetir
				Escribir "Horarios disponibles"
				Escribir "15:00"
				Escribir "16:00"
				Escribir "17:00"
				Escribir "18:00"
				Escribir "19:00"
				Escribir "20:00"
				Leer horario
				Segun horario Hacer
					15:
						Escribir "Vas a reservar en el horario de 15:00"
					16:
						Escribir "Vas a reservar en el horario de 16:00"
					17:
						Escribir "Vas a reservar en el horario de 17:00"
					18:
						Escribir "Vas a reservar en el horario de 18:00"
					19:						Escribir "Vas a reservar en el horario de 19:00"
					20:	
						Escribir "Vas a reservar en el horario de 20:00"
				Fin Segun
				Si horario < 15 o horario > 20 Entonces
					Escribir "Horario incorrecto. Intentelo nuevamente"
					Escribir ""
				Fin Si
			Hasta Que horario >= 15 y horario <= 20
			
			Repetir
				Escribir "Ingresar un número de documento para reservar."
				Leer dni
				Si dni > 999999999 o dni < 10000000 Entonces
					Escribir "El dni ingresado es incorrecto. Intente nuevamente"
				Fin Si
			Hasta Que dni <= 999999999 y dni >= 10000000
			
			Segun horario Hacer
				15:
					reserva[1, 1, 1] = dni
					Escribir "El horario de las 15:00 fue reservado por el dni: ", dni
					Escribir ""
				16:
					reserva[1, 2, 1] = dni
					Escribir "El horario de las 16:00 fue reservado por el dni: ", dni
					Escribir ""
				17:
					reserva[1, 3, 1] = dni
					Escribir "El horario de las 17:00 fue reservado por el dni: ", dni
					Escribir ""
				18:
					reserva[1, 4, 1] = dni
					Escribir "El horario de las 18:00 fue reservado por el dni: ", dni
					Escribir ""
				19:
					reserva[1, 5, 1] = dni
					Escribir "El horario de las 19:00 fue reservado por el dni: ", dni
					Escribir ""
				20:
					reserva[1, 6, 1] = dni
					Escribir "El horario de las 20:00 fue reservado por el dni: ", dni
					Escribir ""
				De Otro Modo:
					Mostrar "Finalizar"
			FinSegun
		Fin Si
	Fin Si
FinSubProceso

SubProceso busquedad_cliente(num_dni por referencia,cancha por referencia, horario por referencia)
	
	Repetir
		Escribir "Ingrese el numero de cancha que desea buscar"
		leer cancha
		Si cancha <= 0 o cancha >= 3  Entonces
			Escribir "Numero de cancha no disponible."
		Fin Si
	Mientras Que cancha <= 0 o cancha >= 3
	
	Repetir
		Escribir "Ingrese el numero de DNI a buscar"
		leer num_dni
		Si num_dni>99999999 o num_dni<10000000 Entonces
			Escribir "Ingrese un DNI valido"
		Fin Si
	Hasta Que num_dni <= 99999999 y num_dni >= 10000000
	
	Si cancha=1 Entonces
		Repetir
			Escribir "Ingrese el horario que desea buscar"
			Escribir "15:00"
			Escribir "16:00"
			Escribir "17:00"
			Escribir "18:00"
			Escribir "19:00"
			Escribir "20:00"
			leer horario
			Si horario<=14 o horario >=21 Entonces
				Escribir "Horario incorrecto"
			Fin Si
		Mientras que horario<=14 o horario >=21
		
	SiNo
		cancha=2
	Fin Si
	
fin subproceso


//horarios_C1[0,0,0] = 15			reservas_C1[0,1,0]
//horarios_C1[0,0,1] = 16			reservas_C1[0,1,1]
//horarios_C1[0,0,2] = 17			reservas_C1[0,1,2]
//horarios_C1[0,0,3] = 18			reservas_C1[0,1,3]
//horarios_C1[0,0,4] = 19			reservas_C1[0,1,4]
//horarios_C1[0,0,5] = 20			reservas_C1[0,1,5]

//horarios_C2[1,0,0] = 15			reservas_C2[1,1,0]
//horarios_C2[1,0,1] = 16			reservas_C2[1,1,1]
//horarios_C2[1,0,2] = 17			reservas_C2[1,1,2]
//horarios_C2[1,0,3] = 18			reservas_C2[1,1,3]
//horarios_C2[1,0,4] = 19			reservas_C2[1,1,4]
//horarios_C2[1,0,5] = 20			reservas_C2[1,1,5]
	