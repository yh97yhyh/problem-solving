//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2/7/24.
//

// 명령 프롬프트
// 1032

import Foundation

let n = Int(readLine()!)! // 파일의 갯수

var strArray: [String] = []
var result = ""

for i in 0..<n {
    let str = readLine()!
    strArray.append(str)
}

for i in 0..<strArray[0].count {
    let iIndex = strArray[0].index(strArray[0].startIndex, offsetBy: i)
    var target = strArray[0][iIndex]
    result += "\(target)"
    for j in 1..<n {
        if target != strArray[j][iIndex] {
            result.removeLast()
            result += "?"
            break
        }
    }
}

print(result)
