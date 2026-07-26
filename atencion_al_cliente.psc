Algoritmo atencion_al_cliente
	Definir opcion, totalAtenciones, i, j, idBuscar, siguienteID Como Entero
	Definir encontrado Como Logico
	Definir id Como Entero
	Definir cliente, documento, tipoAtencion, motivo, descripcion Como Cadena
	Definir fecha, hora, prioridad, estado, observacion Como Cadena
	Dimension id[100]
	Dimension cliente[100]
	Dimension documento[100]
	Dimension tipoAtencion[100]
	Dimension motivo[100]
	Dimension descripcion[100]
	Dimension fecha[100]
	Dimension hora[100]
	Dimension prioridad[100]
	Dimension estado[100]
	Dimension observacion[100]
	Definir totalPendientes, totalEnProceso, totalResueltas, totalCanceladas Como Entero
	Definir totalAlta, totalMedia, totalBaja Como Entero
	Definir totalConsultas, totalReclamos, totalQuejas, totalSolicitudes, totalSoporte Como Entero
	totalAtenciones <- 0
	siguienteID <- 1
	//----------------------------------------//
	//--|menu_principal_atencion_al_cliente|--//
	//----------------------------------------//
	Repetir
		Escribir "menu principal atencion al cliente"
		Escribir "1) registrar atencion"
		Escribir "2) editar atencion"
		Escribir "3) eliminar atencion"
		Escribir "4) buscar atencion"
		Escribir "5) listar atenciones"
		Escribir "6) ver detalles de la atencion"
		Escribir "7) mostrar estadisticas"
		Escribir "8) salir"
		Escribir "seleccione una opcion:"
		Leer opcion
		Segun opcion Hacer
			//------------------------//
			//--|registrar_atencion|--//
			//------------------------//
			1:
				Escribir "registrar atencion al cliente"
				Si totalAtenciones >= 100 Entonces
					Escribir "no se pueden registrar mas atenciones."
				SiNo
					id[totalAtenciones + 1] <- siguienteID
					siguienteID <- siguienteID + 1
					Escribir "ingrese el nombre del cliente:"
					Leer cliente[totalAtenciones + 1]
					Escribir "ingrese el documento del cliente:"
					Leer documento[totalAtenciones + 1]
					Escribir "ingrese el tipo de atencion (consulta/reclamo/queja/solicitud/soporte):"
					Leer tipoAtencion[totalAtenciones + 1]
					Escribir "ingrese el motivo de la atencion:"
					Leer motivo[totalAtenciones + 1]
					Escribir "ingrese una descripcion:"
					Leer descripcion[totalAtenciones + 1]
					Escribir "ingrese la fecha de atencion:"
					Leer fecha[totalAtenciones + 1]
					Escribir "ingrese la hora de atencion:"
					Leer hora[totalAtenciones + 1]
					Escribir "ingrese la prioridad (alta/media/baja):"
					Leer prioridad[totalAtenciones + 1]
					Escribir "ingrese el estado (pendiente/en proceso/resuelto/cancelado):"
					Leer estado[totalAtenciones + 1]
					Escribir "ingrese una observacion:"
					Leer observacion[totalAtenciones + 1]
					totalAtenciones <- totalAtenciones + 1
					Escribir "atencion al cliente registrada correctamente."
				FinSi
			//---------------------//
			//--|editar_atencion|--//
			//---------------------//
			2:
				Escribir "editar atencion al cliente"
				Si totalAtenciones = 0 Entonces
					Escribir "no hay atenciones registradas."
				SiNo
					Escribir "datos registrados a editar"
					Para i <- 1 Hasta totalAtenciones Hacer
						Escribir id[i]," | ",cliente[i]," | ",documento[i]," | ",tipoAtencion[i]," | ",motivo[i]," | ",descripcion[i]," | ",fecha[i]," | ",hora[i]," | ",prioridad[i]," | ",estado[i]," | ",observacion[i]
					FinPara
					Escribir "ingrese el id de la atencion:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalAtenciones Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "nuevo nombre del cliente:"
							Leer cliente[i]
							Escribir "nuevo documento del cliente:"
							Leer documento[i]
							Escribir "nuevo tipo de atencion (consulta/reclamo/queja/solicitud/soporte):"
							Leer tipoAtencion[i]
							Escribir "nuevo motivo de la atencion:"
							Leer motivo[i]
							Escribir "nueva descripcion:"
							Leer descripcion[i]
							Escribir "nueva fecha de atencion:"
							Leer fecha[i]
							Escribir "nueva hora de atencion:"
							Leer hora[i]
							Escribir "nueva prioridad (alta/media/baja):"
							Leer prioridad[i]
							Escribir "nuevo estado (pendiente/en proceso/resuelto/cancelado):"
							Leer estado[i]
							Escribir "nueva observacion:"
							Leer observacion[i]
							Escribir "atencion al cliente editada correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontro una atencion con ese id."
					FinSi
				FinSi
			//-----------------------//
			//--|eliminar_atencion|--//
			//-----------------------//
			3:
				Escribir "eliminar atencion al cliente"
				Si totalAtenciones = 0 Entonces
					Escribir "no hay atenciones registradas."
				SiNo
					Escribir "datos registrados a eliminar"
					Para i <- 1 Hasta totalAtenciones Hacer
						Escribir id[i]," | ",cliente[i]," | ",documento[i]," | ",tipoAtencion[i]," | ",motivo[i]," | ",descripcion[i]," | ",fecha[i]," | ",hora[i]," | ",prioridad[i]," | ",estado[i]," | ",observacion[i]
					FinPara
					Escribir "ingrese el id de la atencion:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalAtenciones Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Si i < totalAtenciones Entonces
								Para j <- i Hasta totalAtenciones - 1 Hacer
									id[j] <- id[j + 1]
									cliente[j] <- cliente[j + 1]
									documento[j] <- documento[j + 1]
									tipoAtencion[j] <- tipoAtencion[j + 1]
									motivo[j] <- motivo[j + 1]
									descripcion[j] <- descripcion[j + 1]
									fecha[j] <- fecha[j + 1]
									hora[j] <- hora[j + 1]
									prioridad[j] <- prioridad[j + 1]
									estado[j] <- estado[j + 1]
									observacion[j] <- observacion[j + 1]
								FinPara
							FinSi
							totalAtenciones <- totalAtenciones - 1
							Escribir "atencion al cliente eliminada correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontro una atencion con ese id."
					FinSi
				FinSi
			//---------------------//
			//--|buscar_atencion|--//
			//---------------------//
			4:
				Escribir "buscar atencion al cliente"
				Si totalAtenciones = 0 Entonces
					Escribir "no hay atenciones registradas."
				SiNo
					Escribir "ingrese el id de la atencion:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalAtenciones Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "datos encontrados"
							Escribir "id: ",id[i]
							Escribir "cliente: ",cliente[i]
							Escribir "documento: ",documento[i]
							Escribir "tipo de atencion: ",tipoAtencion[i]
							Escribir "motivo: ",motivo[i]
							Escribir "descripcion: ",descripcion[i]
							Escribir "fecha: ",fecha[i]
							Escribir "hora: ",hora[i]
							Escribir "prioridad: ",prioridad[i]
							Escribir "estado: ",estado[i]
							Escribir "observacion: ",observacion[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontro una atencion con ese id."
					FinSi
				FinSi
			//-----------------------//
			//--|listar_atenciones|--//
			//-----------------------//
			5:
				Escribir "listar atenciones al cliente"
				Si totalAtenciones = 0 Entonces
					Escribir "no hay atenciones registradas."
				SiNo
					Escribir "atenciones registrados"
					Para i <- 1 Hasta totalAtenciones Hacer
						Escribir "id: ",id[i]
						Escribir "cliente: ",cliente[i]
						Escribir "documento: ",documento[i]
						Escribir "tipo de atencion: ",tipoAtencion[i]
						Escribir "motivo: ",motivo[i]
						Escribir "descripcion: ",descripcion[i]
						Escribir "fecha: ",fecha[i]
						Escribir "hora: ",hora[i]
						Escribir "prioridad: ",prioridad[i]
						Escribir "estado: ",estado[i]
						Escribir "observacion: ",observacion[i]
					FinPara
				FinSi
			//---------------------------//
			//--|ver_detalles_atencion|--//
			//---------------------------//
			6:
				Escribir "ver detalles de la atencion al cliente"
				Si totalAtenciones = 0 Entonces
					Escribir "no hay atenciones registradas."
				SiNo
					Escribir "ingrese el id de la atencion:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalAtenciones Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "detalles de la atencion al cliente"
							Escribir "id: ",id[i]
							Escribir "cliente: ",cliente[i]
							Escribir "documento: ",documento[i]
							Escribir "tipo de atencion: ",tipoAtencion[i]
							Escribir "motivo: ",motivo[i]
							Escribir "descripcion: ",descripcion[i]
							Escribir "fecha: ",fecha[i]
							Escribir "hora: ",hora[i]
							Escribir "prioridad: ",prioridad[i]
							Escribir "estado: ",estado[i]
							Escribir "observacion: ",observacion[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontro una atencion con ese id."
					FinSi
				FinSi
			//--------------------------//
			//--|mostrar_estadisticas|--//
			//--------------------------//
			7:
				Escribir "mostrar estadisticas"
				Si totalAtenciones = 0 Entonces
					Escribir "no hay atenciones registradas."
				SiNo
					totalPendientes <- 0
					totalEnProceso <- 0
					totalResueltas <- 0
					totalCanceladas <- 0
					totalAlta <- 0
					totalMedia <- 0
					totalBaja <- 0
					Para i <- 1 Hasta totalAtenciones Hacer
						Si estado[i] = "pendiente" Entonces
							totalPendientes <- totalPendientes + 1
						FinSi
						Si estado[i] = "en proceso" Entonces
							totalEnProceso <- totalEnProceso + 1
						FinSi
						Si estado[i] = "resuelto" Entonces
							totalResueltas <- totalResueltas + 1
						FinSi
						Si estado[i] = "cancelado" Entonces
							totalCanceladas <- totalCanceladas + 1
						FinSi
						Si prioridad[i] = "alta" Entonces
							totalAlta <- totalAlta + 1
						FinSi
						Si prioridad[i] = "media" Entonces
							totalMedia <- totalMedia + 1
						FinSi
						Si prioridad[i] = "baja" Entonces
							totalBaja <- totalBaja + 1
						FinSi
					FinPara
					Escribir "estadistiticas de atencion al cliente"
					Escribir "total de atenciones: ",totalAtenciones
					Escribir "atenciones pendientes: ",totalPendientes
					Escribir "atenciones en proceso: ",totalEnProceso
					Escribir "atenciones resueltas: ",totalResueltas
					Escribir "atenciones canceladas: ",totalCanceladas
					Escribir "atenciones con prioridad alta: ",totalAlta
					Escribir "atenciones con prioridad media: ",totalMedia
					Escribir "atenciones con prioridad baja: ",totalBaja
				FinSi
			//------------------------------//
			//--|salir_del_menu_principal|--//
			//------------------------------//
			8:
				Escribir "gracias por utilizar atencion al cliente."
			De Otro Modo:
				Escribir "opcion no valida."
		FinSegun
	Hasta Que opcion = 8
FinAlgoritmo