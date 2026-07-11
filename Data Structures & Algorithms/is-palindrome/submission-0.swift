class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let chars = Array(s.filter { $0.isNumber || $0.isLetter }.lowercased())

        var i = 0
        var j = chars.count - 1

        while i < j {
            if chars[i] != chars[j] {
                return false
            }

            i += 1
            j -= 1
        }

        return true
    }
}
