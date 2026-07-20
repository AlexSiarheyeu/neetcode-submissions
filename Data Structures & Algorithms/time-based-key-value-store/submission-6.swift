class TimeMap {

    private struct TimeMapValue {
        let value: String
        let timestamp: Int
    }

    private var map: [String: [TimeMapValue]] = [:] 

    init() { }

    func set(_ key: String, _ value: String, _ timestamp: Int) {
        let value = TimeMapValue(value: value, timestamp: timestamp)
        map[key, default: []].append(value)
    }

    func get(_ key: String, _ timestamp: Int) -> String {
        guard let values = map[key] else {
            return ""
        }
       
        var res = ""

        var l = 0
        var r = values.count - 1

        while l <= r {
            let mid = (r + l) / 2

            if values[mid].timestamp <= timestamp {
                res = values[mid].value
                l = mid + 1
            } else {
                r = mid - 1
            }
        }

        return res
    }
}




