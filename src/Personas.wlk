import Criterios_Dietas_Platos.*
class Persona{
	var elementosQueTieneCerca=[]
	var property posicion 
	var criterioDeAPasar 
	var dieta 
	var comidadQueIngrio=[]
	// PRIMER PUNTO -------------------------------------------------------------------------------------------
	method pasarUnElementoA(elemento, persona){
		criterioDeAPasar.pasarUnElemento(self,elemento, persona)
	}
		
	method pasarPimerElementoA(receptor){
		const elemento = elementosQueTieneCerca.head()
		self.eleimiarUnelemento(elemento)
		receptor.recirbirUnElemento(elemento)
	}
	method eleimiarUnelemento(elemento){
		elementosQueTieneCerca.remove(elemento)
	}
	
	method recirbirUnElemento(elemento){
		elementosQueTieneCerca.add(elemento)
	}
	
	method pasarTodosLosElementosA(receptor){
		receptor.recibirMuchosElementos(elementosQueTieneCerca)
		elementosQueTieneCerca.clear()
	}
	
	method recibirMuchosElementos(listaDeElementos){
		elementosQueTieneCerca.addAll(listaDeElementos)
	}
	method cambiarLugarCon(receptor){
		const nuevaPosiscion = receptor.posicion()
		receptor.posicion(self.posicion())
		posicion = nuevaPosiscion
		
	}
	
	method pasarA(elemento,receptor){
		receptor.recirbirUnElemento(elemento)
		self.eleimiarUnelemento(elemento)
	}
	
	method cambiarCriterrio(criterio){
		criterioDeAPasar = criterio
	}
	
	// SEGUNDO PUNTO -----------------------------------------------------------------------------------------------------------
	method comer(platoDeComida){
		if(self.afirmarSiCome(platoDeComida)){
			comidadQueIngrio.add(platoDeComida)
		}
	}
	method afirmarSiCome(platoDeComida){
		return dieta.come(platoDeComida)
		
	}	
	method cambiarDeDieta(unaDieta){
		dieta = unaDieta
	}
	// TERCER PUNTO -------------------------------------------------------------------------------------------------
	method estaPipon(){
		return self.comioComidaPesada()
	}
	
    method comioComidaPesada(){
    	return comidadQueIngrio.any({comida => comida.esPesada()})
    }
    // CUARTO PUNTO ------------------------------------------------------------------------------------------------
   	method comioAlgo(){
   		return !comidadQueIngrio.empty()
   	} 
   	method comioCarne(){
   		return comidadQueIngrio.any({comida => comida.esCarne()})
   	}
   	method noTieneMasDe3ElementosCerca(){
		return elementosQueTieneCerca.size() <= 3
   	}
}

object osky inherits Persona{
	method laEstaPasandoBien(){
		return true
	}
}

object moni  inherits Persona{
	method laEstaPasandoBien(){
		return self.comioAlgo() && self.seSentoEnLaPosicion1_1()
	}
	method seSentoEnLaPosicion1_1(){
	 return posicion == 101 || posicion == 111 || posicion == 121 || posicion == 131 || posicion == 141 || posicion == 151 || posicion == 161 || posicion == 171 || posicion == 181 || posicion == 191 
	 }
}

object facu inherits Persona{
	method laEstaPasandoBien(){
		return self.comioCarne()
	}
}

object vero inherits Persona{
	method laEstaPasandoBien(){
		return self.comioAlgo() &&  self.noTieneMasDe3ElementosCerca()
	}
}


