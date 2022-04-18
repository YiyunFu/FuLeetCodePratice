import Foundation

func gridChallenge(grid: [String]) -> String {
    // Write your code here
    var newGrid: [[Character]] = []
    for string in grid {
        newGrid.append(string.sorted())
    }

    for i in 0..<(newGrid.first ?? []).count {
        for j in 0..<newGrid.count {
            if j+1 < newGrid.count
            {
                let current = newGrid[j][i]
                let next = newGrid[j+1][i]
                print(i,j,current,next)
                if next < current
                {
                    return "NO"
                }
            }
        }
    }
    
    return "YES"
}
gridChallenge(grid: [
    "abc",
    "def",
    "ghi",
    "jkl"
])
