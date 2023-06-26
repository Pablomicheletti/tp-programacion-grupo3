Proceso Trabajo_Practico_6
	Definir canchas,clientes Como Real
	definir numCancha,dni Como Real
	Definir opcion,i,j,horario Como Entero
	
	Dimension canchas[3, 90000000]
	Dimension clientes[90000000, 20]
	
	bienvenida(enter)
	
	Horarios(hora)
	
	Repetir
		
		MenuPrincipal(menu)
		
		Leer opcion
		
		Segun opcion Hacer
			1:
				ReservaDeCanchas(canchas,clientes,dni,numCancha,horario)
			2:
				BuscarClientes(clientes,i,dni, horario, numCancha)
			3:
				DisponibilidadDeCanchas(canchas,i,j)
			4:
				CancelarReserva(clientes,canchas,dni,i)
			5:
				Salir(exit)
			De Otro Modo:
				Escribir "Opcion incorrecta"
		Fin Segun
	Hasta que opcion = 5
FinProceso

//bienvenida
SubProceso bienvenida(enter)
	Escribir "----------------------------------------"
	Escribir "-------------- Bienvenido --------------"
	Escribir "----------------------------------------"
	Escribir "Presione cualquier tecla para continuar."
	leer enter
FinSubProceso

//Horarios
SubProceso Horarios(hora)
	Escribir "----- HORARIOS -----"
	Mostrar " 1)	15:00"
	Mostrar " 2)	16:00"
	mostrar " 3)	17:00"
	Mostrar " 4)	18:00"
	Mostrar " 5)	19:00"
	Mostrar " 6)	20:00"
	Escribir "Presione cualquier tecla para continuar."
	leer enter
FinSubProceso

//Menu_Principal 
SubProceso MenuPrincipal(menu)
	Escribir ""
	Mostrar "----- MENÚ PRINCIPAL -----"
	Mostrar "1. Reserva de canchas"
	Mostrar "2. Buscar clientes"
	Mostrar "3. Disponibilidad de canchas"
	Mostrar "4. Cancelar reserva"
	Mostrar "5. Salir del programa"
	Mostrar "Ingrese una opción: "
FinSubProceso

//OPCION_1
SubProceso ReservaDeCanchas(canchas,clientes,dni Por Referencia,numCancha Por Referencia,horario Por Referencia)
	Escribir ""
    Mostrar "----- RESERVA DE CANCHAS -----"
    Repetir
		Mostrar "Ingrese el DNI del cliente: "
		Leer dni
		Si dni<10000000 o dni>99999999 Entonces
			Escribir "dni incorrecto. Ingrese uno valido"
		Fin Si
	Mientras Que dni<10000000 o dni>99999999
    Repetir
		Mostrar "Ingrese el número de la cancha (1 a 2): "
		Leer numCancha
		Si numCancha<1 o numCancha<2 Entonces
			Escribir "numero de cancha incorrecto"
		Fin Si
	Mientras Que numCancha<1 o numCancha>2
    Repetir
		Mostrar "Ingrese el turno que quiere reservar (1 a 6): "
		Escribir "Turno 1 : 15:00"
		Escribir "Turno 2 : 16:00"
		Escribir "Turno 3 : 17:00"
		Escribir "Turno 4 : 18:00"
		Escribir "Turno 5 : 19:00"
		Escribir "Turno 6 : 20:00"
		Leer horario
		Si horario<1 o horario>6 Entonces
			Escribir "Numero turno incorrecto"
		Fin Si
	Mientras Que horario<1 o horario>6
    Si numCancha >= 1 o numCancha <= 2 y horario >= 1 o horario <= 6 Entonces
        Si canchas[numCancha, horario - 1] = 0 Entonces
            canchas[numCancha, horario - 1] = 1
            clientes[numCancha, 1] = dni
            clientes[horario, 2] = dni
            Mostrar "Reserva realizada con éxito"
        Sino
            Mostrar "La cancha ", numCancha, " ya esta reservada en el turno: ", horario
        Fin Si
    Sino
        Mostrar "Número de cancha u horario inválido"
    Fin Si
FinSubProceso

//OPCION_2
SubProceso BuscarClientes(clientes,i,dni Por Referencia, horario Por Referencia, numCancha por referencia)
	Definir encontrado Como Logico
	Escribir ""
    Mostrar "----- BUSCAR CLIENTES -----"
    Mostrar "Ingrese el DNI del cliente: "
    Leer dni
    encontrado = Falso
	
    Para i <- 0 hasta 19 con paso 1 Hacer
        Si clientes[2, i] == dni Entonces
            Mostrar "Cliente encontrado:"
            Mostrar "DNI: ", dni
            Mostrar "Número de cancha: ", numCancha
			Mostrar "Turno ", horario
            encontrado = Verdadero
        Fin Si
    Fin Para
	
    Si encontrado = Falso Entonces
        Mostrar "Cliente no encontrado"
    Fin Si
FinSubProceso

//OPCION_3
SubProceso DisponibilidadDeCanchas(canchas,i,j)
	Escribir ""
    Mostrar "----- DISPONIBILIDAD DE CANCHAS -----"
    Mostrar "Horario"
	Mostrar "15"
	Escribir ""
	Mostrar "16"
	Escribir ""
	Mostrar "17"
	Escribir ""
	Mostrar "18"
	Escribir ""
	Mostrar "19"
	Escribir ""
	Mostrar "20"
	Escribir ""
	
    Para i <- 1 hasta 2 Con Paso 1 Hacer
        Mostrar "Cancha ", i
        Para j <- 0 hasta 5 Con Paso 1 Hacer
            Si canchas[i, j] == 0 Entonces
                Mostrar " DISPONIBLE "
				Escribir ""
            Sino
                Mostrar " RESERVADO "
				Escribir ""
            Fin Si
        Fin Para
    Fin Para
FinSubProceso

//OPCION_4
SubProceso CancelarReserva(clientes, canchas, dni Por Referencia, i)
    Definir encontrado Como Logico
    Mostrar ""
    Mostrar "----- CANCELAR RESERVA -----"
    Mostrar "Ingrese el DNI del cliente: "
    Leer dni
    encontrado = Falso
	
    Para i <- 0 hasta 49 con paso 1 Hacer
        Si clientes[i, 1] == dni Entonces
            cancha = clientes[i, 2]  
            horario = clientes[i, 1]  
            canchas[cancha, horario] = 0  
            clientes[i, 1] = 0  
            clientes[i, 2] = 0
            Mostrar "Reserva cancelada con éxito"
            encontrado = Verdadero
        Fin Si
    Fin Para
	
    Si encontrado = Falso Entonces
        Mostrar "No se encontró reserva asociada al DNI ", dni
    Fin Si
FinSubProceso

//OPCION_5
SubProceso Salir(exit)
	Escribir ""
	Escribir "GRACIAS POR UTILIZAR NUESTRA PAGINA"
FinSubProceso
