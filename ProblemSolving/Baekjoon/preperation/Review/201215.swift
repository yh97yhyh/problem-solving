//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 9/8/24.
//

// 20125
// 쿠키의 신체 측정

// 심장위치 x, y
// 왼쪽 팔, 오른쪽 팔, 허리, 왼쪽 다리, 오른쪽 다리 길이

import Foundation

let n = Int(readLine()!)!
//var arr: [[Character]] = []

var isFoundHead = false
var isFoundArms = false
var heart = (x: 0, y:0)
var leftArm = 0
var rightArm = 0
var waist = 0
var leftLeg = 0
var rightLeg = 0

for i in 0..<n {
    let input = Array(readLine()!)
    
    if !isFoundHead {
        for j in 0..<n {
            if input[j] == "*" {
                heart = (i+1, j)
                isFoundHead = true
            }
        }
        continue
    }
    
    if isFoundHead && !isFoundArms && i == heart.x {
        for j in 0..<n {
            if input[j] == "*" {
                if j < heart.y {
                    leftArm += 1
                } else if j > heart.y {
                    rightArm += 1
                }
            }
        }
        isFoundArms = true
        continue
    }
    
    if isFoundHead && isFoundArms {
        if input[heart.y] == "*" {
            waist += 1
            continue
        }
        
        if input[heart.y-1] == "*" {
            leftLeg += 1
        }
        
        if input[heart.y+1] == "*" {
            rightLeg += 1
        }
    }
}

print("\(heart.x+1) \(heart.y+1)")
print("\(leftArm) \(rightArm) \(waist) \(leftLeg) \(rightLeg)")
