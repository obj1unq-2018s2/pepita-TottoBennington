import comidas.*

object pepon {
	// aca falta un atributo
	var energia = 0
	
	method energia(){return energia}
	method comer(cosa, cuanto) {
		// implementacion Enunciado 4
		energia += (cosa.energiaPorGramo() * cuanto) / 2
	}
	method volar(kms) {
		// implementacion Enunciado 4
		energia -= 0.5*kms + 1
	}
	method haceLoQueQuieras() { 
		// implementacion Enunciado 4
		self.volar(1)
	}
}

// implementar el objeto entero, salvo haceLoQueQuieras que lo damos hecho
// ayuda: conviene ponerle dos atributos
object pipa {
	var kmsTotales = 0
	var gramosTotales = 0
	method comer(gramos) { gramosTotales += gramos }
	method volar(kms) { kmsTotales += kms}
	method kmsRecorridos(){
		return kmsTotales
	}
	method gramosIngeridos(){
		return gramosTotales
	}
	
	/*
	 * cuando le dicen a pipa que haga lo que quiera, no hace nada
	 */
	method haceLoQueQuieras() { }   // queda asi
	// pregunta: ¿por qué es necesario agregar este método, sin código
	// porque pipa necesita recreación ¿?, no se me ocurre otra cosa.
}
