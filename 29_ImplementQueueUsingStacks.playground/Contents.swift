class MyQueue {
    var storage = [Int]()
    
    init() {
        
    }
    
    func push(_ x: Int) {
        storage.append(x)
    }
    
    func pop() -> Int {
        return storage.removeFirst()
    }
    
    func peek() -> Int {
        guard let first = storage.first else { return 0}
        return first
    }
    
    func empty() -> Bool {
        return storage.isEmpty
    }
}

let myQueue = MyQueue();
myQueue.push(1); // queue is: [1]
myQueue.push(2); // queue is: [1, 2]
myQueue.peek(); // return 1
myQueue.pop(); // return 1, queue is [2]
myQueue.empty(); // return false
