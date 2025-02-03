//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 9/15/24.
//

// 타노스
// 20310
// 0과 1로 이루어진 문자열 S
// S가 포함하는 0과 1의 개수는 모두 짝수

import Foundation

var arr = Array(readLine()!)
var oneCount = 0
var zeroCount = 0

for c in arr {
    if c == "1" {
        oneCount += 1
    } else {
        zeroCount += 1
    }
}

let targetOneCount = oneCount / 2
let targetZeroCount = zeroCount / 2
var i = 0
var cnt = oneCount

while true {
    if cnt == targetOneCount {
        break
    }
    
    if arr[i] == "1" {
        arr[i] = "2"
        cnt -= 1
    }
    
    i += 1
}

i = arr.count - 1
cnt = zeroCount

while true {
    if cnt == targetZeroCount {
        break
    }
    
    if arr[i] == "0" {
        arr[i] = "2"
        cnt -= 1
    }
    
    i -= 1
}

let result = String(arr.filter { $0 != "2" })
print(result)
