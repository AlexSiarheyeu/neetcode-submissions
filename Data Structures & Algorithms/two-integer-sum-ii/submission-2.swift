class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()

        for (idx, num) in numbers.enumerated() {
            if let index = dict[target-num] {
                return [index+1, idx+1]
            }
            dict[num] = idx
        }
           

        return []
    }
}
