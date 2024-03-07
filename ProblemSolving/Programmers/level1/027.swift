//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/7/24.
//

// 문자열 다루기 기본
// https://school.programmers.co.kr/learn/courses/30/lessons/12918

import Foundation

func solution(_ str:String) -> Bool {
    if !(str.count == 4 || str.count == 6) {
        return false
    }
    
    for s in str {
        if !isNum(s) {
            return false
        }
    }
    
    return true
}
    
func isNum(_ s: Character) -> Bool {
    return Int(String(s)) != nil
}
