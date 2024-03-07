//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/7/24.
//

// 예산
// https://school.programmers.co.kr/learn/courses/30/lessons/12982

import Foundation

let test = [3, 1, 1] // 3 -> 2

func solution(_ d:[Int], _ budget:Int) -> Int {
    var arr = d.sorted()
    var rest = budget
    var i = 0
    while true {
        if rest == 0 {
            break
        }
        if rest < 0 {
            i -= 1
            break
        }
        if i >= d.count  {
            break
        }
        rest -= arr[i]
        i += 1
    }
    return i
}

print(solution(test, 3))
