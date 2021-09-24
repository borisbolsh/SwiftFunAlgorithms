 func isIsomorphic(_ s: String, _ t: String) -> Bool {
    guard s.count == t.count else {
        return false
    }
    
    var stDict = [Character: Character]()
    var tsDict = [Character: Character]()
    let s = Array(s)
    let t = Array(t)
    
    for (i, sChar) in s.enumerated() {
        let tChar = t[i]
        
        if stDict[sChar] == nil && tsDict[tChar] == nil {
            stDict[sChar] = tChar
            tsDict[tChar] = sChar
        } else if stDict[sChar] != tChar || tsDict[tChar] != sChar {
            return false
        }
    }
    
    return true
 }

isIsomorphic("paper", "title")   // true
isIsomorphic("fizz", "buzz")     // true
isIsomorphic("lot", "egg")       // false
