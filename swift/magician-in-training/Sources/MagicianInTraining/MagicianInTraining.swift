extension Array {
  func isIndexValid(i: Array.Index) -> Bool {
    guard i >= 0 && i < self.count else {
      return false
    }
    return true
  }
}

func getCard(at index: Int, from stack: [Int]) -> Int {
  guard stack.isIndexValid(i: index) else {
    return 0
  }
  
  return stack[index]
}

func setCard(at index: Int, in stack: [Int], to newCard: Int) -> [Int] {
  guard stack.isIndexValid(i: index) else {
    return stack
  }
  
  var stack = stack
  stack[index] = newCard
  
  return stack
}

func insert(_ newCard: Int, atTopOf stack: [Int]) -> [Int] {
  var stack = stack
  
  stack.append(newCard)
  
  return stack
}

func removeCard(at index: Int, from stack: [Int]) -> [Int] {
  guard stack.isIndexValid(i: index) else {
    return stack
  }
  
  var stack = stack
  stack.remove(at: index)
  
  return stack
}

func removeTopCard(_ stack: [Int]) -> [Int] {
  guard stack.count > 0 else {
    return []
  }
  
  var stack = stack
  stack.remove(at: stack.count - 1)
  
  return stack
}

func insert(_ newCard: Int, atBottomOf stack: [Int]) -> [Int] {
  var stack = stack
  
  stack.insert(newCard, at: 0)
  
  return stack
}

func removeBottomCard(_ stack: [Int]) -> [Int] {
  var stack = stack
  
  stack.removeFirst()
  
  return stack
}

func checkSizeOfStack(_ stack: [Int], _ size: Int) -> Bool {
  return stack.count == size
}

func evenCardCount(_ stack: [Int]) -> Int {
  return stack.filter { i in i % 2 == 0 }.count
}
