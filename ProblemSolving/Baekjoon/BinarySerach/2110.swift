//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 5/30/24.
//

// 공유기 설치
// 2110

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0] // 집 갯수
let C = input[1] // 공유기 갯수

var houses: [Int] = []

for _ in 0..<N {
    houses.append(Int(readLine()!)!)
}

houses.sort()

var start = 1
var end = houses.last! - houses.first! // 끝집과 첫집사이의 거리

while true {
    if start >= end {
        break
    }
    
    let mid = (start + end) / 2
    
    var cnt = 1
    var preHouse = houses.first!
    for i in 1..<N {
        if houses[i] - preHouse > mid {
            cnt += 1
            preHouse = houses[i]
        }
    }
    
    if cnt >= C { // 공유기 갯수가 많으면 거리를 늘린다
        start = mid + 1
    } else { // 아니면 줄인다
        end = mid
    }
}

print(start)
