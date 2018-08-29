/*
 * Copiar pepita.wlk y comidas.wlk desde etapa3
 */
import pepita.*
import comidas.*
import masAves.*

object roque {
	var alumnos = [] //llenar con las aves a entrenar
	
	method estaContento() = alumnos.size().between(1, 8)

	method entrenar(){
		alumnos.forEach({ alumno =>
			alumno.volar(10)
			alumno.comer(alpiste, 300)
			alumno.volar(5)
			alumno.haceLoQueQuieras()
		})
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
	method pupilosCapacesDeVolar(unosKms) = alumnos.filter({alumno => alumno.puedeVolar(unosKms)})
	method mejorEstudiante() = alumnos.findOrElse({alumno => alumno.puedeVolar(11)},{'No hay alumno que pueda volar mas de 10 kms'})
}