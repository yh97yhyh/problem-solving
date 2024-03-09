//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/9/24.
//

// 카펫
// https://school.programmers.co.kr/learn/courses/30/lessons/42842#
// 약수로 풀었다. 처음에 짝수만 생각해서 오래 걸림..

import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    let targetSize = brown + yellow
    var yellowWidth = yellow
    var yellowHeight = 1
    
    while true {
        let predictBrown = (yellowHeight+2)*2 + yellowWidth*2
//        print(yellowWidth, yellowHeight, predictBrown, brown)
        
        if predictBrown == brown {
            break
        }
        
        yellowWidth -= 1
        while true {
            if yellow % yellowWidth == 0 {
                yellowHeight = yellow / yellowWidth
                break
            }
            yellowWidth -= 1
        }
    }
    
    return [yellowWidth+2, yellowHeight+2]
}

print(solution(18, 6)) // -> [8, 3]
print("=============================")
print(solution(4004, 999999)) // -> [1003, 1001]
