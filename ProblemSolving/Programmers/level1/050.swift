//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/18/24.
//

// 모의고사
// https://school.programmers.co.kr/learn/courses/30/lessons/42840

import Foundation

func solution(_ answers:[Int]) -> [Int] {
    var result: [Int] = []
    let supo1 = [1, 2, 3, 4, 5]
    let supo2 = [2, 1, 2, 3, 2, 4, 2, 5]
    let supo3 = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    
    let supo1Len = supo1.count
    let supo2Len = supo2.count
    let supo3Len = supo3.count
    
    var answer = [0, 0, 0]
    
    for i in 0..<answers.count {
        let i1 = i % supo1Len
        let i2 = i % supo2Len
        let i3 = i % supo3Len
        print(i1, i2, i3)
        if answers[i] == supo1[i1] {
            answer[0] += 1
        }
        if answers[i] == supo2[i2] {
            answer[1] += 1
        }
        if answers[i] == supo3[i3] {
            answer[2] += 1
        }
    }
    
    let max = answer.max()!
    for i in 0..<answer.count {
        if answer[i] == max {
            result.append(i+1)
        }
    }
    
    return result
}

let test1 = [1,2,3,4,5]
print(solution(test1))
