//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 11/12/24.
//

// 문자열 교환
// 1522

import Foundation

let str = Array(readLine()!)
let len = str.count

func solve() -> Int {
    let countA = str.filter { $0 == "a" }.count
    if countA == 0 || countA == len {
        return 0
    }
    
    let extendedStr = str + str
    var minSwapCnt = 0
    var curSwapCnt = 0
    
    // a의 갯수가 슬라이딩 윈도우의 구간이 됨
    for j in 0..<countA {
        if extendedStr[j] == "b" {
            curSwapCnt += 1
        }
    }
    
    minSwapCnt = curSwapCnt
    
    for i in 1..<len {
        // 왼쪽 제거
        if extendedStr[i-1] == "b" {
            curSwapCnt -= 1
        }
        
        // 오른쪽 추가
        if extendedStr[i+countA-1] == "b" {
            curSwapCnt += 1
        }
        
        minSwapCnt = min(minSwapCnt, curSwapCnt)
    }
    
    return minSwapCnt
}

print(solve())
