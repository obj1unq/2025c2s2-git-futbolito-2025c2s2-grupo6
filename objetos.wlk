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
	
	method validaciónPosiciónPelota() {
	  return(self.position() == pelota.position())
	}

	method taquito() {
	  self.validaciónPosiciónPelota()
	  pelota.position(game.at((pelota.position().x()-2).max(0), pelota.position().y()))
	}



}


object pelota {
	const property image="pelota.png"
	var property position = game.at(5,5)	
}
