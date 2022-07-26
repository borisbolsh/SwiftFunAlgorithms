import XCTest
@testable import algorithms

final class StackTests: XCTestCase {
	var stack = Stack<Int>()

	override func setUp() {
		stack.push(element: 1)
		stack.push(element: 2)
		stack.push(element: 3)
		stack.push(element: 4)
	}

	func testPushShouldReturnSuccess() {
		XCTAssertEqual(stack.description, "1 2 3 4")
	}

	func testPushShouldReturnFailed() {
		XCTAssertNotEqual(stack.description, "6 5 4 3")
	}

	func testPopShouldReturnSuccess() {
		XCTAssertEqual(stack.pop(), 4)
	}

	func testPopShouldReturnFailed() {
		XCTAssertNotEqual(stack.pop(), 9)
	}

	func testPeekShouldReturnSuccess() {
		XCTAssertEqual(stack.peek(), 4)
	}

	func testPeekShouldReturnFailed() {
		XCTAssertNotEqual(stack.peek(), 1)
	}

	func testIsEmptyShouldReturnSuccess() {
		XCTAssertFalse(stack.isEmpty())
	}

	func testIsEmptyShouldReturnFailed() {
		stack = []
		XCTAssertTrue(stack.isEmpty())
	}

	func testInitWithArrayShouldReturnSuccess() {
		let array = [1, 2, 3, 4]
		XCTAssertEqual(stack, Stack(elements: array))
	}

	func testArrayLiteralShouldReturnSuccess() {
		let stack: Stack = ["cat", "dog", "rooster"]
		XCTAssertEqual(stack, ["cat", "dog", "rooster"])
	}
}
