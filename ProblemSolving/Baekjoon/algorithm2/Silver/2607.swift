//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 7/11/24.
//

// 비슷한 단어
// 2607

import Foundation

let n = Int(readLine()!)!

var targetStr = ""
var answer = 0

for i in 0..<n {
    let str = readLine()!
    
    if i == 0 {
        targetStr = str
    } else {
        let target = Array(targetStr)
        let compare = Array(str)
        
        if abs(target.count - compare.count) > 1 {
            continue
        }
        
        var targetChecked = Array(repeating: false, count: target.count)
        var compareChecked = Array(repeating: false, count: compare.count)
        
        for j in 0..<target.count {
            if targetChecked[j] == true {
                continue
            }
            
            let t = target[j]
            
            for k in 0..<compare.count {
                let c = compare[k]
                if t == c && compareChecked[k] == false {
                    targetChecked[j] = true
                    compareChecked[k] = true
                    break
                }
            }
        }
        
        
        let targetFalseCount = targetChecked.filter { $0 == false }.count
        let compareFalseCount = compareChecked.filter { $0 == false }.count
        
        if compareFalseCount < 2 {
            if targetFalseCount == compareFalseCount  {
//                print(1, str, compareChecked)
                answer += 1
            } else if targetFalseCount == 0 || compareFalseCount == 0 {
//                print(2, str, compareChecked)
                answer += 1
            }
        }
        
    }
}

print(answer)
