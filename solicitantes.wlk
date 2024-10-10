class Persona{
	const property provincia
	method puedeSerAtendido(unProfesional){
		return unProfesional.provinciasDondeTrabaja().contains(provincia)
	}
}
class Institucion{
	const uniReconocidas
	method agregarUniversidad(unaUniversidad){
		uniReconocidas.add(unaUniversidad)
	}
	method puedeSerAtendido(unProfesional){
		return uniReconocidas.contains(unProfesional.universidad())
	}
}
class Club{
	const property provinciasDondeEsta
	method agregarProvincia(unaProvincia){
		provinciasDondeEsta.add(unaProvincia)
	}
	method puedeSerAtendido(unProfesional){
		return not provinciasDondeEsta.asSet().intersection(unProfesional.provinciasDondeTrabaja()).asSet().isEmpty()
	}
}