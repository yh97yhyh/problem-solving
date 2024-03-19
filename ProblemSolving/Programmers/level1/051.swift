//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/18/24.
//

// 과일 장수
// https://school.programmers.co.kr/learn/courses/30/lessons/135808

import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    var result = 0
    var boxNum = score.count / m
    var apple = score.sorted()
    
    var cnt = 0
    var i = apple.count - m
    while true {
        if cnt >= boxNum {
            break
        }
        
        result += apple[i] * m
        // print(i, result)
        i -= m
        cnt += 1
    }
    
    return result
}
