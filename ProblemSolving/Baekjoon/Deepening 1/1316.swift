//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/28/24.
//

// 그룹 단어 체커
// 1316

import Foundation

let N = Int(readLine()!)!

var answer = 0
for i in 0..<N {
    var dict: [String: Int] = [:]
    var pre = ""
    let str = String(readLine()!)
    var isCanAddCount = true
    for c in str {
        let strC = String(c)
        if let val = dict[strC] {
            if pre != strC {
                isCanAddCount = false
                break
            }
        } else {
            dict[strC] = 1
        }
        pre = strC
    }
    if isCanAddCount {
        answer += 1
    }
}
print(answer)
