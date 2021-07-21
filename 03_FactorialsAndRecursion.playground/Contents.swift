import UIKit


func factorialOfValue(value: UInt) -> UInt {
    
    if value == 0 { return 1 }
    
    var product: UInt = 1
    
    for i in 1...value{
        product = product * i
    }
    
    return product
}

//print(factorialOfValue(value: 4))
factorialOfValue(value: 4)


func recursiveFactorialOfValue(value: UInt) -> UInt {
    
    if value == 0 { return 1 }
    
    return value * recursiveFactorialOfValue(value: value - 1)
}
//print(recursiveFactorialOfValue(value: 4))
recursiveFactorialOfValue(value: 4)
