//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 9/11/24.
//

// 햄버거 분배
// 19941
// 거리가 k 이하인 햄버거를 먹을 수 있다, 햄버거를 먹을 수 있는 사람의 최대 수

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0] // 식탁의 길이
let k = input[1] // 햄버거를 선택할 수 있는 거리
var arr = Array(readLine()!)

var hambuergers: [Int] = []
var people: [Int] = []

for i in 0..<arr.count {
    if arr[i] == "H" {
        hambuergers.append(i)
    } else {
        people.append(i)
    }
}

var answer = 0
var hIndex = 0

for person in people {
    
    while true {
        if hIndex >= hambuergers.count {
            break
        }
        
        if abs(person - hambuergers[hIndex]) <= k {
//            print(person, hambuergers[hIndex])
            answer += 1
            hIndex += 1
            break
        } else if person - hambuergers[hIndex] > k {
            // 햄버거가 너무 왼쪽에 있음
            hIndex += 1
        } else {
            break
        }
    }
}

print(answer)
