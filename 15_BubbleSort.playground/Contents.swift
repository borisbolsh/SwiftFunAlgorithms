var numbers = [90, 10, 1, 15, 6, 8, 55, 3, 12, 72]

for i in 0..<numbers.count {
	let last = (numbers.count - 1) - i

	for j in 0..<last {
		let number = numbers[j]
		let nextNumber = numbers[j+1]
		if number > nextNumber {
			 numbers[j] = nextNumber		
			 numbers[j+1] = number
		}
	}
}

print(numbers)