//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/26.
//

// 회사 문화 1
// 14267
// 런타임에러 뜨는데 이유를 모름

import Foundation

let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = inputs[0] // 회사 직원 수
let m = inputs[1] // 최초의 칭찬 횟수
let bosses = readLine()!.split(separator: " ").map { Int(String($0))! } // 직원 n명의 직속 상사 번호

var tree: [[(Int, Int)]] = Array(repeating: [], count: n+1)
for _ in 0..<m {
    let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
    let i = inputs[0] // 직속 상사로부터 칭찬을 받은 직원 번호 i
    let w = inputs[1] // 칭찬 수치 w
    let boss = bosses[i-1]
    if tree[boss].isEmpty {
        tree[boss].append((i, w))
    } else {
        if let index = tree[boss].firstIndex(where: { $0.0 == i } ) {
            let origin = tree[boss][index]
            tree[boss][index] = (origin.0, origin.1 + w)
        } else {
            tree[boss].append((i, w))
        }
    }
}

for i in 1..<tree.count-1 {
    if tree[i].isEmpty {
        
    }
}

print(tree)

//var scores = Array(repeating: 0, count: n+1)
//var visited = Array(repeating: false, count: n+1)
//
//func dfs(_ x: Int) {
//    visited[x] = true
//    if x >= n {
//        return
//    }
//
//    for y in tree[x] {
//        let manager = y.0
//        if !visited[manager] {
//            let weight = y.1
//            scores[manager] += scores[x] + weight
//            print(x, y, scores)
//            dfs(manager)
//        }
//    }
//}
//
//dfs(1)
//
//var result = ""
//for i in 1...n {
//    result += "\(scores[i]) "
//}
//print(result)
