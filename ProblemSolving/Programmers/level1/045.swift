//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/11/24.
//

// 콜라 문제
// https://school.programmers.co.kr/learn/courses/30/lessons/132267

import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var cur = n
    var news = 0
    
    while true {
        if cur < a {
            break
        }
        
        var canChange = cur
        while true {
            if canChange % a == 0 {
                break
            }
            canChange -= 1
        }
        var remand = cur - canChange
        var newOne = canChange / a * b
        
        cur = remand + newOne
        news += newOne
        // print(cur, news)
    }
    
    return news
}

print(solution(2, 1, 20)) // -> 19
print("===========")
print(solution(3, 1, 20)) // -> 9

