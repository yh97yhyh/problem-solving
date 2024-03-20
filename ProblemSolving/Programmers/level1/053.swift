//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/20/24.
//

// 소수 만들기
// https://school.programmers.co.kr/learn/courses/30/lessons/12977

import Foundation

func solution(_ nums1:[Int]) -> Int {
    nums = nums1
    recur()
    return answer
}

var answer = 0
var nums: [Int] = []
var cur: [Int] = []

func recur() {
    if cur.count == 3 {
        let num = cur.reduce(0, +)
        if isPrimeNumber(num) {
            print(cur, num)
            answer += 1
        }
        return
    }
    
    for num in nums {
        if !cur.isEmpty && num < cur.last! {
            continue
        }
        
        if !cur.contains(num) {
            cur.append(num)
            recur()
            cur.removeLast()
        }
    }
}


func isPrimeNumber(_ num: Int) -> Bool {
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
