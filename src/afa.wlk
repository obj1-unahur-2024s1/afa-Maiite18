
object homenaje {
	var property precioEntrada = 0
	var property precioAcordado = 0
	
	method aPagarAlJugador(jugador)= jugador.pagaBase() + precioAcordado
	
	method gananciaNeta(cancha,jugador) =  self.recaudacionEntradas(cancha,jugador) - (cancha.alquiler() + self.aPagarAlJugador(jugador)) 
	
	method recaudacionEntradas(cancha,jugador) = self.precioEntrada() * self.entradasAVender(cancha,jugador)
	
	method entradasAVender(cancha,jugador) = cancha.capacidad() * (jugador.popularidad() / 100) 

}

object bombonera{
	var property alquiler = 0
	var property capacidad = 0	
}

object monumental{
	var property alquiler = 0
	var property hayObras = null
	
	method capacidad() = if (self.hayObras()) 50000 else 80000 

}

object messi{
	var property pagaBase = 10000000
	var property popularidad = 98 
	
	
}

object ronaldo{
	var property pagaBase = 5000000
	const property popularidad = messi.popularidad()/2
	
	
}

object mbappe{
	var property pagaBase = 3000000
	var property golesHechos = 0
	var property edad = 0
	
	method popularidad() = (self.edad() *2)+ self.golesHechos()
	
	
}

