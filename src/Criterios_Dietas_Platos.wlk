// criterios para pasar la comida--------------------------------------------------------------------------
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

// DIETAS -----------------------------------------------------------------------------------------------------
object vegetariano{
	method come(platoDeComida){
		return platoDeComida.esCarne()
	}
}
object dietetico{
	method come(platoDeComida){
		return platoDeComida.tieneMenosDe500Calorias()
	}
}

object alterado{
	method come(platoDeComida){
		return true // no secomo hacerlo aleatorio
	}
}

class Combinado{
	var dietas = []
	method come(platoDeComida){
		return dietas.all({dieta => dieta.come(platoDeComida)})
	}
}
//PLATOS -----------------------------------------------------------------------------------------------------
class Plato{
	var descripcion
	var calorias
	var property esCarne // bool

	method tieneMenosDe500Calorias(){
		return calorias < 500
	}
}
