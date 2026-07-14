class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var nums = nums.sorted()
        var result = Set<[Int]>()

        for (i, num) in nums.enumerated() {
            var j = i + 1
            var k = nums.count - 1

            while j < k {
                let sum = num + nums[j] + nums[k] 

                if sum == 0 {
                    result.insert([num, nums[j], nums[k]])
                    j+=1
                    k-=1
                } else if sum < 0 {
                    j += 1
                } else {
                    k -= 1
                }

             }
        }

        return Array(result)
        

    }
}