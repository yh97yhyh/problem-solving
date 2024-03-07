//
//  034.swift
//  ProblemSolving
//
//  Created by 영현 on 3/7/24.
//

// 크기가 작은 부분문자열
// https://school.programmers.co.kr/learn/courses/30/lessons/147355

import Foundation

func solution(_ t:String, _ p:String) -> Int {
    var result = 0
    let last = t.count - p.count
    
    for i in 0...last {
        let startIndex = t.index(t.startIndex, offsetBy: i)
        let endIndex = t.index(startIndex, offsetBy: p.count)
        let subStr = t[startIndex..<endIndex]
        if Int64(subStr)! <= Int64(p)! {
            result += 1
        }
    }
    return result
}
