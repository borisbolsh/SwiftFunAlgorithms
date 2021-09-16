func validPalindrome(_ s: String) -> Bool {
    let s = Array(s)
    return isValid(true, s) || isValid(false, s)
}

func isValid(_ skipLeft: Bool, _ s: [Character]) -> Bool {
    var i = 0
    var j = s.count - 1
    var alreadySkipped = false
    
    while i < j {
        if s[i] == s[j] {
            i += 1
            j -= 1
        } else {
            if alreadySkipped {
                return false
            } else {
                alreadySkipped = true
                if skipLeft {
                    i += 1
                } else {
                    j -= 1
                }
            }
        }
    }
    
    return true
}

validPalindrome("abba")     // true
validPalindrome("oppa")     // false
