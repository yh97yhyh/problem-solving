//
//  033.swift
//  ProblemSolving
//
//  Created by 영현 on 3/7/24.
//

// 이상한 문자 만들기
// https://school.programmers.co.kr/learn/courses/30/lessons/12930

import Foundation

func solution(_ str:String) -> String {
    var result = ""

    var i = 0
    for s in str {
        if s == " " {
            i = 0
            result += " "
            continue
        }
        
        if i % 2 == 0 {
            result += String(s).uppercased()
        } else {
            result += String(s).lowercased()
        }
        
        i += 1
    }
    
    return result
}
