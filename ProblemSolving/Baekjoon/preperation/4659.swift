//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 6/30/24.
//

// 비밀번호 발음하기
// 4659

import Foundation

while true {
    let str = readLine()!
    
    if str == "end" {
        break
    }
    
    let isAvailable = check(str)
    
    if isAvailable {
        print("<\(str)> is acceptable.")
    } else {
        print("<\(str)> is not acceptable.")
    }
}

func check(_ str: String) -> Bool {
    let vowels = ["a", "e", "i", "o", "u"]

    var isContainVowels = false
    var vowelsCount = 0
    var consonantsCount = 0
    var preWord = ""
    
    for c in str {
        let s = String(c)
        
        if isContainVowels || vowels.contains(s) {
            isContainVowels = true
        }
        
        if vowels.contains(s) {
            vowelsCount += 1
            consonantsCount = 0
        } else {
            consonantsCount += 1
            vowelsCount = 0
        }
        
        if vowelsCount >= 3 || consonantsCount >= 3 {
            return false
        }
        
        if preWord == s {
            if (preWord == "e" && s == "e") || (preWord == "o" && s == "o") {
                
            } else {
                return false
            }
        }
        
        preWord = s
    }
    
    return isContainVowels ? true : false
}
