//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/15/24.
//

// 할인 행사
// https://school.programmers.co.kr/learn/courses/30/lessons/131127

import Foundation

func solution(_ want:[String], _ number:[Int], _ discount:[String]) -> Int {
    var result = 0
    
    let discountLen = discount.count
    let wantLen = number.reduce(0, +)
    let len = discountLen - wantLen
    
    var remainDict: [String: Int] = [:]
    for i in 0..<want.count {
        remainDict[want[i]] = number[i]
    }
    // print(remainDict)
    
    for i in 0..<wantLen {
        let fruit = discount[i]
        if remainDict.keys.contains(fruit) {
            remainDict[fruit]! -= 1
        }
    }
    // print(remainDict)
    
    let remains = remainDict.values.filter{ $0 > 0 }
    if remains.count <= 0 {
        result += 1
    }
    
    if len == 0 {
        return result
    }
    
    print(0, remainDict)

    for i in 1...len {
        let fruit1 = discount[i-1]
        let fruit2 = discount[i+wantLen-1]
        
        if let val = remainDict[fruit1] {
            remainDict[fruit1]! += 1
        }
        
        if let val2 = remainDict[fruit2] {
            remainDict[fruit2]! -= 1
        }
        
        // print(i, remainDict)
        
        let remains = remainDict.values.filter{ $0 > 0 }
        if remains.count <= 0 {
            result += 1
        }
    }
    
    return result
}

let want1 = ["banana", "apple", "rice", "pork", "pot"]
let number1 = [3, 2, 2, 2, 1]
let discount1 = ["chicken", "apple", "apple", "banana", "rice", "apple", "pork", "banana", "pork", "rice", "pot", "banana", "apple", "banana"]

print(solution(want1, number1, discount1))
