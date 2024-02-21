//
//  005.swift
//  ProblemSolving
//
//  Created by 영현 on 2/21/24.
//

// x만큼 간격이 있는 n개의 숫자
// https://school.programmers.co.kr/learn/courses/30/lessons/12954

import Foundation

func solution(_ x:Int, _ n:Int) -> [Int64] {
    var result: [Int64] = []
    
    var i = x
    while true {
        result.append(Int64(i))
        
        if result.count == n {
            break
        }
        
        i += x
    }
    
    return result
}
