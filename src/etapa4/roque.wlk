/*
 * Copiar pepita.wlk y comidas.wlk desde etapa3
 */
import pepita.*
import comidas.*
import masAves.*

object roque {

	method tuPupiloEs(ave) { 
		return ave
	}
	method entrenar(){ 
		if(self.tuPupiloEs(pepita)){
			self.entrenamientoDeAve(pepita)
		}else if (self.tuPupiloEs(pepon)){
			self.entrenamientoDeAve(pepon)
		}else{
				self.entrenamientoDeAve(pipa)
		}
	}
	method entrenamientoDeAve(ave){
		ave.volar(10)
		ave.comer(alpiste, 300)
		ave.volar(5)
		ave.haceLoQueQuieras()
	}
}