import comidas.*

/*
 * p.ej. pepita.comer(alpiste, 300) o pepita.comer(alcaucil, 50) 
 */
object pepita {
	var energia = 0
	method energia() { return energia }
	method comer(cosa, gramos) { energia += cosa.energiaPorGramo() * gramos }
	method volar(kms) { energia -= kms + 10 }
	
	// metodos nuevos
	method estaDebil() { return energia<50 }  // Enunciado 2, hecho.
	method estaFeliz() { return energia.between(500, 1000) }  // Enunciado 2, hecho.
	
	method cuantoQuiereVolar() { 
		var cuanto = self.energia() / 5
		if (energia.between(300, 400)) { cuanto += 10 }
		if (energia % 20 == 0) { cuanto += 15 }
		return cuanto
	}
	
	method salirAComer() {
		// Enunciado 2, hecho.
		self.volar(5)
		self.comer(alpiste, 80)
		self.volar(5)
	}
	
	method haceLoQueQuieras() { 
		// Enunciado 2, hecho.
		if (self.estaDebil()) {
			self.comer(alpiste, 20)
		} 
		else if (self.estaFeliz()) {
			self.volar(8)
		}
		//como no hace nada si no es ni una ni la otra no hace falta poner otro ELSE
	}
	method puedeVolar(unosKms){
		return energia >= 10 + unosKms
	}
}