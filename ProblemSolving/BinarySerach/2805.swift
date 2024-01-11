//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/11.
//

// 나무 자르기
// 2805
// 테스트케이스 https://joey09.tistory.com/113
// 풀이 https://youjean.tistory.com/36

import Foundation

let inputs1 = readLine()!.split(separator: " ").map { Int64(String($0))! }
let trees = readLine()!.split(separator: " ").map { Int64(String($0))! }
let sortedTrees = trees.sorted(by: >)
//print(sortedTrees)

let treeNum = inputs1[0]
let wantTreeLength = inputs1[1]

var maxCut = sortedTrees.first!
var sumLength: Int64 = 0
var isCanStop = false

while true {
    for tree in sortedTrees {
        if tree > maxCut {
            sumLength += tree - maxCut
        } else {
            break
        }
        if sumLength >= wantTreeLength {
            isCanStop = true
            break
        }
    }
    
    if isCanStop {
        break
    }
    sumLength = 0
    maxCut -= 1
}

print(maxCut)

