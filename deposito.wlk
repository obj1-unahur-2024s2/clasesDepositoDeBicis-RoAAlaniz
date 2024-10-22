import bicis.*

class Deposito {
    const property bicicletas = []

    method agregarBici(bici) = bicicletas.add(bici)
    method bicicletasRapidas() = bicicletas.filter({ b => b.esRapida()})
    method marcaBicis() = bicicletas.filter({b => b.marca()}).asSet()
    method esNocturno()= bicicletas.all({b => b.tieneLuz()})
    method tieneBicicleta(kilos) = bicicletas.any({b => b.carga() > kilos})
    method marcaMasRapida() = bicicletas.max({b => b.velocidadCrucero()}).marca()
    method cargaTotalBiciLargas() = bicicletas.filter({b => b.largo() > 170}).sum({b => b.carga()})
    method cantBiciSinAcc() = bicicletas.count({b => b.accesorios().isEmpty() }) 
    method algunaBiciPuedeLlevar(pesoALlevar) = bicicletas.any({b => b.carga() == pesoALlevar})
}
