object pepita{
	var energia = 0
	method volar(kilometros){
		energia -= 10 + kilometros
	}
	method energia(){
		return energia
	}
	method comer(gramos){
		energia += 4 * gramos
	}
}