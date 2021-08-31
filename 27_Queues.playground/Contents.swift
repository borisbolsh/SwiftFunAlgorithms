import Foundation

class Queue {
    
    var storage: [Int]
    
    init(head: Int) {
        storage = [head]
    }

    func enqueue(_ element: Int) {
        storage.append(element)
    }
    
    func peek() -> Int? {
        return storage[0]
    }
    
    func dequeue() -> Int? {
        return storage.remove(at: 0)
    }
    
}

// Test cases
let queue = Queue(head: 1)
queue.enqueue(2)
queue.enqueue(3)

print(queue.peek()!)    // 1
print(queue.dequeue()!) // 1
print(queue.peek()!)    // 2
print(queue.dequeue()!) // 2
print(queue.peek()!)    // 3
