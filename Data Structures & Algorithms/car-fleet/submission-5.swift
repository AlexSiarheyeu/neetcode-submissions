class Solution {
    func carFleet(_ target: Int, _ position: [Int], _ speed: [Int]) -> Int {
        var pairs = Array(zip(position, speed)).sorted { $0.0 > $1.0 }
        var stack = [Double]()

        for (position, speed) in pairs {
            let time = Double(target - position) / Double(speed)

            if (stack.last ?? 0) < time {
                stack.append(time)
            }
        }

        return stack.count
    }
}
