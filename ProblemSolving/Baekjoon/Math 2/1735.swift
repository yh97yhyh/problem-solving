//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/28/24.
//

// 분수 합
// 1735

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let a = input[0]
let b = input[1] // a/b

let input1 = readLine()!.split(separator: " ").map { Int(String($0))! }
let c = input1[0]
let d = input1[1] // c/d

func getGcd(_ a: Int, _ b: Int) -> Int {
    var n1 = a
    var n2 = b
    
    while n2 != 0 {
        let tmp = n1
        n1 = n2
        n2 = tmp % n2
    }
    
    return abs(n1)
}

func getLcm(_ a: Int, _ b: Int) -> Int {
    print(a, b)
    return a * b / getGcd(a, b)
}

let gcd = getGcd(b, d)
var a1 = (a * d) / gcd
var c1 = (b * c) / gcd

let numer = a1 + c1
let denom = b * d / gcd
let gcd2 = getGcd(numer, denom)
print("\(numer / gcd2) \(denom / gcd2)")
