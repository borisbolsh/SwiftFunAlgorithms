func maxDistToClosest(_ seats: [Int]) -> Int {
    var lastOne = -1
    var maxDistance = 0
    
    for (i, seat) in seats.enumerated() {
        if seat == 1 {
            if lastOne == -1 {
                maxDistance = max(maxDistance, i)
            } else {
                maxDistance = max(maxDistance, (i - lastOne) / 2)
            }
            
            lastOne = i
        }
    }
    
    maxDistance = max(maxDistance, seats.count - lastOne - 1)
    
    return maxDistance
}

maxDistToClosest([1,0,0,0,1,0,1])   // 2
maxDistToClosest([1,0])             // 1
maxDistToClosest([0,0,0,1])         // 3
