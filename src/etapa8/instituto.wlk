
import roque.*
import comidas.*
import masAves.*
import pepita.*
import susana.*
/*
 * a la hora de probar el prog:
 * primero contratar entrenadores
 * asignar pupilo a susana
 * asignar pupilo/s a roque
 *
 * roque.agregarPupilo(pepita)
 * susana.tuPupiloEs(pepon)
 * instituto.contratar(susana)
 * instituto.contratar(roque)
 * instituto.entrenamientoGeneral()
 * instituto.mejoresEstudiantes()
 * instituto.buenAmbiente()
 * instituto.prescindir(susana)
 */
object instituto {
	var entrenadores = []
	var mejores = []
	
	method contratar(entrenador){entrenadores.add(entrenador)}
	method prescindir(entrenador){entrenadores.remove(entrenador)}
	method entrenamientoGeneral(){entrenadores.forEach({entrenador => entrenador.entrenar()})}
	method buenAmbiente()= entrenadores.all({entrenador => entrenador.estaContento()})
	method mejoresEstudiantes(){
		entrenadores.forEach({
			entrenador => mejores.add(entrenador.mejorEstudiante())
		})
		return mejores
	}
}