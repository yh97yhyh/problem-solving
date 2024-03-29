//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/16.
//

// 최단경로
// 1753

import Foundation

struct MaxHeap<T: Comparable> {
    var heap: Array<T> = []
    
    init(_ data: T) {
        heap.append(data)       // 0번 index 채우기용
        heap.append(data)       // 실제 Root Node 채우기
    }
    
    mutating func insert(_ data: T) {
        if heap.isEmpty {
            heap.append(data)
            heap.append(data)
            return
        }
        heap.append(data)
        
        func isMoveUp(_ insertIndex: Int) -> Bool {
            if insertIndex <= 1 {               // 루트 노드일 때
                return false
            }
            let parentIndex: Int = insertIndex / 2
            return heap[insertIndex] > heap[parentIndex] ? true : false
        }
        
        var insertIndex: Int = heap.count - 1
        while isMoveUp(insertIndex) {
            let parentIndex: Int = insertIndex / 2
            heap.swapAt(insertIndex, parentIndex)
            insertIndex = parentIndex
        }
    }
    
    enum moveDownStatus { case left, right, none }
    
    mutating func pop() -> T? {
        if heap.count <= 1 { return nil }
        
        let returnData = heap[1]
        heap.swapAt(1, heap.count - 1)
        heap.removeLast()
        
        func moveDown(_ poppedIndex: Int) -> moveDownStatus {
            let leftChildIndex = (poppedIndex * 2)
            let rightCildIndex = leftChildIndex + 1
            
            // case1. 모든(왼쪽) 자식 노드가 없는 경우 (완전이진트리는 왼쪽부터 채워지므로)
            if leftChildIndex >= (heap.count) {
                return .none
            }
            
            // case2. 왼쪽 자식 노드만 있는 경우
            if rightCildIndex >= (heap.count) {
                return heap[leftChildIndex] > heap[poppedIndex] ? .left : .none
            }
            
            // case3. 왼쪽 & 오른쪽 자식 노드 모두 있는 경우
            // case 3-1. 자식들이 자신보다 모두 작은 경우
            if (heap[leftChildIndex] < heap[poppedIndex]) && (heap[rightCildIndex] < heap[poppedIndex]) {
                return .none
            }
            
            // case 3-2. 자식들이 자신보다 모두 큰 경우 (왼쪽과 오른쪽 자식 중 더 큰 자식 선별)
            if (heap[leftChildIndex] > heap[poppedIndex]) && (heap[rightCildIndex] > heap[poppedIndex]) {
                return heap[leftChildIndex] > heap[rightCildIndex] ? .left : .right
            }
            
            // case 3-3. 왼쪽 & 오른쪽 중 한 자식만 자신보다 큰 경우
            return heap[leftChildIndex] > heap[poppedIndex] ? .left : .right
        }
        
        var poppedIndex = 1
        while true {
            switch moveDown(poppedIndex) {
            case .none:
                return returnData
            case .left:
                let leftChildIndex = poppedIndex * 2
                heap.swapAt(poppedIndex, leftChildIndex)
                poppedIndex = leftChildIndex
            case .right:
                let rightChildIndex = (poppedIndex * 2) + 1
                heap.swapAt(poppedIndex, rightChildIndex)
                poppedIndex = rightChildIndex
                
            }
        }
    }
    
    func isEmpty() -> Bool {
        return heap.count <= 1 ? true : false
    }
}

struct NodePriority: Comparable {
    static func < (lhs: NodePriority, rhs: NodePriority) -> Bool {
        lhs.priority > rhs.priority
    }
    var node: Int = 0
    var priority: Int = 0
}

let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
let v = inputs[0] // 정점 개수
let e = inputs[1] // 간선 개수
var start = Int(readLine()!)! // 시작 점

var adj: [[(Int, Int)]] = Array(repeating: [], count: v+1)
var distances: [Int] = []
for _ in 0..<e {
    let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
    let from = inputs[0]
    let to = inputs[1]
    let dist = inputs[2]
    adj[from].append((to, dist))
}

for i in 0..<v+1 {
    adj[i].sort(by: { $0.1 < $1.1 })
    
    if i == 0 || i == start {
        distances.append(0)
    } else {
        distances.append(Int.max)
    }
}

//func dijkstra(_ start: Int) {
//    var queue = [(start, 0)]
//    
//    while true {
//        if queue.isEmpty {
//            break
//        }
//        
//        let x = queue.removeFirst()
//        let xNode = x.0
//        
//        for y in adj[xNode] {
//            let newDistance = distances[xNode] + y.1
//            if newDistance < distances[y.0] {
//                distances[y.0] = newDistance
//                queue.append(y)
//            }
//        }
//    }
//}

func dijkstra(_ start: Int) {
    var priorityQueue = MaxHeap(NodePriority(node: start, priority: 0))
    
    while true {
        if priorityQueue.isEmpty() {
            break
        }
        
        let x = priorityQueue.pop()!
        
        if distances[x.node] < x.priority {
            continue
        }
        
        for (node, priority) in adj[x.node] {
            let newDistance = priority + x.priority
            if newDistance < distances[node] {
                distances[node] = newDistance
                priorityQueue.insert(NodePriority(node: node, priority: newDistance))
            }
        }
        
    }
}

dijkstra(start)

var answer = ""
for i in 1..<v+1 {
    if distances[i] == Int.max {
        answer += "INF\n"
    } else {
        answer += "\(distances[i])\n"
    }
}
print(answer)
