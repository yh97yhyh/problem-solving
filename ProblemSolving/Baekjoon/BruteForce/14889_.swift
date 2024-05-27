//
//  14889.swift
//  ProblemSolving
//
//  Created by 영현 on 5/27/24.
//

// 14889
// 스타트와 링크
// 답은 맞는데 시간 초과...

import Foundation

let N = Int(readLine()!)!
var table: [[Int]] = []

var starts: [[Int]] = [] // 똑같은 경우를 다시 계산하지 않도록

var start: [Int] = []
var startScore = 0
var link: [Int] = []
var linkScore = 0
var indices: [Int] = []

var answer = Int.max

for _ in 0..<N {
    let arr = readLine()!.split(separator: " ").map { Int(String($0))! }
    table.append(arr)
}

let n = N / 2

func recur2() {
    if indices.count == 2 {
        startScore += table[start[indices[0]]][start[indices[1]]] + table[start[indices[1]]][start[indices[0]]]
        linkScore += table[link[indices[0]]][link[indices[1]]] + table[link[indices[1]]][link[indices[0]]]
    }
    
    for i in 0..<n {
        if !indices.isEmpty && i < indices.last! {
            continue
        }
        
        if !indices.contains(i) {
            indices.append(i)
            recur2()
            indices.removeLast()
        }
    }
}

func recur() {
    if start.count == n {
        starts.append(start)
        
        // link 채우기
        for i in 0..<N {
            if !start.contains(i) {
                link.append(i)
            }
        }
        
        if !starts.contains(link) { // 똑같은 경우를 다시 계산하지 않도록
            // score 계산
            recur2()
            
//            print("start : \(start) - \(startScore)")
//            print("link : \(link) - \(linkScore)")
//            print("--------------------------")
            
            answer = min(answer, abs(startScore - linkScore))
            
        }
        
        link = []
        startScore = 0
        linkScore = 0
    
    }
    
    for i in 0..<N {
        if !start.isEmpty && i < start.last! {
            continue
        }
        
        if !start.contains(i) {
            start.append(i)
            recur()
            start.removeLast()
        }
    }
}


recur()
print(answer)

