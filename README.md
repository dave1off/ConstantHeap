# ConstantHeap

Data structure which performs basic `push`, `pop` and `top` and additional `getMax` & `getMin` operations for ``O(1)``

## Simple Usage

`ConstraintHeap` works with any types that conform to `Comparable` protocol.

Creating the instance

```swift
let heap = ConstraintHeap<Int>()
```

Put some elements in

```swift
heap.push(3)
heap.push(2)
```

You are free to perform operations

```swift
heap.push(100)
print(heap.getMax())

heap.push(-1)
print(heap.getMin())
```

Full example can be found in the `main.swift`