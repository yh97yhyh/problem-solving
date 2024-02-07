//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2/7/24.
//

// Coderbyte
// Min Window Substring
// https://coderbyte.com/results/yhyhyh:Min%20Window%20Substring:Swift

import Foundation

let test1 = ["aaabaaddae", "aed"] // dae
let test2 = ["aaffsfsfasfasfasfasfasfacasfafe", "fafe"] // fafe
let test3 = ["caae", "cae"] // caae
let test4 = ["cccaabbbbrr", "rbac"] // caabbbbr

func MinWindowSubstring(_ strArr: [String]) -> String {
    
    // code goes here
    // Note: feel free to modify the return type of this function
    let str = strArr[0]
    let strArray = Array(str)
    let targetStr = strArr[1]
    var start = 0
    var end = 0
    var currentStr = ""
    var shortedStr = str
    var isStart = true
    
    while true {
        if !isStart && start >= end {
            break
        }
        isStart = false
        
        let isValid = checkAllContains(currentStr, targetStr)
        if isValid {
            if currentStr.count < shortedStr.count {
                shortedStr = currentStr
            }
            currentStr.removeFirst()
            start += 1
        } else {
            if end == str.count {
                currentStr.removeFirst()
                start += 1
            } else {
                currentStr += String(strArray[end])
                end += 1
            }
        }
    }
    
    return shortedStr
}

func checkAllContains(_ str: String, _ targetStr: String) -> Bool {
    if str.count < targetStr.count {
        return false
    }
    
    var target = targetStr
    
    for c in str {
        if target.isEmpty {
            return true
        } else if target.contains(c) {
            let index = target.firstIndex(of: c)!
            target.remove(at: index)
        }
    }
    
    return target.isEmpty
}

print(MinWindowSubstring(test1))
print(MinWindowSubstring(test2))
print(MinWindowSubstring(test3))
print(MinWindowSubstring(test4))
