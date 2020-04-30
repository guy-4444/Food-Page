import Foundation

var runningIndex: Int = 0


class Food {
    
    var key: Int = 0
    var name: String?
    var calories: Int?
    
    init(_ name: String, _ calories: Int) {
        runningIndex += 1
        self.key = runningIndex
        self.name = name
        self.calories = calories
    }
    
    func printIt() {
        print("key: \(key), name: \(name!), calories: \(calories!)")
    }
    
}
