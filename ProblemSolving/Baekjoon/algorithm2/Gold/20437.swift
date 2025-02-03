//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 8/12/24.
//

// 문자열 게임 2
// 20437

import Foundation

let t = Int(readLine()!)!
        
for _ in 0..<t {
    let w = Array(readLine()!)
    let k = Int(readLine()!)!
    
    var dict: [Character: [Int]] = [:]
    var a3 = Int.max
    var a4 = 0
    
    for i in 0..<w.count {
        if dict[w[i]] != nil {
            dict[w[i]]!.append(i)
        } else {
            dict[w[i]] = [i]
        }
    }
    
    for d in dict {
        let val = d.value
        if val.count >= k {
            let len = val.count
            for i in 0..<len-k+1 {
                let a = val[i+k-1] - val[i] + 1
                a3 = min(a, a3)
                a4 = max(a, a4)
            }
        }
    }
    
    if a3 == Int.max {
        print(-1)
        continue
    } else {
        print("\(a3) \(a4)")
    }
}
