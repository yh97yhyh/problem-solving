//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/11/24.
//

import Foundation

func solution(_ arr:[Int]) -> Int {
    if arr.count == 1 {
        return arr[0]
    } else if arr.count == 2 {
        return lcm(arr[0], arr[1])
    }
    
    var curLcm = lcm(arr[0], arr[1])
    for i in 2..<arr.count {
        curLcm = lcm(curLcm, arr[i])
    }
    
    return curLcm
}

func gcd(_ a: Int, _ b: Int) -> Int {
    var num1 = a
    var num2 = b
    
    while num2 != 0 {
        let temp = num1
        num1 = num2
        num2 = temp % num2
    }
    
    return abs(num1)
}

func lcm(_ a: Int, _ b: Int) -> Int {
    return a * b / gcd(a, b)
}
