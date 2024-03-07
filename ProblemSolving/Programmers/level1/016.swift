//
//  016.swift
//  ProblemSolving
//
//  Created by 영현 on 3/7/24.
//

// 콜라츠 추측
// https://school.programmers.co.kr/learn/courses/30/lessons/12943

import Foundation

let tests: [Int] = [6, 16, 626331]

func solution(_ num: Int) -> Int {
    var cnt = 0
    var res = num
    
    while true {
        if res == 1 {
            return cnt
        }
        if cnt >= 500 {
            return -1
        }
        
        res = (res % 2 == 0) ? (res / 2) : (res * 3 + 1)
        print(res)
        
        cnt += 1
    }
    return -1
}

for test in tests {
    print("=====\(test)=====")
    print(solution(test))
}
