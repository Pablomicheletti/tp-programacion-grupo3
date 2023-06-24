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

