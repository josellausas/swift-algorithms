public struct Stack<T> {
    private var storage: [T] = []
    public init() {
        self.storage = []
    }

    public mutating func push(_ element: T) {
        storage.append(element)
    }

    public mutating func pop() -> T? {
        storage.popLast()
    }
}

extension Stack: CustomStringConvertible {
    public var description: String {
        """
        ----top----
        \(storage.map { "\($0)" }.reversed().joined(separator: "\n"))
        -----------
        """
    }
}