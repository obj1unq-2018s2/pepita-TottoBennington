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
		energia += destino.energiaRevitalizadora(self)
	}
}

object patagonia{
	method energiaRevitalizadora(aveARevitalizar){
		return 30
	}
}

object sierrasCordobesas{
	method energiaRevitalizadora(aveARevitalizar){
		return 70
	}
}

object marDelPlata{
	var temporadaAlta = false
	// verificamos si estamos o no en 'alta'
	method esTemporadaAlta() = temporadaAlta
	// cambiamos de temporada
	method cambioDeTemporada(){
		temporadaAlta = !temporadaAlta 
	}
	
	method energiaRevitalizadora(aveARevitalizar){
		if(self.esTemporadaAlta()){
			return 80
		}else{
			return -20
		}
	}
}

object noroesteArg{ 
	method energiaRevitalizadora(aveARevitalizar){
		return aveARevitalizar.energia() * 0.1
	}
}