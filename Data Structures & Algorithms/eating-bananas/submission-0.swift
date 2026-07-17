class Solution {
    func minEatingSpeed(_ piles: [Int], _ h: Int) -> Int {
        
        var l = 1
        var r = piles.max()!
        var res = r

        while l <= r {
            var k = (l + r) / 2
            var hours = 0

            for p in piles {
                hours += Int(ceil(Double(p) / Double(k)))
            }

            if hours <= h {
                res = min(res, k)
                r = k - 1
            } else {
                l = k + 1
            }
         }

         return res
    }
}
