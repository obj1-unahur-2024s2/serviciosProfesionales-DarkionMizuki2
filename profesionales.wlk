  import universidades.*
  class Profesional{
    var universidadQueEstudia=null
    var honorarios=0
    const provincias=[]
    method honorarios(){
      return honorarios
    }
    method provincias(){
      return provincias
    }
    method universidadQueEstudia(){
      return universidadQueEstudia
    }
  }

  class ProfesionalVinculadoAUniversidad inherits Profesional{
    override method honorarios(){
      return universidadQueEstudia.honorariosQueRecomienda()
    }
    override method provincias(){
      return [universidadQueEstudia.provincia()]
    }

  }
  class ProfesionalAsociadoAlLitoral inherits Profesional{
    override method honorarios(){
      return 3000
    }
    override method provincias(){
      return ["Entre Rios","Santa Fe","Corrientes"]
    }
  }

  class ProfesionalLibre inherits Profesional{
      method agregar(unaProvincia){
        provincias.add(unaProvincia)
      }
  }