object pacman {
	var vidas = 3
	var property image = "pacmanMayor.png"
	var property position = game.origin()
	method perderVida() {
		vidas = vidas - 1
		game.say(self,"perdí una vida")
		position = game.origin()
	}
	method juegoTerminado() = vidas == 0

}

class Rival {
	const numero
	var property position = game.at(numero + 1, numero + 1)
	method image() = "rival" + numero.toString() + ".png"

	method acercarseA(personaje) {
		const otroPosicion = personaje.position()
		var newX = position.x() + if (otroPosicion.x() > position.x()) 1 else -1
		var newY = position.y() + if (otroPosicion.y() > position.y()) 1 else -1
		position = game.at(newX, newY)
	}
}
