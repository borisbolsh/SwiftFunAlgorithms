func validParentheses(_ s: String) -> Bool {
    var stack = [Character]()
    
    for char in s {
        if char == "(" || char == "[" || char == "{" {
            stack.append(char)
        } else if char == ")" {
            guard stack.count != 0 && stack.removeLast() == "(" else {
                return false
            }
        } else if char == "]" {
            guard stack.count != 0 && stack.removeLast() == "[" else {
                return false
            }
        } else if char == "}" {
            guard stack.count != 0 && stack.removeLast() == "{" else {
                return false
            }
        }
    }
    
    return stack.isEmpty
}

validParentheses("()[]{}")  // true
validParentheses("()]{}")   // false
validParentheses("[]")      // true
