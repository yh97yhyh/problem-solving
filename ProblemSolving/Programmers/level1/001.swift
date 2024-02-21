//
//  001.swift
//  ProblemSolving
//
//  Created by 영현 on 2/21/24.
//

// 나머지가 1이 되는 수 찾기
// https://school.programmers.co.kr/learn/courses/30/lessons/87389

import Foundation

func solution(_ n:Int) -> Int {
    var result = 0
    
    for i in 2..<n {
        if n % i == 1 {
            result = i
            break
        }
    }
    
    return result
}
