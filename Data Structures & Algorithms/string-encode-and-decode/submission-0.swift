class Solution {

    private var cache = [String:[String]]()

    func encode(_ strs: [String]) -> String {
        let encoded = strs.joined(separator: " ")
        cache[encoded, default: []] = strs
        return encoded
    }

    func decode(_ str: String) -> [String] {
        if let value = cache[str] {
            return value
        } else {
            let decode = str.components(separatedBy: " ")
            cache[str] = decode
            return decode
        }

        return []
    }
}
