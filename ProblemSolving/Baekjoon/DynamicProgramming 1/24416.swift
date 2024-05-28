//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/29/24.
//

// 알고리즘 수업 - 피보나치 수 1
// 24416

import Foundation

let n = Int(readLine()!)!

//var cnt1 = 0
func fib(_ n: Int) -> Int {
    if n == 1 || n == 2 {
        return 1
    } else {
//        cnt1 += 1
        return fib(n-1) + fib(n-2)
    }
}

var cnt2 = 0
var fibonaccis: [Int] = Array(repeating: 0, count: 41)
func dpfib(_ n: Int) -> Int {
    fibonaccis[0] = 0
    fibonaccis[1] = 1
    fibonaccis[2] = 1
    
    for i in 3...n {
        fibonaccis[i] = fibonaccis[i-1] + fibonaccis[i-2]
        cnt2 += 1
    }
    
    return fibonaccis[n]
}

fib(n)
let cnt1 = dpfib(n)

print("\(cnt1) \(cnt2)")
