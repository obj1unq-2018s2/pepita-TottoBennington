
import roque.*
import comidas.*
import masAves.*
import pepita.*
import susana.*

object instituto {
	var entrenadores = []
	method contratar(entrenador) = entrenadores.add(entrenador)
	method prescindir(entrenador) = entrenadores.remove(entrenador)
	method entrenamientoGeneral() = entrenadores.forEach({entrenador => entrenador.entrenar()})
	method buenAmbiente() = entrenadores.all({entrenador => entrenador.estaContento()})
	//method mejoresEstudiantes(){}
}