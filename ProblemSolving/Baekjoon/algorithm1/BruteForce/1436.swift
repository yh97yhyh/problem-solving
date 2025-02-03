//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/27/24.
//

// 영화감독 숌
// 1436
// String.contains("")는 시간초과

import Foundation

let N = Int(readLine()!)!

var count = 0
var num: Int64 = 666

while true {
    var temp = num
    while temp >= 666 { // 시간초과 안 남!
        if temp % 1000 == 666 {
            count += 1
            break
        } else {
            temp /= 10
        }
    }
    if count == N {
        break
    }
    
    num += 1
}

print(num)
