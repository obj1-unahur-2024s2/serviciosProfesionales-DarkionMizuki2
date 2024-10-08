import profesionales.*
import universidades.*
class EmpresaDeServicios{
    const profesionalesContratados=[]
    var honorarioDeReferencia=0
    method contratar(unEmpleado){
        profesionalesContratados.add(unEmpleado)
    }
    method establecerHonorarioDeReferenciaA(unDeterminadoValor){
        honorarioDeReferencia=unDeterminadoValor
    }
    method cuantosProfesionalesEstudioEn(unaUniversidad){
        return profesionalesContratados.count({p=>p.universidadQueEstudia()==unaUniversidad})
    }
    method conjuntoDeProfesionalesCaros(){
        return profesionalesContratados.filter({p=>p.honorarios()>honorarioDeReferencia})
    }
    method conjuntoDeLasUniversidadesFormadoras(){
        return profesionalesContratados.map({p=>p.universidadQueEstudia()}).asSet()
    }
    method profesionalMasBarato(){
        return profesionalesContratados.min({p=>p.honorarios()})
    }
    method esDeGenteAcotada(){
        return profesionalesContratados.all({p=>p.provincias().size()<=3})
    }
}