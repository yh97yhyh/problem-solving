//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/20/24.
//

// [1차] 뉴스 클러스터링
// https://school.programmers.co.kr/learn/courses/30/lessons/17677

import Foundation

func solution(_ str1:String, _ str2:String) -> Int {
    var str1Subs: [String] = []
    var str2Subs: [String] = []
    
    for i in 0..<str1.count-1 {
        let index1 = str1.index(str1.startIndex, offsetBy: i)
        let index2 = str1.index(str1.startIndex, offsetBy: i+1)
        
        var char1 = str1[index1]
        var char2 = str1[index2]
        
        if char1.isLetter && char2.isLetter {
            let sub = String(str1[index1...index2]).lowercased()
            str1Subs.append(sub)
        }
    }
    
    for i in 0..<str2.count-1 {
        let index1 = str2.index(str2.startIndex, offsetBy: i)
        let index2 = str2.index(str2.startIndex, offsetBy: i+1)
        
        var char1 = str2[index1]
        var char2 = str2[index2]
        
        if char1.isLetter && char2.isLetter {
            let sub = String(str2[index1...index2]).lowercased()
            str2Subs.append(sub)
        }
    }
    
    if str1Subs.isEmpty && str2Subs.isEmpty {
        return 65536
    }
    
    var intersection = 0
    var union = 0
    
    for sub1 in str1Subs {
        if str2Subs.contains(sub1) {
            let i = str2Subs.firstIndex(of: sub1)!
            str2Subs.remove(at: i) // 중요!
            intersection += 1
        }
    }
    
    union = str1Subs.count + str2Subs.count
    
    return Int((Double(intersection) / Double(union)) * 65536)
}
