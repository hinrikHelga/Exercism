func canIBuy(vehicle: String, price: Double, monthlyBudget: Double) -> String {
    let totalMonths: Double = 60.0
    let monthlyPayment: Double = price / totalMonths
    let conservativeBudget =  monthlyBudget * 1.1
    
    guard monthlyPayment < conservativeBudget else {
        return "Darn! No \(vehicle) for me"
    }
    
    if (monthlyPayment <= monthlyBudget) {
        return "Yes! I'm getting a \(vehicle)"
    } else {
        return "I'll have to be frugal if I want a \(vehicle)"
    }
}

func licenseType(numberOfWheels wheels: Int) -> String {
    var type: String? = nil
    switch wheels {
    case 2, 3:
        type = "a motorcycle"
    case 4, 6:
        type = "an automobile"
    case 18:
        type = "a commercial trucking"
    default:
        return "We do not issue licenses for those types of vehicles"
    }
    return "You will need \(type!) license for your vehicle"
}

func registrationFee(msrp: Int, yearsOld: Int) -> Int {
    guard yearsOld < 10 else {
        return 25
    }
    
    let baseCost: Int = msrp > 25_000 ? msrp : 25_000

    return baseCost * (100 - (10 * yearsOld)) / 100 / 100
}
