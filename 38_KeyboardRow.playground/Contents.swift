
class KeyboardRow {
    func findWords(_ words: [String]) -> [String] {
        let rowOne = "qwertyuiop"
        let rowTwo = "asdfghjkl"
        let rowThree = "zxcvbnm"
        
        return words.filter { word in rowOne.contains(word.lowercased()) || rowTwo.contains(word.lowercased()) || rowThree.contains(word.lowercased()) }
    }
}

extension String {
    func contains(_ word: String) -> Bool {
        return word.filter { c in !self.contains(c) }.count == 0
    }
}

let newRow = KeyboardRow()
newRow.findWords(["Hello","Alaska","Dad","Peace"]) // ["Alaska", "Dad"]
