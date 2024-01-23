//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/23.
//

// 기타 레슨
// 2343
// 테스트 케이스 https://www.acmicpc.net/board/view/71707
// lower bound

import Foundation

var inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = inputs[0] // 강의 수 n
let m = inputs[1] // 블루레이 수 m
var times = readLine()!.split(separator: " ").map { Int(String($0))! } // 강의의 길이

func binarySearch() -> Int {
    var start = times.max()! // 중요!!
    var end = times.reduce(0, +)
    
    while true {
        if start >= end {
            break
        }
        let mid = (start + end) / 2
        var blurayCount = 0
        var sum = 0
        
        for time in times {
            if sum + time > mid {
                blurayCount += 1
                sum = 0
            }
            sum += time
        }

        if sum > 0 {
            blurayCount += 1
        }
        
//        print(mid, blurayCount)
        
        if blurayCount <= m {
            end = mid
        } else {
            start = mid + 1
        }
        
    }
    return start
}

print(binarySearch())
