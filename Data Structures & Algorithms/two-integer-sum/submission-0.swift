class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()

        for (idx, num) in nums.enumerated() {
            if let jdx = dict[target-num] {
                return [jdx, idx]
            }
            dict[num] = idx
        }

        return []
    }
}

