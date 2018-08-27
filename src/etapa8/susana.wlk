/*
 * Traer, e importar, los objetos de la etapa 4.
 */
 
 import comidas.*
 import masAves.*
 import pepita.*
 import roque.*

object susana {
	var alumno
	var contenta = false
	method tuPupiloEs(ave) { 
		alumno = ave
	}
	method entrenar(){
		alumno.comer(alpiste, 100)
		alumno.volar(20)
	}
	method pupiloActual(){
		return alumno
	}
	method estaContento() = if(self.pupiloActual().puedeVolar(10)) contenta else !contenta
}