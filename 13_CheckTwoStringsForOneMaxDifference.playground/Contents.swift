func isOneAwaySameLength(firstString: String, secondString: String) -> Bool {
    var countDifferent = 0
    for i in 0...firstString.count - 1 {
        let indexFirst = firstString.index(firstString.startIndex, offsetBy: i)
        let indexSecond = secondString.index(secondString.startIndex, offsetBy: i)
        if firstString[indexFirst] != secondString[indexSecond] {
            countDifferent += 1
            if countDifferent > 1 {
                return false
            }
        }
    }
    return true
}

func isOneAwayDiffLength(firstString: String, secondString: String) -> Bool {
    var i = 0
    var countDifferent = 0
    while i < secondString.count {
        let indexFirst = firstString.index(firstString.startIndex, offsetBy: i + countDifferent)
        let indexSecond = secondString.index(secondString.startIndex, offsetBy: i)
        if firstString[indexFirst] == secondString[indexSecond] {
            i += 1
        } else {
            countDifferent += 1
            if countDifferent > 1 {
                return false
            }
        }
    }
    return true
}

func isOneAway(firstString: String, secondString: String) -> Bool {
    if firstString.count - secondString.count >= 2 || secondString.count - firstString.count >= 2 {
        return false
    } else if firstString.count == secondString.count {
        return isOneAwaySameLength(firstString: firstString, secondString: secondString)
    } else if firstString.count > secondString.count {
        return isOneAwayDiffLength(firstString: firstString, secondString: secondString)
    } else {
        return isOneAwayDiffLength(firstString: secondString, secondString: firstString)
    }
}

isOneAway(firstString: "hello", secondString: "helg")
isOneAway(firstString: "helo", secondString: "helg")
isOneAway(firstString: "hello", secondString: "hello")


