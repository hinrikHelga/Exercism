let birthday: String = "Birthday"

let valentine: String = "Valentine's Day"

let anniversary: String = "Anniversary"

let space: Character = " "

let exclamation: Character = "!"

func buildSign(for occasion: String, name: String) -> String {
	
	"Happy \(occasion) \(name)\(exclamation)"
}

func graduationFor(name: String, year: Int) -> String {
  "Congratulations \(name)\(exclamation)\nClass of \(year)"
}

func costOf(sign: String) -> Int {
	let signPrice: Int = sign.count * 2
	return signPrice + 20
}
