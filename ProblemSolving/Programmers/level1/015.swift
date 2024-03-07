//
//  015.swift
//  ProblemSolving
//
//  Created by 영현 on 3/7/24.
//

// 서울에서 김서방 찾기
// https://school.programmers.co.kr/learn/courses/30/lessons/12919

import Foundation

func solution(_ seoul:[String]) -> String {
    for i in 0..<seoul.count {
        if seoul[i] == "Kim" {
            return "김서방은 \(i)에 있다"
        }
    }
    return ""
}
