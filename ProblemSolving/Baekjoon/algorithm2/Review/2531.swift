//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 11/12/24.
//

// 회전초밥
// 2531

// 1. k개의 접시를 연속해서 먹을 경우 할인된 가격으로 제공
// 1번에 참가할 경우 해당 초밥을 무료로 제공, 해당 초밥이 없으면 요리사가 새로 만들어 손님에게 제공
// 손님이 먹을 수 있는 초밥 가짓수의 최댓값

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0] // 접시 수
let d = input[1] // 초밥 가짓수
let k = input[2] // 연속해서 먹는 접시 수
let c = input[3] // 쿠폰 번호

var sushis: [Int] = []

for _ in 0..<n {
    sushis.append(Int(readLine()!)!)
}
sushis = sushis + sushis

var frequency: [Int: Int] = [:]

var left = 0
var right = left + k - 1

for i in 0...right {
    let s = sushis[i]
    frequency[s, default: 0] += 1
}

var se = (left, right)
var answer = frequency.count
if frequency[c] == nil {
    answer += 1
}

while true {
    if right >= sushis.count-1 {
        break
    }
    
    // 왼쪽 초밥 제거
    let leftSushi = sushis[left]
    frequency[leftSushi, default: 0] -= 1
    if frequency[leftSushi] == 0 {
        frequency[leftSushi] = nil
    }
    left += 1
    
    // 오른쪽 초밥 추가
    right += 1
    let rightSushi = sushis[right]
    frequency[rightSushi, default: 0] += 1
    
    // 가짓수 계산
    var curCnt = frequency.count
    if frequency[c] == nil {
        curCnt += 1
    }
    
    if curCnt > answer {
        answer = curCnt
        se = (left, right)
    }
}

print(answer)

//while true {
//    if right >= sushis.count {
//        break
//    }
//    
//    if left == 0 {
//        left += 1
//        right += 1
//        continue
//    }
//    
//    let leftSushi = sushis[left]
//    let rightSushi = sushis[right]
//    frequency[rightSushi, default: 0] += 1
//    
//    var curCnt = frequency.count
//    if frequency[c] == nil {
//        curCnt += 1
//    }
//    
//    if curCnt > answer {
//        answer = curCnt
//        se = (left, right)
//    }
//    
//    frequency[leftSushi, default: 0] -= 1
//    
//    if frequency[leftSushi] == 0 {
//        frequency[leftSushi] = nil
//    }
//    
//    left += 1
//    right += 1
//}
//
//print(se, answer)
