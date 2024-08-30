//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 8/30/24.
//

// 전구와 스위치
// 2138

import Foundation

let n = Int(readLine()!)!
let start = readLine()!.map { Int(String($0))! }
let target = readLine()!.map { Int(String($0))! }

func cal(_ start: [Int]) -> Int {
    var count = 0
    var cur = start
    for i in 1..<n {
        if cur[i-1] != target[i-1] {
            count += 1
            for j in i-1...i+1 {
                if j >= n {
                    break
                }
                cur[j] = cur[j] == 0 ? 1 : 0
            }
        }
    }
    
    return cur == target ? count : Int.max-1
}

if start == target {
    print(0)
} else {
    // 첫번째 스위치를 누르지 않았을 때
    let result1 = cal(start)
    
    // 첫번째 스위치를 눌렀을 때
    var start2 = start
    start2[0] = start[0] == 0 ? 1 : 0
    start2[1] = start[1] == 0 ? 1 : 0
    let result2 = cal(start2) + 1
    
    let result = min(result1, result2)
    if result == Int.max || result == Int.max-1 {
        print(-1)
    } else {
        print(result)
    }
}
