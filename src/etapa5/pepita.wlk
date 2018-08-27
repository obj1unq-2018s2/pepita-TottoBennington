import comidas.*

/*
 * Agregar
 * - los objetos que representan a los posibles destinos
 * - la capacidad de Pepita de visitar un destino, modificando su energía.
 */
 
object pepita {
	var energia
	method energia() { return energia }
	method comer(cosa, gramos) { energia += cosa.energiaPorGramo() * gramos }
	method visitar(destino){
		energia += destino.energiaRevitalizadora()
	}
}

object patagonia{
	method energiaRevitalizadora(){
		return 30
	}
}

object sierrasCordobesas{
	method energiaRevitalizadora(){
		return 70
	}
}

object marDelPlata{
	var temporadaAlta = false
	// verificamos si estamos o no en 'alta'
	method estamosDeTemporadaAlta() = temporadaAlta
	// cambiamos de temporada
	method cambiodDeTemporada() = not temporadaAlta
	
	method energiaRevitalizadora(){
		if(self.estamosDeTemporadaAlta()){
			return 80
		}else{
			return -20
		}
	}
}

object noroesteArg{ 
	method energiaRevitalizadora(){
		return pepita.energia() * 0.1
	}
}