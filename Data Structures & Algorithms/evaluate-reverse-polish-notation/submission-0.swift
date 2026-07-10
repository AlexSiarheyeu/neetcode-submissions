class Solution {
    func evalRPN(_ tokens: [String]) -> Int {

        var stack = [Int]()
        
        for token in tokens {

            if token == "+" {
                let l = stack.removeLast()
                let r = stack.removeLast()

                stack.append(r + l)

            } else if token == "-" {
                let l = stack.removeLast()
                let r = stack.removeLast()

                stack.append(r - l)

            } else if token == "*" {
                let l = stack.removeLast()
                let r = stack.removeLast()

                stack.append(r * l)

            } else if token == "/" {
                let l = stack.removeLast()
                let r = stack.removeLast()

                stack.append(r / l)
                
            } else {
                stack.append(Int(token)!)
            }
        }

        return stack[0]

    }
}
