
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
	var canelonPorGramo = 20
	method conSalsa(){canelonPorGramo = 25}
	method conQueso(){canelonPorGramo = 27}
	method conSalsaYQueso(){canelonPorGramo = 32}
	method energiaPorGramo(){return canelonPorGramo}
}