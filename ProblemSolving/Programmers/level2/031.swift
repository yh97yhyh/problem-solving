//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/21/24.
//

// k진수에서 소수 개수 구하기
// https://school.programmers.co.kr/learn/courses/30/lessons/92335

import Foundation

func solution(_ n:Int, _ k:Int) -> Int {
    var result = 0
    
    let kNumStr = String(n, radix: k)
    
    if kNumStr.count == 1 && kNumStr != "0" {
        return 1
    }
    
    let subStrs = kNumStr.split(separator: "0")
    
    for str in subStrs {
        if isPrime(Int(str)!) {
            // print(str)
            result += 1
        }
    }
    
    return result
}

func isPrime(_ num: Int) -> Bool {
    if num < 2 {
        return false
    }
    
    if num == 2 || num == 3 {
        return true
    }
    
    let n = Int(sqrt(Double(num)))
    
    for i in 2...n {
        if num % i == 0 {
            return false
        }
    }
    return true
}

