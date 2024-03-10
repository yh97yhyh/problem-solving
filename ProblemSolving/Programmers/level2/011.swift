//
//  011.swift
//  ProblemSolving
//
//  Created by 영현 on 3/10/24.
//

// 영어 끝말잇기
// https://school.programmers.co.kr/learn/courses/30/lessons/12981

import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    
    var totalCnt = 0
    var people = 1
    var turn = 1
    
    var preWord = ""
    var currentWord = ""
    var checked: [String] = []
    
    while true {
        if totalCnt >= words.count {
            return [0, 0]
        }
        
        currentWord = words[totalCnt]
        
        if !checked.isEmpty && checked.contains(currentWord) {
            break
        } else {
            checked.append(currentWord)
        }
        
        if currentWord.count <= 1 {
            break
        }
        
        if !preWord.isEmpty && preWord.last! != currentWord.first! {
            break
        }
        
        preWord = currentWord
        
        if people >= n {
            people = 1
            turn += 1
        } else {
            people += 1
        }
        totalCnt += 1
    }
    
    return [people, turn]
}
