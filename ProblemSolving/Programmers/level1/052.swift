//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/19/24.
//

// 기사단원의 무기
// https://school.programmers.co.kr/learn/courses/30/lessons/136798?language=swift
// 제곱근을 이용하여 약수의 개수를 빠르게 구할 수 있다!

import Foundation

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    var result = 0

    for i in 1...number {
        result += getNumberOfDivisors(i, limit, power)
    }
    
    return result
}

func getNumberOfDivisors(_ num: Int, _ limit: Int, _ power: Int) -> Int {
    let n = Int(sqrt(Double(num)))
    var cnt = 0
    
    for i in 1...n {
        if num % i == 0 {
            if num / i == i {
                cnt += 1
            } else {
                cnt += 2
            }
        }
        
        if cnt > limit {
            return power
        }
    }
    
    return cnt
}
