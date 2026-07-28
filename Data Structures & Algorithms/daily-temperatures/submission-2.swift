class Solution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        var res = Array(repeating: 0, count: temperatures.count)
        var stack = [(Int, Int)]()

        for (idx, temp) in temperatures.enumerated() {
            while !stack.isEmpty, temp > stack.last!.0 {
                let (t, i) = stack.removeLast()
                res[i] = idx - i
            }
            stack.append((temp, idx))
        }

        return res
         
    }
}
