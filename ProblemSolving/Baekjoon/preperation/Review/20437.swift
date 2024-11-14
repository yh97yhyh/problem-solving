//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 11/15/24.
//

// 문자열 게임 2
// 20437

// 어떤 문자를 정확히 k개 포함하는 가장 짧은 연속 문자열 길이를 구한다
// 어떤 문자를 정확히 k개 포함하고, 문자열의 첫 번째 글자와 마지막 글자가 해당 문자로 같은 가장 긴 연속 문자열의 길이를 구한다.
// 만족하는 연속 문자열이 없을 시 -1을 출력한다

import Foundation

let t = Int(readLine()!)!

for _ in 0..<t {
    let w = Array(readLine()!)
    let k = Int(readLine()!)!
    
    var chs: [Character: [Int]] = [:]
    
    for i in 0..<w.count {
        let c = w[i]
        chs[c, default: []].append(i)
    }
    
    var minAns = Int.max
    var maxAns = 0
    
    if chs.filter { $0.value.count >= k }.count > 0 {
        for ch in chs {
            let key = ch.key
            let cnt = ch.value.count
            
            if cnt >= k {
                // minAns
                for i in 0..<cnt-k+1 {
                    let l = ch.value[i]
                    let r = ch.value[i+k-1]
                    minAns = min(r-l+1, minAns)
                    maxAns = max(r-l+1, maxAns)
                }
            }
        }
        print("\(minAns) \(maxAns)")
    } else {
        print(-1)
    }
}

