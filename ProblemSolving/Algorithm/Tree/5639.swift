//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/20.
//


// 이진 검색 트리
// 5639
// 풀이 https://trumanfromkorea.tistory.com/49

import Foundation

var preOrderList: [Int] = []
preOrderList.append(Int(readLine()!)!)
while let input = readLine(), let n = Int(input) {
    preOrderList.append(n)
}

func findHigherIndex( _ start: Int, _ end: Int, _ compare: Int) -> Int {
    var higherIndex = end
    
    for i in start..<end {
        if preOrderList[i] > compare {
            higherIndex = i
            break
        }
    }
    return higherIndex
}

func postOrder(_ start: Int, end: Int) {
    if start >= end {
        return
    }
    let higherIndex = findHigherIndex(start+1, end, preOrderList[start])
    postOrder(start+1, end: higherIndex)
    postOrder(higherIndex, end: end)
    print(preOrderList[start])
}

postOrder(0, end: preOrderList.count)
