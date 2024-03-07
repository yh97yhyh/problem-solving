//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/7/24.
//

// 약수의 개수와 덧셈
// https://school.programmers.co.kr/learn/courses/30/lessons/77884

import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    var result = 0
    for i in left...right {
        if findDivisors(i) % 2 == 0 {
            result += i
        } else {
            result -= i
        }
    }
    return result
}

func findDivisors(_ num: Int) -> Int {
    var divisors: [Int] = []
    
    for i in 1...num {
        if num % i == 0 {
            divisors.append(i)
        }
    }
    
    // print("\(num) : \(divisors)")
    
    return divisors.count
}
