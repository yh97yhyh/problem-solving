//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2/21/24.
//

// 자릿수 더하기
// https://school.programmers.co.kr/learn/courses/30/lessons/12931

import Foundation

func solution(_ n:Int) -> Int
{
    var answer = 0
    let str = String(n)
    
    for num in str {
        answer += Int(String(num))!
    }
    
    return answer
}
