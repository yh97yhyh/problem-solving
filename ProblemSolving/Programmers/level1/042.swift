//
//  042.swift
//  ProblemSolving
//
//  Created by 영현 on 3/9/24.
//

// 문자열 내 마음대로 정렬하기
// https://school.programmers.co.kr/learn/courses/30/lessons/12915

import Foundation

func solution(_ strings:[String], _ n:Int) -> [String] {
    var result: [String] = []
    
    var order = Array(repeating: 0, count: strings.count)
    
    let nIndex = strings[0].index(strings[0].startIndex, offsetBy: n)
    for i in 0..<strings.count {
        for j in 0..<strings.count {
            if i == j {
                continue
            }
            if strings[i][nIndex] > strings[j][nIndex] {
                order[i] += 1
            } else if strings[i][nIndex] == strings[j][nIndex] {
                if strings[i] > strings[j] {
                    order[i] += 1
                }
            }
        }
    }
    
    for i in 0..<order.count {
        for j in 0..<strings.count {
            if order[j] == 0 {
                result.append(strings[j])
            }
            order[j] -= 1
        }
    }
    
    
    return result
}
