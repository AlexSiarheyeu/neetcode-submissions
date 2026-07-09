class Solution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
         var res = Array(repeating: 0, count: temperatures.count)
         var stack = [(Int, Int)]()

         for (i, t) in temperatures.enumerated() {
            while !stack.isEmpty && t > stack.last!.0 {
                let (stackT, stackInd) = stack.removeLast()
                res[stackInd] = i - stackInd
            }
            stack.append((t, i))
         }

         return res
    }
}
