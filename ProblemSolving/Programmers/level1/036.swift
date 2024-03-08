//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/8/24.
//

// 최소직사각형
// https://school.programmers.co.kr/learn/courses/30/lessons/86491
// 잘 이해 안 감...

import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var maxInSmalls = 0
    var maxInLarges = 0
    
    for size in sizes {
        let x = size[0]
        let y = size[1]
        
        let small = min(x, y)
        let large = max(x, y)
    
        maxInSmalls = max(small, maxInSmalls)
        maxInLarges = max(large, maxInLarges)
    }
    
    return maxInSmalls * maxInLarges
}
