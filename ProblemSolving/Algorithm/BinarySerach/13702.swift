//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/23.
//

// 이상한 술집
// 13702
// 95% 런타임 에러

import Foundation

let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = inputs[0] // 막걸리 주전자 개수
let k = inputs[1] // 친구들의 수

var limits: [Int] = []
for _ in 0..<n {
    limits.append(Int(readLine()!)!)
}

limits.sort()

func binarySearch() -> Int {
    var start = 1 // 0이 아니라 1로!
    var end = limits[n-1]
    
    while true {
        if start > end {
            break
        }
        
        var sum = 0
        let mid = (start + end) / 2
        
        for limit in limits {
            sum += limit / mid
        }
//        print(mid, sum)
        
        if sum >= k { // k명에게 나눠줄 수 있는지
            start = mid + 1
        } else {
            end = mid - 1
        }
    }
    
    return end
}

print(binarySearch())
