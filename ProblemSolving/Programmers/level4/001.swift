//
//  001.swift
//  ProblemSolving
//
//  Created by 영현 on 4/7/24.
//

// 사칙연산
// https://school.programmers.co.kr/learn/courses/30/lessons/1843

// 설명
// https://velog.io/@longroadhome/%ED%94%84%EB%A1%9C%EA%B7%B8%EB%9E%98%EB%A8%B8%EC%8A%A4-LV.4-%EC%82%AC%EC%B9%99%EC%97%B0%EC%82%B0
// https://school.programmers.co.kr/questions/35224

import Foundation

func solution(_ arr: [String]) -> Int {
    let operandsCount = Int(ceil(Double(arr.count) / 2.0))
    var maxDy = Array(repeating: Array(repeating: -Int.max, count: operandsCount), count: operandsCount)
    var minDy = Array(repeating: Array(repeating: Int.max, count: operandsCount), count: operandsCount)
    
    for i in 0..<operandsCount {
        maxDy[i][i] = Int(arr[i * 2]) ?? 0
        minDy[i][i] = Int(arr[i * 2]) ?? 0
    }
    
    for cnt in 1..<operandsCount {
        for i in 0..<(operandsCount - cnt) {
            let j = i + cnt
            for k in i..<j {
                if arr[k * 2 + 1] == "+" {
                    maxDy[i][j] = max(maxDy[i][j], maxDy[i][k] + maxDy[k + 1][j])
                    minDy[i][j] = min(minDy[i][j], minDy[i][k] + minDy[k + 1][j])
                } else {
                    maxDy[i][j] = max(maxDy[i][j], maxDy[i][k] - minDy[k + 1][j])
                    minDy[i][j] = min(minDy[i][j], minDy[i][k] - maxDy[k + 1][j])
                }
            }
        }
    }
    
    return maxDy[0][operandsCount - 1]
}

