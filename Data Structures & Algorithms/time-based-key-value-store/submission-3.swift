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

        let sortedValues = values
        
        var l = 0
        var r = sortedValues.count - 1
        var res = ""

        while l <= r {
            let m = (r + l) / 2

            if sortedValues[m].timestamp <= timestamp {
                res = sortedValues[m].value
                l = m + 1
            } else {
                r = m - 1
            }
        }

        return res
    }
}




