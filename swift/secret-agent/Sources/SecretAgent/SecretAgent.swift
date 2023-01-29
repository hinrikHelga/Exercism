func protectSecret(_ secret: String, withPassword password: String) -> (String) -> String {
    func passwordGuard(pw: String) -> String {
        guard pw == password else {
            return "Sorry. No hidden secrets here."
        }
        return secret
    }
    
    return passwordGuard
}

func generateCombination(forRoom room: Int, usingFunction f: (Int) -> Int) -> (Int, Int, Int) {
    let first: Int = f(room)
    let second: Int = f(f(room))
    let third: Int = f(f(f(room)))
    
    return (first, second, third)
}
