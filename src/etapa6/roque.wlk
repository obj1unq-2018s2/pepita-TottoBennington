/*
 * Copiar pepita.wlk y comidas.wlk desde etapa3
 */
import pepita.*
import comidas.*
import masAves.*

object roque {
	var alumno
	method tuPupiloEs(ave) { 
		alumno = ave
	}
	method entrenar(){
		alumno.volar(10)
		alumno.comer(alpiste, 300)
		alumno.volar(5)
		alumno.haceLoQueQuieras()
	}
		method pupiloActual(){
		return alumno
	}
}