//
//  01.swift
//  ProblemSolving
//
//  Created by 영현 on 3/7/24.
//

// 최댓값과 최솟값
// https://school.programmers.co.kr/learn/courses/30/lessons/12939

import Foundation

func solution(_ s:String) -> String {
    let arr = s.split(separator: " ").map { Int(String($0))! }
    let max = arr.max()!
    let min = arr.min()!
    
    return "\(min) \(max)"
}
