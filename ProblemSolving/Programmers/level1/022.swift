//
//  022.swift
//  ProblemSolving
//
//  Created by 영현 on 3/7/24.
//

// 가운데 글자 가져오기
// https://school.programmers.co.kr/learn/courses/30/lessons/12903

import Foundation

func solution(_ s:String) -> String {
    var result = ""
    
    if s.count % 2 != 0 {
        let i = s.count / 2
        let index = s.index(s.startIndex, offsetBy: i)
        return String(s[index])
    } else {
        let j = s.count / 2
        let i = j-1
        let iIndex = s.index(s.startIndex, offsetBy: i)
        let jIndex = s.index(s.startIndex, offsetBy: j)
        return "\(s[iIndex])\(s[jIndex])"
    }
}
