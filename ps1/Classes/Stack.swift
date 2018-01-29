// Copyright (c) 2018 NUS CS3217. All rights reserved.

/**
 A generic `Stack` class whose elements are last-in, first-out.

 - Authors: CS3217
 - Date: 2018
 */
public struct Stack<T> {
    
    public init() {}

    // array holding data. Stack head is first element of array
    private var data = [T]()

    /// Adds an element to the top of the stack.
    /// - Parameter item: The element to be added to the stack
    public mutating func push(_ item: T) {
        data.insert(item, at: 0)
    }

    /// Removes the element at the top of the stack and return it.
    /// - Returns: element at the top of the stack
    public mutating func pop() -> T? {
        guard data.isEmpty else {
            return data.removeFirst()
        }
        return nil

    }

    /// Returns, but does not remove, the element at the top of the stack.
    /// - Returns: element at the top of the stack
    public func peek() -> T? {
        return data.first
    }

    /// The number of elements currently in the stack.
    public var count: Int {
        return data.count
    }

    /// Whether the stack is empty.
    public var isEmpty: Bool {
        return data.isEmpty
    }

    /// Removes all elements in the stack.
    public mutating func removeAll() {
        data.removeAll(keepingCapacity: false)
    }

    /// Returns an array of the elements in their respective pop order, i.e.
    /// first element in the array is the first element to be popped.
    /// - Returns: array of elements in their respective pop order
    public func toArray() -> [T] {
        return data
    }
}
