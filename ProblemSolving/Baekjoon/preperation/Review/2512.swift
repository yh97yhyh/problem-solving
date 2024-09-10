//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 9/10/24.
//

// 예산
// 2512

import Foundation

let n = Int(readLine()!)!
var nations = readLine()!.split(separator: " ").map { Int(String($0))! }
let m = Int(readLine()!)! // 총 예산

nations.sort()

var start = 1
var end = nations.last!

func isValid(_ limit: Int) -> Bool {
    var sum = 0
    for nation in nations {
        if nation > limit {
            sum += limit
        } else {
            sum += nation
        }
    }
    
    return sum <= m ? true : false
}

while true {
    if start >= end {
        break
    }
    
    let mid = (start + end) / 2
    
    if isValid(mid) {
        start = mid + 1
    } else {
        end = mid
    }
}

start == nations.last! ? print(start) : print(start-1)
