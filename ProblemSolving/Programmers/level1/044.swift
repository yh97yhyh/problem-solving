//
//  044.swift
//  ProblemSolving
//
//  Created by 영현 on 3/10/24.
//

// [1차] 비밀지도
// https://school.programmers.co.kr/learn/courses/30/lessons/17681

import Foundation

func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer: [String] = []
    
    for i in 0..<arr1.count {
        var bin1 = String(arr1[i], radix: 2)
        var bin2 = String(arr2[i], radix: 2)
        
        if bin1.count < n {
            var padding = ""
            for i in 0..<n-bin1.count {
                padding += "0"
            }
            bin1 = padding + bin1
        }
        
        if bin2.count < n {
            var padding = ""
            for i in 0..<n-bin2.count {
                padding += "0"
            }
            bin2 = padding + bin2
        }
        
        var str = ""
        // print(bin1, bin2)
        for j in 0..<bin1.count {
            let index = bin1.index(bin1.startIndex, offsetBy: j)
            let a = bin1[index]
            let b = bin2[index]
            
            if a == "0" && b == "0" {
                str += " "
            } else {
                str += "#"
            }
        }
        answer.append(str)
    }
    
    
    return answer
}
