//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/15/24.
//

// n^2 배열 자르기
// https://school.programmers.co.kr/learn/courses/30/lessons/87390

import Foundation

func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
    var result: [Int] = []
    
    for i in left...right {
        let x = Int(i) / n
        let y = Int(i) % n
        result.append(max(x, y)+1)
    }
    
    return result
}
