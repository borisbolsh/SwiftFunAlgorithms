var testArray = [129, 21, 4, 1, -3, 9, 2, 20, 25, 6, 21, 14]

func quicksort(_ input: [Int], low: Int, high: Int) -> [Int] {
    var result = input

        if low < high {
            let pivot = result[high]
            var i = low

            for j in low..<high {
                if result[j] <= pivot {
                    (result[i], result[j]) = (result[j], result[i])
                    i += 1
                }
            }
            (result[i], result[high]) = (result[high], result[i])
            result = quicksort(result, low: low, high: i - 1)
            result = quicksort(result, low: i + 1, high: high)
        }
    
    return result
}

print(quicksort(testArray, low: 0, high: testArray.count - 1))
