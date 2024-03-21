//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/22/24.
//

// 옹알이 (2)
// https://school.programmers.co.kr/learn/courses/30/lessons/133499

import Foundation

func solution(_ babblings:[String]) -> Int {
    var result = 0
    let cans = ["aya", "ye", "woo", "ma"]
    
    for babbling in babblings {
        var cur = ""
        var pre = ""
        var isCan = true
        let len = babbling.count
        for i in 0..<len {
            let bab = babbling[babbling.index(babbling.startIndex, offsetBy: i)]
            cur += String(bab)
            
            if i == len - 1 {
                if cans.contains(cur) && pre != cur {
                    isCan = true
                } else {
                    isCan = false
                }
                break
            }
            
            if cur.count >= 2 {
                if cans.contains(cur) && pre != cur {
                    pre = cur
                    cur = ""
                } else if cur.count >= 3 {
                    isCan = false
                    break
                }
            }
        }
        if isCan {
//            print(babbling)
            result += 1
        }
    }
    
    return result
}

print(solution(["aya", "yee", "u", "maa"]))
print(solution(["ayaye", "uuu", "yeye", "yemawoo", "ayaayaa"]))

