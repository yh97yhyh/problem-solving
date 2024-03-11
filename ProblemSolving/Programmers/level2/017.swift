//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/11/24.
//

// 연속 부분 수열 합의 개수
// https://school.programmers.co.kr/learn/courses/30/lessons/131701
// subarray를 매번 사용하면 타임아웃

import Foundation

func solution(_ elements:[Int]) -> Int {
    var sums: [Int] = []
    let len = elements.count
    var arr = elements + elements
    
    for i in 0...len {
        var sum: [Int] = [arr[i]]
        for j in 1..<len {
            sum.append(sum.last! + arr[i+j])
            // print(i, i+j, sum)
        }
        sums += sum
    }
    
    return Set(sums).count
}
print(solution([7,9,1,1,4])) // -> 18
