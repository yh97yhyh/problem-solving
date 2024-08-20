//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 8/19/24.
//

// 숫자고르기
// 2668

import Foundation

let n = Int(readLine()!)!

var graph: [[Int]] = Array(repeating: [], count: n+1)
var visited: [Bool] = Array(repeating: false, count: n+1)

for i in 1...n {
    let b = Int(readLine()!)!
    graph[i].append(b)
}

var cycles: [[Int]] = []
var cycle:[Int] = []

func dfs(_ x: Int, _ start: Int) {
    visited[x] = true
    cycle.append(x)
    
    for y in graph[x] {
        if !visited[y] {
            dfs(y, start)
        } else if y == start {
            cycles.append(cycle)
            return
        }
    }
}

for i in 1...n {
    visited = Array(repeating: false, count: n+1)
    cycle = []
    dfs(i, i)
}

var result = Set<Int>()
for cycle in cycles {
    for c in cycle {
        result.insert(c)
    }
}
let res = result.sorted()
print(res.count)
for r in res {
    print(r)
}

//print(graph)
//print(cycles)

//for i in 1...n {
//    let num = Int(readLine()!)!
//    arr[0][i] = i+1
//    arr[1][i] = num
//    
//    if numInfos[num] != nil {
//        numInfos[num]!.append(i)
//    } else {
//        numInfos[num] = [i]
//    }
//}
//
//print(arr)
//print(numInfos)

//var curMax = 0
//var nums1 = [(Int, Int)]()
//var nums2 = [(Int, Int)]()
