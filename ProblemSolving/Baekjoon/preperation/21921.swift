//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 7/7/24.
//

// 블로그
// 21921

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0] // 블로그를 시작하고 지난 일 수
let x = input[1] // x일동안 가장 많이 들어온 방문자 수와 그 기간

let arr = readLine()!.split(separator: " ").map { Int(String($0))! }

var answerView = 0
var answerCount = 1
var curView = 0
var count = 0
var start = 0

for i in 0..<n {
    let view = arr[i]
    
    if count < x {
        curView += view
        answerView = curView
        count += 1
    } else {
        curView -= arr[start]
        curView += view
        if curView > answerView {
            answerView = curView
            answerCount = 1
        } else if curView == answerView {
            answerCount += 1
        }
        start += 1
    }
//    print(i, start, count, answerCount, answerView, curView)
    
}

//print("==================================")

if answerView == 0 {
    print("SAD")
} else {
    print(answerView)
    print(answerCount)
}
