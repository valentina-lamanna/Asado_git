import Criterios_Dietas_Platos.*
class Persona{
	var elementosQueTieneCerca=[]
	var property posicion 
	var criterioDeAPasar 
	var dieta = 
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
		return dieta.come(platoDeComida)
	}	
	method cambiarDeDieta(unaDieta){
		dieta = unaDieta
	}
}