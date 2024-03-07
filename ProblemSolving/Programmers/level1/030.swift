//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/7/24.
//

// 최대공약수와 최소공배수
// https://school.programmers.co.kr/learn/courses/30/lessons/12940

import Foundation

func solution(_ n:Int, _ m:Int) -> [Int] {
    let gcd = findGCD(n, m)
    let lcm = findLCM(n, m, gcd)
    return [gcd, lcm]
}


func findGCD(_ a: Int, _ b: Int) -> Int {
    var num1 = a
    var num2 = b

    while num2 != 0 {
        let temp = num1 % num2
        num1 = num2
        num2 = temp
    }

    return abs(num1)
}

func findLCM(_ a: Int, _ b: Int, _ gcd: Int) -> Int {
    return a * b / gcd
}
