//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/21/24.
//

// [3차] 압축
// https://school.programmers.co.kr/learn/courses/30/lessons/17684

import Foundation

func solution(_ msg:String) -> [Int] {
    let len = msg.count
    var result: [Int] = []
    var dicts: [String: Int] = [:]
    let words = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N",
                "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    var done = Array(repeating: false, count: len)
    var cnt = 27
    
    for i in 0..<words.count {
        dicts[words[i]] = i+1
    }

    
    for i in 0..<len {
        if done[i] {
            continue
        }
        
        let index = msg.index(msg.startIndex, offsetBy: i)
        for j in i..<len {
            if j == len - 1 || i != j {
                let jndex = msg.index(msg.startIndex, offsetBy: j)
                let subStr = String(msg[index...jndex])
                if j == len - 1 {
                    if let val = dicts[subStr] {
                        result.append(val)
                        for k in i...j {
                            done[k] = true
                        }
                    }
                }
                if !dicts.keys.contains(subStr) {
                    let curStr = String(msg[jndex])
                    let originStr = String(msg[index..<jndex])
                    result.append(dicts[originStr]!)
                    dicts[subStr] = cnt
                    cnt += 1
                    for k in i..<j {
                        done[k] = true
                    }
                    break
                }
            }
        }
    }
    
    return result
}
