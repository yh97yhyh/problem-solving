//
//  012.swift
//  ProblemSolving
//
//  Created by 영현 on 3/10/24.
//

// 점프와 순간 이동
// https://school.programmers.co.kr/learn/courses/30/lessons/12980
// 순간이동을 많이 해야 비용이 절약된다, 짝수일땐 순간이동, 아니면 1씩 이동

import Foundation

func solution(_ n:Int) -> Int  {
    var ans = 0 //
    var cur = n
    
    while true {
        if cur <= 0 {
            break
        }
        
        if cur % 2 == 0 {
            cur /= 2
        } else {
            cur -= 1
            ans += 1
        }
    }

    return ans
}
