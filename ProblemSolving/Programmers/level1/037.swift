//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/8/24.
//

// 시저 암호
// https://school.programmers.co.kr/learn/courses/30/lessons/12926

import Foundation

func solution(_ str:String, _ n:Int) -> String {
    var result = ""
    
    for s in str {
        if s == " " {
            result += " "
            continue
        }
        result += push(s, n)
    }
    
    return result
}

func push(_ char: Character, _ n: Int) -> String {
    let asciiIntValue = Int(char.asciiValue!)
    var newAsciiIntValue = asciiIntValue + n
    
    if asciiIntValue >= 97 && newAsciiIntValue > 122 {
        newAsciiIntValue -= 26
    } else if asciiIntValue <= 90 && newAsciiIntValue > 90 {
        newAsciiIntValue -= 26
    }
    
    return String(Character(UnicodeScalar(newAsciiIntValue)!))
}
