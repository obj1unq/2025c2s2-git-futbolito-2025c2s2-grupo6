/** First Wollok example */
import wollok.game.*

object lionel {
	
	var property position = game.at(3,5)
	
	method image() {
		return "lionel-titular.png"
	}

	method retroceder() {
		position = game.at(0.max(position.x() - 1), position.y()) 
	}
	
	method avanzar() {
		position = game.at((game.width() - 1).min(position.x() + 1), position.y()) 
	}
	method patear() {
		self.validarSiPuedePatear()
		pelota.position(game.at((pelota.position().x()+3).min(game.width()-1), pelota.position().y()))


	}
	method validarSiPuedePatear() {
	  if(!(position == pelota.position())){//&& pelota.position().x()+3 < game.width()-1){
		self.error("lionel no esta cerca de la pelota")
	  }
	}
}


object pelota {
	const property image="pelota.png"
	var property position = game.at(5,5)	
}
