import UIKit

var sampleSentence = "Hello playground lets start today by completing a very interesting challenge"

func reverseWordsInSentence(sentence: String) -> String {
    let allWords = sentence.components(separatedBy: " ")
    var newSentence = ""
    
    for word in allWords {
        if newSentence != "" {
            newSentence += " "
        }
        newSentence += word.reversed()
        
    }
    return newSentence
}

reverseWordsInSentence(sentence: sampleSentence)
