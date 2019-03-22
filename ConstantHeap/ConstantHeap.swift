final public class ConstantHeap<T> where T: Comparable {
    
    private var array: [T] = []
    private var max: [T] = []
    private var min: [T] = []
    
    public func push(_ element: T) {
        array.append(element)
        
        setupMinArrayFor(element)
        setupMaxArrayFor(element)
    }
    
    public func pop() -> T? {
        _ = min.popLast()
        _ = max.popLast()
        
        return array.popLast()
    }
    
    public func top() -> T? {
        return array.last
    }
    
    public func getMax() -> T? {
        return max.last
    }
    
    public func getMin() -> T? {
        return min.last
    }
    
    public func getAll() -> [T] {
        return array
    }
    
    public func clearAll() {
        array.removeAll()
        min.removeAll()
        max.removeAll()
    }
}

extension ConstantHeap {
    
    private func setupMinArrayFor(_ newElement: T) {
        guard let lastMin = min.last else {
            min.append(newElement)
            return
        }
        
        min.append(lastMin > newElement ? newElement : lastMin)
    }
    
    private func setupMaxArrayFor(_ newElement: T) {
        guard let lastMax = max.last else {
            max.append(newElement)
            return
        }
        
        max.append(lastMax > newElement ? lastMax : newElement)
    }
    
}
