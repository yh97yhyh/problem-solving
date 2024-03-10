//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/11/24.
//

// 예상 대진표
// https://school.programmers.co.kr/learn/courses/30/lessons/12985

import Foundation

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int {
    var curA = a
    var curB = b
    var round = 1
    while true {
        if canFinish(curA, curB) {
            break
        }
        
        curA = curA % 2 == 0 ? curA / 2 : curA / 2 + 1
        curB = curB % 2 == 0 ? curB / 2 : curB / 2 + 1
        
        round += 1
    }

    return round
}

func canFinish(_ a: Int, _ b: Int) -> Bool {
    if abs(a - b) > 1 {
        return false
    }
    let first = a < b ? a : b
    // let second = a < b ? b : a
    
    if first % 2 == 1 {
        return true
    } else {
        return false
    }
}
