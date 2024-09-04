//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 9/4/24.
//

// 공유기 설치
// 2110
// 가장 인접한 두 공유기 사이의 최대 거리

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0] // 집의 개수
let c = input[1] // 공유기 개수

var houses: [Int] = []
for _ in 0..<n {
    houses.append(Int(readLine()!)!)
}
houses.sort()

var left = 1 // 공유기 사이의 최소 거리
var right = houses.last! - houses.first! // 공유기 사이의 최대 거리 (끝집과 첫집 사이의 거리)

while true {
    if left >= right {
        break
    }
    
    var cnt = 1
    var lastLocation = houses.first!
    let mid = (left + right) / 2
    
    for i in 1..<n {
        if houses[i] - lastLocation > mid {
            cnt += 1
            lastLocation = houses[i]
        }
    }
    
    if cnt >= c {
        left = mid + 1
    } else {
        right = mid
    }
}

print(left)
