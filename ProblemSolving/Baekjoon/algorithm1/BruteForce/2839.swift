//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/27/24.
//

// 설탕 배달
// 2839

import Foundation

let N = Int(readLine()!)!

var cur = N
var answer = 0

while true {
    if cur <= 0 {
        break
    }
    
    if cur % 5 == 0 {
        cur -= 5
        answer += 1
    } else {
        cur -= 3
        answer += 1
    }
}

if cur < 0 {
    print(-1)
} else {
    print(answer)
}

//var answer = Int.max
//var sugars: [Int] = []
//var total = 0
//var addSugar = [3, 5]
//
//func recur() {
//    if total >= N {
//        if total == N {
//            answer = min(answer, sugars.count)
//        }
//        return
//    }
//    
//    for sugar in addSugar {
//        sugars.append(sugar)
//        total += sugar
//        recur()
//        sugars.removeLast()
//        total -= sugar
//    }
//}
//
//recur()
//
//if answer == Int.max {
//    print(-1)
//} else {
//    print(answer)
//}
