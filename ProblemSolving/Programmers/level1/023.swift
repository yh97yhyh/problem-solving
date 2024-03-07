//
//  023.swift
//  ProblemSolving
//
//  Created by 영현 on 3/7/24.
//

// 수박수박수박수박수박수?
// https://school.programmers.co.kr/learn/courses/30/lessons/12922

import Foundation

func solution(_ n:Int) -> String {
    var result = ""
    for i in 1...n {
        if i % 2 == 0 {
            result += "박"
        } else {
            result += "수"
        }
    }
    return result
}
