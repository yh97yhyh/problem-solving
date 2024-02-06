//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2/6/24.
//

// 점프 점프
// 18512

import Foundation

let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }

let aDistance = inputs[0] // a가 멀리뛰기하는 거리
let bDistance = inputs[1] // b가 멀리뛰기하는 거리
var aLocation = inputs[2] // x의 시작점
var bLocation = inputs[3] // y의 시작점

func sol() -> Int {
    var isValid = false
    var cnt = 0
    
    while true {
        if cnt >= 1000 {
            break
        }
        
        if aLocation == bLocation {
            isValid = true
            break
        }
        
        if aLocation > bLocation {
            bLocation += bDistance
        } else {
            aLocation += aDistance
        }
        
        cnt += 1
    }
    
    if isValid {
        return aLocation
    } else {
        return -1
    }
}

print(sol())
