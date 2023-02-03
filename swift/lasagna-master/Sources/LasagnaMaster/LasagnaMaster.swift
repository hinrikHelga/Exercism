func remainingMinutesInOven(elapsedMinutes: Int, expectedMinutesInOven: Int = 40) -> Int {
  expectedMinutesInOven - elapsedMinutes
}

func preparationTimeInMinutes(layers: String...) -> Int {
  layers.count * 2
}

func quantities(layers: String...) -> (noodles: Int, sauce: Double) {
  let noodles = layers.filter {$0 == "noodles"}.count * 3
  let sauce = Double(layers.filter {$0 == "sauce"}.count) * 0.2
  
  return (noodles: noodles, sauce: sauce)
}

func toOz(_ amount: inout (noodles: Int, sauce: Double)) {
  amount.sauce *= 33.814
}

func redWine(layers: String...) -> Bool {
  let countWhite = layers.filter{ ["mozzarella", "ricotta", "béchamel"].contains($0) }.count
  let countRed = layers.filter{ ["meat", "sauce"].contains($0) }.count
      
  return countWhite > countRed ? false : true
}
