//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2/7/24.
//

// 행복한지 슬픈지
// 10769

import Foundation

let str = readLine()!

var check = ""
var happyCnt = 0
var sadCnt = 0

for char in str {
    if char == ":" {
        check += String(char)
    } else if char == "-" {
        check += String(char)
    } else if char == "(" && check == ":-" {
        sadCnt += 1
        check = ""
    } else if char == ")" && check == ":-" {
        happyCnt += 1
        check = ""
    }
}

if happyCnt == 0 && sadCnt == 0 {
    print("none")
} else if happyCnt == sadCnt {
    print("unsure")
} else if happyCnt > sadCnt {
    print("happy")
} else {
    print("sad")
}
