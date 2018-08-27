/*
 * Copiar pepita.wlk y comidas.wlk desde etapa3
 */
import pepita.*
import comidas.*
import masAves.*

object roque {
	var alumnos = [pepita, pepon] //llenar con las aves a entrenar
	var contento = true
	
	method estaContento() = if(alumnos.size().between(1, 8)) contento else !contento

	method entrenar(){
		alumnos.volar(10)
		alumnos.comer(alpiste, 300)
		alumnos.volar(5)
		alumnos.haceLoQueQuieras()
	}
	method pupilosActuales(){
		return alumnos
	}

	method agregarPupilo(unAve){
		alumnos.add(unAve)

	}

	method dejarPupilo(unAve){
		alumnos.remove(unAve)
	}
	method pupilosCapacesDeVolar(unosKms){
		alumnos.filter({alumno => alumno.puedeVolar(unosKms)})
	}
	method mejorEstudiante() = alumnos.findOrElse({alumno => alumno.puedoVolar(11)},{'No hay alumno que pueda volar mas de 10 kms'})
}