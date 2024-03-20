//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/21/24.
//

// 덧칠하기
// https://school.programmers.co.kr/learn/courses/30/lessons/161989

import Foundation

func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    var wall = Array(repeating: false, count: n+1)
    let last = section.last!
    var cnt = 0
    
    for sec in section {
        if wall[last] {
            break
        }
        if !wall[sec] {
            for i in sec..<sec+m {
                if i >= wall.count {
                    continue
                }
                wall[i] = true
            }
            cnt += 1
        }
    }
    
    return cnt
}
