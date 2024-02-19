//
//  newYearChaos.swift
//  ProblemSolving
//
//  Created by 영현 on 2/19/24.
//

// New Year Chaos
// https://www.hackerrank.com/challenges/one-month-preparation-kit-new-year-chaos/problem

import Foundation

func minimumBribes(q: [Int]) {
    var queue = q
    for (i, j) in queue.enumerated() {
        if (j - 1) - i > 2 {
            print("Too chaotic")
            return
        }
    }

    var cnt = 0
    for i in 1..<q.count {
        var j = i
        while j > 0 && queue[j - 1] > queue[j] {
            queue.swapAt(j - 1, j)
            j -= 1
            cnt += 1
        }
    }
    print("\(cnt)")
}

//func minimumBribes(q: [Int]) -> Void {
//    // Write your code here
//    var result = 0
//
//    for i in 0..<q.count {
//        if q[i] - (i + 1) >= 3 {
//            print("Too chaotic")
//            return
//        }
//
//        for j in max(0, i-2)...i {
//            if q[j] > q[i] {
////                print(q[j], q[i])
//                result += 1
//            }
//        }
//    }
//
//    print(result)
//}

let t = [1, 2, 5, 3, 7, 8, 6, 4] // 7
minimumBribes(q: t)
