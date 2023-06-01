Proceso ejercicio_2
	Definir usuario_sistema, clave_sistema, usuario, clave Como Caracter
	Definir intentos Como Entero
	
	usuario_sistema = "NATALIA"
	clave_sistema = "HOLA123"
	
	Escribir "Ingrese un nombre de usuario: "
	Leer usuario
	Escribir "Ingrese la clave: "
	Leer clave
	
	intentos = 1
	Mientras (usuario != usuario_sistema o clave != clave_sistema) y intentos < 3 Hacer
		Escribir "Ingrese un nombre de usuario: "
		Leer usuario
		Escribir "Ingrese la clave: "
		Leer clave
		
		intentos = intentos + 1
	Fin Mientras
	
	Si usuario == usuario_sistema Y clave == clave_sistema Entonces
		Escribir "Ingresaste al sistema!"
	SiNo
		Escribir "Te quedaste sin intentos :("
	FinSi
	
FinProceso
