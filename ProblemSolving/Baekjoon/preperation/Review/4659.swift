//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 9/5/24.
//

// 비밀번호 발음하기
// 4659

import Foundation

let vowels: [Character] = ["a", "e", "i", "o", "u"]

while true {
    let str = readLine()!
    
    if str == "end" {
        break
    }
    
    isValid(str)
}

func isValid(_ str: String) {
    var isValid = true
    var hasVowel = false
    
    var pre: Character = " "
    var vowelConCnt = 0
    var consConCnt = 0
    var sameCount = 1
    
    for s in str {
        
        if vowels.contains(s) {
            hasVowel = true
            vowelConCnt += 1
            consConCnt = 0
        } else {
            consConCnt += 1
            vowelConCnt = 0
        }
        
        if pre == s {
            sameCount += 1
        } else {
            sameCount = 1
        }
        
        if vowelConCnt >= 3 || consConCnt >= 3 || (sameCount >= 2 && pre != "e" && pre != "o") {
            isValid = false
            break
        }
        
        pre = s
    }
    
    (isValid && hasVowel) ? print("<\(str)> is acceptable.") : print("<\(str)> is not acceptable.")
}

