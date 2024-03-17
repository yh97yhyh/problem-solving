//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/18/24.
//

// 튜플
// https://school.programmers.co.kr/learn/courses/30/lessons/64065

import Foundation

let test1 = "{{2},{2,1},{2,1,3},{2,1,3,4}}"

func solution(_ s:String) -> [Int] {
    var result: [Int] = []
    
    var str = s
    str.removeFirst(2)
    str.removeLast(2)
    
    let strs = str.components(separatedBy: "},{").sorted(by: { $0.count < $1.count })

    for str in strs {
        var nums = str.split(separator: ",").map { Int($0)! }
        for num in nums {
            if !result.contains(num) {
                result.append(num)
                break
            }
        }
    }
    
    return result
}

print(solution(test1))
