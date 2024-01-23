//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/12.
//

// DFS와 BFS
// 1260
// 풀이 : https://velog.io/@sun02/Swift-%EB%B0%B1%EC%A4%80-1260-DFS%EC%99%80-BFS

import Foundation

let inputs1 = readLine()!.split(separator: " ").map { Int(String($0))! }

let n = inputs1[0]
let m = inputs1[1]
let v = inputs1[2]

var graph : [[Int]] = Array(repeating: [], count: n+1)
var dfsVisited = Array(repeating: false, count: n+1)
var bfsVisited = Array(repeating: false, count: n+1)

var dfsResult = "\(v) "
var bfsResult = "\(v) "

for _ in 0..<m {
    let inputs2 = readLine()!.split(separator: " ").map { Int(String($0))! }
    let a = inputs2[0]
    let b = inputs2[1]
    graph[a].append(b)
    graph[b].append(a)
}

for i in 1..<graph.count {
    graph[i].sort()
}

//print(graph)

func dfs(_ x: Int) {
    dfsVisited[x] = true
//    dfsResult += "\(x) "
    
    for y in graph[x] {
        if !dfsVisited[y] {
            dfsResult += "\(y) "
            dfs(y)
        }
    }
}

func bfs(_ startNode: Int) {
    var toVisits: [Int] = [startNode] // queue
    bfsVisited[startNode] = true

    while true {
        if toVisits.isEmpty {
            break
        }

        let x = toVisits.removeFirst()
        for y in graph[x] {
            if !bfsVisited[y] {
                bfsResult += "\(y) "
                toVisits.append(y)
                bfsVisited[y] = true
            }
        }
    }
}

dfs(v)
bfs(v)
print(dfsResult)
print(bfsResult)

//for _ in 0..<m {
//    let inputs2 = readLine()!.split(separator: " ").map { Int(String($0))! }
//    if let index = nodes.firstIndex(where: { $0.point == inputs2[0] } ){
//        nodes[index].edges.append(inputs2[1])
//    } else {
//        var edges: [Int] = []
//        edges.append(inputs2[1])
//        nodes.append(Node(point: inputs2[0], edges: edges))
//    }
//}
//
//for i in 0..<nodes.count {
//    nodes[i].edges.sort()
//}
//
//print(nodes)
//
//func dfs(_ currentNode: Node) {
//    visited.append(currentNode.point)
////    print(visited)
//
//    for edge in currentNode.edges {
//        if visited.contains(edge) {
//            print("pass : \(edge)")
//            continue
//        }
//        if let index = nodes.firstIndex(where: {$0.point == edge} ) {
//            print("next1 : \(edge)")
//            dfs(nodes[index])
//        } else {
//            print("next2 : \(edge)")
//            visited.append(edge)
//        }
//    }
//}
//
//if let startIndex = nodes.firstIndex(where: { $0.point == v }) {
//    dfs(nodes[startIndex])
//}
//print("result : \(visited)")
//
////func bfs() {
////
////}
