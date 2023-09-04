Algoritmo AUMENTO_SUELDO
	Definir numeroTrabajadores,cont1,cont2,cont3,cont4 Como Entero
	Definir tipoColaborador,entradausuario Como Caracter
	Definir sueldo,aumento,aumentoTotalObreros,aumentoTotalEmpleados,montoTotalDesembolsarEmpleado,montoTotalDesembolsarObrero Como Real
	cont1 <- 0
	cont2 <- 0
	cont3 <- 0
	cont4 <- 0
	aumentoTotalObreros <- 0
	aumentoTotalEmpleados <- 0
	montoTotalDesembolsarEmpleado <- 0
	montoTotalDesembolsarObrero <- 0
	Repetir
		Repetir
			Escribir 'Ingrese tipo de colaborador: (Empleado (E) , Obrero (O))'
			Leer tipoColaborador
		Hasta Que tipoColaborador='E' O tipoColaborador='O'
		Repetir
			Escribir 'Ingrese sueldo: '
			Leer sueldo
		Hasta Que sueldo>0
		aumento <- 0
		Si tipoColaborador='E' Entonces
			Si (sueldo>=2501) Entonces
				cont1 <- cont1+1
				aumento <- sueldo*0.10
			SiNo
				Si (sueldo>=1201 Y sueldo<=2500) Entonces
					cont2 <- cont2+1
					aumento <- sueldo*0.15
				FinSi
			FinSi
			aumentoTotalEmpleados <- aumentoTotalEmpleados+aumento
			// Se calcula el nuevo sueldo
			sueldo <- sueldo+aumento
			montoTotalDesembolsarEmpleado <- montoTotalDesembolsarEmpleado+sueldo
		SiNo
			Si (sueldo>=901) Entonces
				cont3 <- cont3+1
				aumento <- sueldo*0.20
			SiNo
				Si (sueldo<=900) Entonces
					cont4 <- cont4+1
					aumento <- sueldo*0.25
				FinSi
			FinSi
			aumentoTotalObreros <- aumentoTotalObreros+aumento
			// Se calcula el nuevo sueldo
			sueldo <- sueldo+aumento
			montoTotalDesembolsarObrero <- montoTotalDesembolsarObrero+sueldo
		FinSi
		Repetir
			Escribir '¿Desea seguir ingresando obreros? (S/N)'
			Leer entradausuario
		Hasta Que (entradausuario='S' O entradausuario='N')
	Hasta Que entradausuario='N'
	Escribir 'Total de personas que recibiran 10%: ',cont1
	Escribir 'Total de personas que recibiran 15%: ',cont2
	Escribir 'Total de personas que recibiran 20%: ',cont3
	Escribir 'Total de personas que recibiran 25%: ',cont4
	Escribir 'Monto total de aumento para empleados: ',aumentoTotalEmpleados
	Escribir 'Monto total de aumento para obreros: ',aumentoTotalObreros
	Escribir 'Monto total a desembolsar por tipo Empleado: ',montoTotalDesembolsarEmpleado
	Escribir 'Monto total a desembolsar por tipo Obrero: ',montoTotalDesembolsarObrero
FinAlgoritmo
