//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2/7/24.
//

// 단어 나누기
// 1251

import Foundation

let arr = Array(readLine()!)
var target = ""
var isStart = true
for i in 0..<arr.count-2 {
    for j in i+1..<arr.count-1 {
        let str1 = String(String(arr[0...i]).reversed())
        let str2 = String(String(arr[i+1...j]).reversed())
        let str3 = String(String(arr[j+1..<arr.count]).reversed())
//        print(i, j, str1, str2, str3)
        let sum = str1 + str2 + str3
        if isStart {
            target = sum
            isStart = false
        } else {
            if sum < target {
//                print(sum)
                target = sum
            }
        }
    }
}

print(target)
