//
//  008.swift
//  ProblemSolving
//
//  Created by 영현 on 2/21/24.
//

// 자연수 뒤집어 배열로 만들기
// https://school.programmers.co.kr/learn/courses/30/lessons/12932

import Foundation

func solution(_ n:Int64) -> [Int] {
    var result: [Int] = []
    
    var arr = Array(String(n))
    arr.reverse()
    
    for n in arr {
        result.append(Int(String(n))!)
    }
    
    return result
}
