var numbers = [90, 10, 1, 15, 6, 8, 55, 3, 12, 72]

func quickSort(_ items: [Int]) -> [Int] {
    guard items.count > 1 else { return items }

    let median = items[items.count / 2]
    let less = items.filter { $0 < median }
    let equal =  items.filter { $0 ==  median }
    let greater =  items.filter { $0 > median }
    
    return quickSort(less) + equal + quickSort(greater)
}

print(quickSort(numbers)) // [1, 3, 6, 8, 10, 12, 15, 55, 72, 90]