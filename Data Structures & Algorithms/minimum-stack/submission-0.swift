class MinStack {
    private var stack: [Int] = []

    init() { }

    func push(_ val: Int) {
        stack.append(val)
    }

    func pop() {
        stack.popLast()
    }

    func top() -> Int {
        stack.last!
    }

    func getMin() -> Int {
        stack.min()!
    }
}
