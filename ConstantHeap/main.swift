let heap = ConstantHeap<Int>()

heap.push(3)
heap.push(2)

print(heap.getAll())
print(heap.getMax())
print(heap.getMin())

heap.push(1)
print(heap.getAll())
print(heap.getMin())

heap.push(100)
print(heap.getAll())
print(heap.getMax())

heap.push(-1)
print(heap.getAll())
print(heap.getMin())

print(heap.top())

print(heap.pop())
print(heap.getAll())
print(heap.getMin())

heap.clearAll()
print(heap.getMin())
print(heap.getMax())
print(heap.getAll())
