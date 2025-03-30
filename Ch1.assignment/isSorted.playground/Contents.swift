import UIKit

class List<T> {
    let value: T
    let next: List<T>?
    
    init(value: T, next: List<T>?) {
        self.value = value
        self.next = next
    }
}

let head = initializeList(until: 10, initialValue: 0, nextValue: { $0 + 1 })
printList(head)
print(isSorted(list: head!, order: <))

func isSorted<T>(list node: List<T>, order: (T, T) -> Bool) -> Bool {
    guard let next = node.next else { return true }
    return if order(node.value, next.value) {
        isSorted(list: next, order: order)
    } else {
        false
    }
}

func initializeList<T: Comparable & AdditiveArithmetic>(
    next: List<T>? = nil,
    until max: T,
    initialValue value: T,
    nextValue: (T) -> T
) -> List<T>? {
    let p = max - value
    let node = List(value: p, next: next)
    guard max != value else {
        return node
    }
    return initializeList(
        next: node,
        until: max,
        initialValue: nextValue(value),
        nextValue: nextValue
    )
}

func printList<T>(_ node: List<T>?) {
    if let node {
        print(node.value)
        printList(node.next)
    }
}

