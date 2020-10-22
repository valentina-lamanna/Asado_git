// criterios para pasar la comida
object sordo{
	method pasarUnElemento(pasador,elemento, receptor){
		pasador.pasarPimerElementoA(receptor)
	}
}
object noQuiereSerMolestado{
	method pasarUnElemento(pasador,elemento, receptor){
		pasador.pasarTodosLosElementosA(receptor)
	}
}

object sosiable{
	method pasarUnElemento(pasador,elemento, receptor){
		pasador.cambiarLugarCon(receptor)
	}
	
}

object elCorrecto{
	method pasarUnElemento(pasador,elemento, receptor){
		pasador.pasarA(elemento,receptor)
	}
}