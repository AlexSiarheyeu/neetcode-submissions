class Solution {
    func maxArea(_ heights: [Int]) -> Int {
        guard heights.count >= 2 else { return 0 }

        var res = 0
        var i = 0
        var j = heights.count - 1

        while i < j {
            let width = j - i
            let height = min(heights[j], heights[i])
            res = max(res, height * width)

            if heights[j] >= heights[i] {
                i += 1
            } else {
                j -= 1
            }
        }

        return res
    }
}