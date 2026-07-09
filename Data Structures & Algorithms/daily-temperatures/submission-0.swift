class Solution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        var res = [Int]()
        var n = temperatures.count

        for i in 0..<n {
            var count = 1
            var j = i + 1

            while j < n {
                if temperatures[j] > temperatures[i] {
                    break
                }

                j += 1
                count += 1
            }

            count = (j == n) ? 0 : count
            res.append(count)
        }

        return res
    }
}
