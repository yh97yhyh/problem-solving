//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/15.
//

// 트리
// 1068

// 테스트케이스
// https://codecollector.tistory.com/777
// https://dar0m.tistory.com/115

import Foundation

let n = Int(readLine()!)!
let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
let removeNode = Int(readLine()!)!

var tree: [[Int]] = Array(repeating: [], count: n+1)
var parent = Array(repeating: 0, count: n+1)
var leaves: [Int] = []
var startNode = 0

for i in 0..<n {
    if inputs[i] == -1 {
        startNode = i
//        print(startNode)
        continue
    }
    let a = i
    let b = inputs[i]
    tree[a].append(b)
    tree[b].append(a)
}

var result = 0
func dfs(_ x: Int, _ par: Int) {
    if x == removeNode {
        if tree[par].count < 3 && par != startNode {
            leaves.append(x)
        }
        return
    }
    if tree[x].count == 1 || x == removeNode {
        leaves.append(x)
        return
    }
    for y in tree[x] {
        if y == par {
            continue
        }
        parent[y] = x
        dfs(y, x)
    }
}

if startNode != removeNode {
    dfs(startNode, -1)
}
print(leaves.count)
