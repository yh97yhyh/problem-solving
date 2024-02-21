//
//  011.swift
//  ProblemSolving
//
//  Created by 영현 on 2/21/24.
//

// 정수 내림차순으로 배치하기
// https://school.programmers.co.kr/learn/courses/30/lessons/12933

import Foundation

func solution(_ n:Int64) -> Int64 {
    var arr = Array(String(n))
    arr.sort(by: >)
    
    return Int64(String(arr))!
}
