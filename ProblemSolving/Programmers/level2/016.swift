//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/11/24.
//

import Foundation

func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    var sizeCount: [Int: Int] = [:]
    for tan in tangerine {
        if sizeCount.keys.contains(tan) {
            sizeCount[tan]! += 1
        } else {
            sizeCount[tan] = 1
        }
    }
    
    let sortedTan = sizeCount.sorted { $0.value > $1.value }
    
    var answer = 0
    var cur = 0
    for tan in sortedTan {
        if cur + tan.value >= k {
            answer += 1
            break
        } else {
            cur += tan.value
            answer += 1
        }
    }
    
    return answer
}

print(solution(6, [1, 3, 2, 5, 4, 5, 2, 3]))
print(solution(4, [1, 3, 2, 5, 4, 5, 2, 3]))
print(solution(2, [1, 1, 1, 1, 2, 2, 2, 3]))
print(solution(2, [1000, 2000, 2000, 1000])) // -> 1
print(solution(3, [1, 2, 5])) // -> 3
