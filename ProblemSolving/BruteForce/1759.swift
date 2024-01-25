//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/25.
//

// 암호 만들기
// 1759

import Foundation

let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
let l = inputs[0] // 서로 다른 l개로 암호 구성
let c = inputs[1]
var str = readLine()!.split(separator: " ").map { String($0) }
str.sort()

let vowels: [String] = ["a", "e", "i", "o", "u"]
let consonants: [String] = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]

var result: [String] = []
var resultString = ""

func check(_ string: String) -> Bool {
    var isVowel = false
    var consonantCount = 0
    var isConsonant = false
    
    for v in vowels {
        if string.contains(v) {
            isVowel = true
            break
        }
    }
    
    for c in consonants {
        if string.contains(c) {
            consonantCount += 1
            if consonantCount >= 2 {
                isConsonant = true
                break
            }
        }
    }
    
    if isVowel && isConsonant {
        return true
    } else {
        return false
    }
}

func recur() {
    if result.count == l {
        let arrString = result.joined()
        if check(arrString) {
            resultString += arrString
            resultString += "\n"
        }
        return
    }
    for i in 0..<c {
        if !result.contains(str[i]) {
            if result.count > 0 {
                if result.last! > str[i] {
                    continue
                }
            }
            result.append(str[i])
            recur()
            result.popLast()
        }
    }
}

recur()
print(resultString)
