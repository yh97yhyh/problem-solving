//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/24.
//

// 고냥이
// 16472
// 79%에서 시간초과

import Foundation

let n = Int(readLine()!)! // 인식할 수 있는 알파벳의 종류
let string = Array(readLine()!)

func twoPointer() -> Int {
    var start = 0
    var end = 0
    var answer = 0
    var check: [Character] = []
    check.append(string[start])
    
    while true {
        if start > end {
            break
        }
        if Set(check).count <= n {
            if end + 1 >= string.count {
                break
            }
            end += 1
            check.append(string[end])
        } else {
            answer = max(answer, end - start)
            start += 1
            check.removeFirst()
        }
        
    }
    return answer
}

print(twoPointer())
