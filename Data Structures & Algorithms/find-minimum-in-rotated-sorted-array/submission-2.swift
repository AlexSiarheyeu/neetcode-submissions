class Solution {
    func findMin(_ nums: [Int]) -> Int {
        var l = 0
        var r = nums.count - 1
        var res = nums[0]

        while l <= r {
            if nums[l] < nums[r] {
                res = min(res, nums[l])
                break
            }

            let mid = (r + l) / 2
            res = min(res, nums[mid])

            if nums[mid] >= nums[l] {
                l = mid + 1
            } else {
                r = mid - 1
            }
        }

        return res

    }
}
