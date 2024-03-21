//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/21/24.
//

// 실패율
// https://school.programmers.co.kr/learn/courses/30/lessons/42889
// 시간초과..

import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var arr = Array(repeating: -1.0, count: N+1)
    
    for i in 1..<arr.count {
        var challenge = 0
        var noClear = 0
        for stage in stages {
            if stage >= i {
                challenge += 1
                if stage == i {
                    noClear += 1
                }
            }
        }
        if challenge == 0 {
            arr[i] = 0
        } else {
            arr[i] = Double(noClear) / Double(challenge)
        }
    }
    
    var indexArr = Array(arr.enumerated())
    indexArr.removeFirst()
    let sortedIndex = indexArr.sorted {
        if $0.element == $1.element {
            return $0.offset < $1.offset
        } else {
            return $0.element > $1.element
        }
    }
    
    return sortedIndex.map { $0.offset }
    
//     var result: [Int] = []
    
//     while true {
//         if result.count == N {
//             break
//         }
//         let maxValue = arr.max()!
//         let maxIndex = arr.firstIndex(of: maxValue)!
//         result.append(maxIndex)
//         arr[maxIndex] = -1
//     }
    
//     return ressortedIndexult
}

