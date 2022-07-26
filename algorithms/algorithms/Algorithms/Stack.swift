import Foundation

struct Stack<Element: Equatable>: Equatable {
	private var storage: [Element] = []

	init(){}

	init(elements: [Element]) {
		storage = elements
	}

	mutating func push(element: Element) {
		storage.append(element)
	}

	mutating func pop() -> Element? {
		return storage.popLast()
	}

	func peek() -> Element? {
		return storage.last
	}

	func isEmpty() -> Bool {
		return peek() == nil
	}
}

extension Stack: CustomStringConvertible {
	var description: String {
		return storage
			.map { "\($0)"}
			.joined(separator: " ")
	}
}

extension Stack: ExpressibleByArrayLiteral {
	init(arrayLiteral elements: Element...) {
		storage = elements
	}
}
