//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/18/24.
//

// 기능개발
// https://school.programmers.co.kr/learn/courses/30/lessons/42586

import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var result: [Int] = []
    var pros = progresses
    var sps = speeds
    
    while true {
        if pros.isEmpty {
            break
        }
        
        var remain = 100 - pros[0]
        var needDays = remain % sps[0] == 0 ? remain / sps[0] : remain / sps[0] + 1
        
        var finishCnt = 0
        var isCanPublish = true
        for i in 0..<pros.count {
            pros[i] += needDays * sps[i]
            if pros[i] >= 100 && isCanPublish {
                finishCnt += 1
            } else {
                isCanPublish = false
            }
        }
        
        result.append(finishCnt)
        pros.removeFirst(finishCnt)
        sps.removeFirst(finishCnt)
    }
    
    return result
}
