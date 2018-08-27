/*
 * Copiar pepita.wlk y comidas.wlk desde etapa3
 */
import pepita.*
import comidas.*
import masAves.*

object roque {
	var alumnos = [] //llenar con las aves a entrenar
	var contento = true
	
	method estaContento() = if(alumnos.size().between(1, 8)) contento else !contento

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
	method pupilosCapacesDeVolar(unosKms) = if(alumnos.any({alumno=>alumno.puedeVolar(unosKms)})) alumnos.filter({alumno => alumno.puedeVolar(unosKms)}) else console.println('no hay alumnos capaces de volar: '+ unosKms.toString() + ' kms')
	method mejorEstudiante() = alumnos.findOrElse({alumno => alumno.puedeVolar(11)},{'No hay alumno que pueda volar mas de 10 kms'})
}