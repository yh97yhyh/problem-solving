//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2/21/24.
//

// 짝수와 홀수
// https://school.programmers.co.kr/learn/courses/30/lessons/12937

import Foundation

func solution(_ num:Int) -> String {
    if num % 2 == 0 {
        return "Even"
    } else {
        return "Odd"
    }
}
