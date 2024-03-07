//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/7/24.
//

// JadenCase 문자열 만들기
// https://school.programmers.co.kr/learn/courses/30/lessons/12951

import Foundation

let test = "3people unFollowed me"

func solution(_ str:String) -> String {
    var result = ""
    
    var isStart = true
    for s in str {
        var ss = String(s)
        if ss == " " {
            isStart = true
            result += " "
            continue
        }
        if isStart {
            if s.isNumber { // 이걸 해야 시간초과가 안 걸림
                result += ss
                isStart = false
                continue
            }
            result += ss.uppercased()
            isStart = false
        } else {
            result += ss.lowercased()
        }
    }
    
    return result
}

print(solution(test))
