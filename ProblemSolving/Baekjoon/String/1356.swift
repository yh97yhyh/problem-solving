//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2/7/24.
//

// 유진수
// 1356

import Foundation

let str = readLine()!
var isValid = false
for i in 1..<str.count {
    let leftString = str.prefix(i)
    let rightString = str.suffix(str.count-i)
//    print(leftString, rightString)
    
    var leftNum = 1
    var rightNum = 1
    
    for leftChar in leftString {
        leftNum *= Int(String(leftChar))!
    }
    
    for rightChar in rightString {
        rightNum *= Int(String(rightChar))!
    }
    
    if leftNum == rightNum {
        isValid = true
        break
    }
}

if isValid {
    print("YES")
} else {
    print("NO")
}
