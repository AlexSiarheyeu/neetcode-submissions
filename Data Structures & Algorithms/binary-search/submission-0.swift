class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        guard nums.count >= 1 else { return -1 }

        var i = 0
        var j = nums.count - 1

        while i <= j {
            var mid = i + (j - i) / 2

            if nums[mid] > target {
                j = mid - 1
            } else if nums[mid] < target {
                i = mid + 1
            } else {
                return mid
            }
        }

        return -1
    }
}
