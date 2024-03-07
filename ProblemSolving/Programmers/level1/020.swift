//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/7/24.
//

// 제일 작은 수 제거하기
// https://school.programmers.co.kr/learn/courses/30/lessons/12935

import Foundation

let test = [4,3,2,1]

func solution(_ arr:[Int]) -> [Int] {
    var res = arr
    if arr.count == 1 {
        return [-1]
    }
    
    let min = arr.min()!
    
    return res.filter { $0 != min }
}

print(solution(test))
