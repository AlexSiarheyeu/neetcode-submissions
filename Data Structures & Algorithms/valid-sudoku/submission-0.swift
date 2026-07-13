class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        struct SudokuKey: Hashable {
            let r, c: Int
        }
        var rows = [Int: Set<Character>]()
        var columns = [Int: Set<Character>]()
        var squares = [SudokuKey: Set<Character>]() // key = (r/3, c/3)

        for r in 0..<9 {
            for c in 0..<9 { 
                if board[r][c] == "." {
                    continue
                }

                if rows[r, default: []].contains(board[r][c]) || 
                    columns[c, default: []].contains(board[r][c]) ||
                    squares[SudokuKey(r: r/3, c: c/3), default: []].contains(board[r][c])
                {
                      return false
                }

                let curr = board[r][c]

                columns[c, default: []].insert(curr)
                rows[r, default: []].insert(curr)
                squares[SudokuKey(r: r/3, c: c/3), default: []].insert(curr)
            }
        }

        return true
    }
}
