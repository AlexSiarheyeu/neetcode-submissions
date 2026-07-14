class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var res = Set<[Int]>()
        // [-1, 0, 1, 2, -1, -4]
        // [-4, -1, -1, 0, 1, 2]
        let nums = nums.sorted()
        for i in 0..<nums.count {
            for j in i+1..<nums.count {
                for k in j+1..<nums.count {
                    if nums[i] + nums[j] + nums[k] == 0 {
                       res.insert([nums[i], nums[j], nums[k]])
                    }
                }
            }
        }

        return Array(res)
    }
}
