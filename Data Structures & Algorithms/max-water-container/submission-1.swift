class Solution {
    func maxArea(_ heights: [Int]) -> Int {
        //guard heights.count > 2 else { return 0 }

        var res = 0

        for i in 0..<heights.count {
            for j in i+1..<heights.count {
                let diff = j - i
                let curr = min(heights[j], heights[i])

                res = max(res, curr * diff)
            }
        }

        return res
    }
}