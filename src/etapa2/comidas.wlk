
object alpiste {
	method energiaPorGramo() { return 4 }
}

object mondongo {
	method energiaPorGramo() { return 100 }
}

// comida que esta fallada
object bigMac {
	//method energiaQueOtorga() { return 2 } // el error es el metodo creo
	method energiaPorGramo(){return 2}
}

/*
 * el alcaucil da 20 joules por gramo
 */ 
object alcaucil {
	method energiaPorGramo(){return 20}
}

/*
 * el sorgo da 9 joules por gramo
 */ 
object sorgo { // Enunciado 2, Hecho.
	method energiaPorGramo(){return 9}
}

// despues, agregar mijo y canelones
// Enunciado 2, Hecho

object mijo {
	var mijoPorGramo = 0
	method mojarse(){mijoPorGramo = 15}
	method secarse(){mijoPorGramo = 20}
	method energiaPorGramo(){return mijoPorGramo}
}

object canelon{
	var conSalsa = false
	var conQueso = false
	
	method energiaPorGramo(){
		if(conSalsa && !conQueso){
			return 25
		}else if(conQueso && !conSalsa){
			return 27
		}else if(conQueso && conSalsa){
			return 32
		}else{
			return 20
		}
	}
	
	method ponerSalsa(){
		conSalsa = true
	}
	method ponerQueso(){
		conQueso = true
	}
	method sacarSalsa(){
		conSalsa = false
	}
	method sacarQueso(){
		conQueso = false
	}
}