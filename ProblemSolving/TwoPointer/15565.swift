//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/02/04.
//

// 귀여운 라이언
// 15565

import Foundation

let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = inputs[0] // n개의 인형
let k = inputs[1] // 라이언 인형이 k개 이상 있는 가장 작은 연속된 인형들의 집합의 크기

// 라이언은 1, 어피치는 2
let dolls = readLine()!.split(separator: " ").map { Int(String($0))! }

var currentMin = -1
func sol() {
    var start = 0
    var end = 0
    var isStart = true
    var lionCount = 0
    var isEndMove = true

    while true {
        if (start >= end && !isStart) || end >= n {
            break
        }
        isStart = false
        
        if isEndMove && dolls[end] == 1 {
            lionCount += 1
        }
        
        if lionCount < k {
//            print(start, end)
            end += 1
            isEndMove = true
        } else {
            currentMin = currentMin == -1 ? end - start + 1 : min(end - start + 1, currentMin)
//            print(start, end, lionCount, currentMin)
            if dolls[start] == 1 {
                lionCount -= 1
            }
            start += 1
            isEndMove = false
        }
        
    }
}

sol()
print(currentMin)
