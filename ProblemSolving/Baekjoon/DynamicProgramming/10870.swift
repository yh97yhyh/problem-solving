//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/31.
//

// 피보나치 수 5
// 10870

import Foundation

let n = Int(readLine()!)!

//func fibonacci(_ n: Int) -> Int {
//    if n < 2 {
//        return n
//    }
//    return fibonacci(n - 1) + fibonacci(n - 2)
//}

func fibonacci(_ n :Int) -> Int {
    var nums = [0, 1]
    
    if n < 2 {
        return n
    }
    
    for i in 2...n {
        nums.append(nums[i-2] + nums[i-1])
    }
    return nums[n]
}

print(fibonacci(n))

