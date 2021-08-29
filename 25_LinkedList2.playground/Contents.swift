class Node {
    var value: Int
    var next: Node?

    init(value: Int) {
        self.value = value
    }
}

class LinkedList {
    var head: Node?
    init(head: Node?) {
        self.head = head
    }
    
    func append(_ node: Node) {

        guard head != nil else {
            head = node
            return
        }

        var current = head
        while let _ = current?.next {
            current = current?.next
        }
        current?.next = node
    }
    
    func getNode(atPosition position: Int) -> Node? {
        guard position > 0 else {
            return nil
        }

        var counter = 1
        var current = head

        while current != nil && counter <= position {
            if counter == position {
                return current
            }
            current = current?.next
            counter += 1
        }
        return nil
    }
    
    func insertNode(_ node: Node, at position: Int) {
        guard position > 0 else {
            return
        }

        var counter = 1
        var current = head

        if position > 1 {
            while current != nil && counter < position {
                if counter == position - 1 {
                    node.next = current?.next
                    current?.next = node
                    break
                }
                current = current?.next
                counter += 1
            }
        } else if position == 1 {
            node.next = head
            head = node
        }
    }
    
    func deleteNode(withValue value: Int) {
        var current = head
        var previous: Node?

        while current?.value != value && current?.next != nil {
            previous = current
            current = current?.next
        }

        if current?.value == value {
            if previous != nil {
                previous?.next = current?.next
            } else {
                head = current?.next
            }
        }
    }
}



// Test cases

// Set up some Nodes
let n1 = Node(value: 1)
let n2 = Node(value: 2)
let n3 = Node(value: 3)
let n4 = Node(value: 4)

// Start setting up a LinkedList
let lL = LinkedList(head: n1)
lL.append(n2)
lL.append(n3)

// Test getNode
print(lL.head?.next?.next?.value) // 3
print(lL.getNode(atPosition: 3)!.value) // 3

// Test insert
lL.insertNode(n4, at: 3)
print(lL.getNode(atPosition: 3)!.value) // 4

// Test delete(withValue:)
lL.deleteNode(withValue: 1)
print(lL.getNode(atPosition: 1)!.value) // 2
print(lL.getNode(atPosition: 2)!.value) // 4
print(lL.getNode(atPosition: 3)!.value) // 3
