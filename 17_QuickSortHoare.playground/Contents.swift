var numbers = [90, 10, 1, 15, 6, -2, 8, 55, -5, 3, 12, 72, 4]

func partitionHoare(_ a: inout [Int], low: Int, high: Int) -> Int {
    let pivot = a[low]
    var i = low - 1
    var j = high + 1
    
    while true {
        repeat { j -= 1 } while a[j] > pivot
        repeat { i += 1 } while a[i] < pivot
        if i < j {
            a.swapAt(i, j)
        } else {
            return j
        }
    }
}

func quickSortHoare(_ a: inout [Int], low: Int, high: Int) {
    if low < high {
        let p = partitionHoare(&a, low: low, high: high)
        quickSortHoare(&a, low: low, high: p)
        quickSortHoare(&a, low: p + 1, high: high)
    }
}

quickSortHoare(&numbers, low: 0, high: numbers.count - 1)
print(numbers)