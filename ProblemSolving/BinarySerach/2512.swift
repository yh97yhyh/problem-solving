//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/22.
//

// 예산
// 2512
// upper bound

import Foundation

let n = Int(readLine()!)! // 지방의 수
var limits = readLine()!.split(separator: " ").map { Int(String($0))! }
let m = Int(readLine()!)! // 총 예산

limits.sort()

func binarySearch() -> Int {
    var start = 0 // 중요!!
    var end = limits[n-1]
    
    while true {
        var m = m
        if start >= end {
            break
        }
        let mid = (start + end) / 2
        for limit in limits {
            if limit > mid {
                m -= mid
            } else {
                m -= limit
            }
        }
//        print(start, end, mid, m)
        if m >= 0 {
            start = mid + 1
        } else {
            end = mid
        }
    }
    
    if limits[n-1] == start {
        return start
    } else {
        return start - 1
    }
}

print(binarySearch())

