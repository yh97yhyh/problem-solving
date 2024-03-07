//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/7/24.
//

// 이진 변환 반복하기
// https://school.programmers.co.kr/learn/courses/30/lessons/70129

import Foundation

import Foundation

func solution(_ s:String) -> [Int] {
    var res = s
    var cnt = 0
    var removed = 0
    while true {
        if res == "1" {
            break
        }
        
        var tmp = ""
        
        for r in res {
            if r == "0" {
                removed += 1
            } else {
                tmp += "1"
            }
        }
        
        res = String(tmp.count, radix: 2)
        
        cnt += 1
    }
    
    return [cnt, removed]
}
