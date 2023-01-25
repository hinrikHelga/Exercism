func dailyRateFrom(hourlyRate: Int) -> Double {
  let rate: Double = Double(hourlyRate * 8)
  return rate
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
  let rate: Double = dailyRateFrom(hourlyRate: hourlyRate) * 22
  let rateWithDiscount: Double = rate - rate / 100 * discount
  return rateWithDiscount.rounded()
  
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
  let dailyRate = dailyRateFrom(hourlyRate: hourlyRate)
  let dailyRateWithDiscount = dailyRate - dailyRate / 100 * discount
  let inWorkdays: Double = budget / dailyRateWithDiscount
  return inWorkdays.rounded(.down)
}
