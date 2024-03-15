//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/12/24.
//

// 괄호 회전하기
// https://school.programmers.co.kr/learn/courses/30/lessons/76502
// 열고 닫히는 순서를 고려하기 위해 last 이용

import Foundation

func solution(_ s:String) -> Int {
    var result = 0
    let len = s.count
    
    for i in 0..<len {
        var arr1: [String] = []
        var arr2: [String] = []
        var arr3: [String] = []
        var last: [Int] = []
        
        var count = 0
        var j = i
        var newJ = j

        while true {
            if count >= len {
                if arr1.isEmpty && arr2.isEmpty && arr3.isEmpty {
                   result += 1
                }
                break
            }
            
            newJ = j >= len ? j-len : j
            let index = s.index(s.startIndex, offsetBy: newJ)
            let c = String(s[index])
            
            if c == "[" {
                arr1.append(c)
                last.append(1)
            } else if c == "(" {
                arr2.append(c)
                last.append(2)
            } else if c == "{" {
                arr3.append(c)
                last.append(3)
            } else if c == "]" {
                if !arr1.isEmpty && !last.isEmpty && last.last! == 1 {
                    arr1.removeLast()
                    last.removeLast()
                } else {
                    break
                }
            } else if c == ")" {
                if !arr2.isEmpty && !last.isEmpty && last.last! == 2  {
                    arr2.removeLast()
                    last.removeLast()
                } else {
                    break
                }
            } else if c == "}" {
                if !arr3.isEmpty && !last.isEmpty && last.last! == 3  {
                    arr3.removeLast()
                    last.removeLast()
                } else {
                    break
                }
            }
            
            j += 1
            count += 1
        }
        
    }
    
    return result
}
