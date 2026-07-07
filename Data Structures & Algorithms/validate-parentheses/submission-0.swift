class Solution {
    func isValid(_ s: String) -> Bool {
        guard s.count >= 2 else { return false }

        var stack = [Character]()

        for char in s {
           if char == "(" {
            stack.append(")")
           } else if char == "[" { 
            stack.append("]")
           } else if char == "{" {
            stack.append("}")
           } else {
            if char != stack.popLast() {
                return false
            }
           }
        }

        return stack.isEmpty

    }
}
