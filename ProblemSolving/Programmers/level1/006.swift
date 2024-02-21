//
//  006.swift
//  ProblemSolving
//
//  Created by 영현 on 2/21/24.
//

// 평균 구하기
// https://school.programmers.co.kr/learn/courses/30/lessons/12944

import Foundation

func solution(_ arr:[Int]) -> Double {
    let sum = arr.reduce(0, +)
    return Double(sum) / Double(arr.count)
}
