class Bicicleta{
  var property rodado
  const property largo
  const property marca 
  const property accesorios = []

  method altura() = rodado * 2.5 + 15
  method velocidadCrucero() {if (largo > 120) return rodado + 6 else return rodado + 2}
  method carga() = accesorios.sum({a => a.carga()})
  method pesoTotalAccesorios() = accesorios.sum({a => a.peso()})
  method peso() {
    const pesoDeCarga = accesorios.sum({a => a.peso()})
    return rodado / 2 + pesoDeCarga
  }
  method tieneLuz() = accesorios.any({a => a.esLuminoso()})
  method cantidadAccesorioMenorA1() = accesorios.count({a => a.peso() < 1})
  method esRapida() = self.velocidadCrucero() > 25
}

