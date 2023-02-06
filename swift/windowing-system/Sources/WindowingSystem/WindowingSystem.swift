struct Size {
  var width = 80
  var height = 60
  
  mutating func resize(newWidth: Int, newHeight: Int) {
    width = newWidth
    height = newHeight
  }
}

struct Position {
  var x = 0
  var y = 0
  
  mutating func moveTo(newX: Int, newY: Int) {
    x = newX
    y = newY
  }
}

class Window {
  var title = "New Window"
  var size = Size()
  var position = Position()
  var contents: String? = nil
  
  let screenSize = Size(width: 800, height: 600)
  
  func validSizeGuard(cord: (x: Int, y: Int)) -> Bool {
    cord.x > 0 && cord.y > 0 ? true : false
  }
  
  func resize(to size: Size) {
    guard size.height > 0 || size.width > 0 else {
      self.size = Size(width: 1, height: 1)
      return
    }
    
    self.size.height = min(size.height, screenSize.height - position.y)
    self.size.width = min(size.width, screenSize.width - position.x)
  }
  
  func move(to pos: Position) {
    guard pos.y >= 0 || pos.x >= 0 else {
      self.position = Position(x: 0, y: 0)
      return
    }
    
    self.position.y = min(screenSize.height - size.height, pos.y)
    self.position.x = min(screenSize.width - size.width, pos.x)
  }
  
  func update(title: String) {
    self.title = title
  }
  
  func update(text: String?) {
    self.contents = text
  }
  
  func display() -> String {
    """
    \(self.title)
    Position: (\(self.position.x), \(self.position.y)), Size: (\(self.size.width) x \(self.size.height))
    \(self.contents ?? "[This window intentionally left blank]")
    
    """
  }
}

let mainWindow: Window = {
  var window = Window()
  
  window.update(title: "Main Window")
  window.resize(to: Size(width: 400, height: 300))
  window.move(to: Position(x: 100, y: 100))
  window.update(text: "This is the main window")
  
  return window
}()
