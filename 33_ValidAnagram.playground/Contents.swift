func isAnagram(s: String, _ t: String) -> Bool {
    let sCharsFreq = Dictionary(s.map { ($0, 1) }, uniquingKeysWith: +)
    let tCharsFreq = Dictionary(t.map { ($0, 1) }, uniquingKeysWith: +)
    
    return sCharsFreq == tCharsFreq
}


isAnagram(s:"anagram", "nagaram") // true
