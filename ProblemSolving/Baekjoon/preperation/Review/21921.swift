//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 9/11/24.
//

// 블로그
// 21921

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0] // n일동안 블로그
let x = input[1] // x일동안 가장 많이 들어온 방문자 수와 기간

let visits = readLine()!.split(separator: " ").map { Int(String($0))! }

var maxVisit = 0
var maxCount = 0
var curVisit = 0

// 처음 x일
for i in 0..<x {
    curVisit += visits[i]
}
maxVisit = curVisit
maxCount = 1

for i in 1...n-x {
    curVisit -= visits[i-1]
    curVisit += visits[i+x-1]
    
    if curVisit > maxVisit {
        maxVisit = curVisit
        maxCount = 1
    } else if curVisit == maxVisit {
        maxCount += 1
    }
}
if maxVisit == 0 {
    print("SAD")
} else {
    print(maxVisit)
    print(maxCount)

}
