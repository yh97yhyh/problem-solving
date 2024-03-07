//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/7/24.
//

// 없는 숫자 더하기
// https://school.programmers.co.kr/learn/courses/30/lessons/86051

import Foundation

func solution(_ numbers:[Int]) -> Int {
    var sum = 0
    for i in 0...9 {
        if !numbers.contains(i) {
            sum += i
        }
    }
    return sum
}
