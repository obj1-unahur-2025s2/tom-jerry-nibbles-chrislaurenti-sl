object tom {

    var energia = 50

    method comer(unRaton) {
      energia += 12 + unRaton.peso()
    }

    method corrio_Distancia(distancia) {
      energia -= distancia / 2
    }

    method velocidadMaxima() {
      return 5 + energia / 10
    }

    method energia() {
      return energia
    }

    method energiaGastada(distancia) {
      return distancia / 2
    }

    method puedeCazarA_Distancia(distancia) {
      return tom.energiaGastada(distancia) <= energia
    }

    method cazarRaton_A_Distancia(unRaton, distancia) {
      if(tom.puedeCazarA_Distancia(distancia)){
        tom.corrio_Distancia(distancia)
        tom.comer(unRaton)
      }
    }

}

object jerry {
  var edad = 2

  method peso() {
    return edad * 20
  }

  method edad() {
    return edad
  }

  method cumpleanios() {
    edad += 1
  }
}

object nibbles {
  
  method peso() {
    return 35
  }
}

// Inventar otro ratón

object gaby {
  method peso() {
    return 5 * jerry.edad()
  }
}