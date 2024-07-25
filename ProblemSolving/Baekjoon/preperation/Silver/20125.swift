//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 7/2/24.
//

// 쿠키의 신체 측정
// 20125
// 심장의 위치 x, y
// 왼쪽 팔, 오른쪽 팔, 허리, 왼쪽 다리, 오른쪽 다리 길이

import Foundation

let n = Int(readLine()!)!

var isStart = true
var heartPosition = (0, 0)
var leftArmLen = 0
var rightArmLen = 0
var waistLen = 0
var leftLegLen = 0
var rightLegLen = 0

for i in 0..<n {
    let str = Array(readLine()!)
    
    for j in 0..<n {
//        let jndex = str.index(str.startIndex, offsetBy: j)
        
        if isStart {
            if str[j] == "*" {
                heartPosition = (i+1, j)
                isStart = false
                break
            }
        } else {
            if i == heartPosition.0 {
                if str[j] == "*" {
                    if j < heartPosition.1 {
                        leftArmLen += 1
                    } else if j > heartPosition.1 {
                        rightArmLen += 1
                    }
                }
            } else {
                if str[j] == "*" {
                    if j == heartPosition.1 {
                        waistLen += 1
                    } else if j < heartPosition.1 {
                        leftLegLen += 1
                    } else {
                        rightLegLen += 1
                    }
                }
            }
        }
    }
    
}

print("\(heartPosition.0 + 1) \(heartPosition.1 + 1)")
print("\(leftArmLen) \(rightArmLen) \(waistLen) \(leftLegLen) \(rightLegLen)")
