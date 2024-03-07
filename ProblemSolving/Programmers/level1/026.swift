//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/7/24.
//

// 부족한 금액 계산하기
// https://school.programmers.co.kr/learn/courses/30/lessons/82612

import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    // var answer: Int64 = -1
    
    var sum: Int64 = 0
    for i in 1...count {
        sum += Int64(price) * Int64(i)
    }
    
    if Int64(money) - sum < 0 {
        return abs(Int64(money) - sum)
    } else {
        return 0
    }
}

