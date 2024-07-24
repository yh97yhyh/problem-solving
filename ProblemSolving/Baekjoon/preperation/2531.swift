//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 7/22/24.
//

// 회전 초밥
// 2531

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0] // 접시 수
let d = input[1] // 초밥 가지 수
let k = input[2] // 연속해서 먹는 접시 수
let c = input[3] // 쿠폰 번호

var sushis: [Int] = []
var curCombi: [Int] = []
var sushiCount = [Int](repeating: 0, count: d + 1)
var uniqueSushiCount = 0
var answer = 0
//var isStart = true
for i in 0..<n {
    let num = Int(readLine()!)!
    sushis.append(num)
    
    if i < k {
        curCombi.append(num)
    }
}
sushis = sushis + sushis

for i in 0..<k {
    if sushiCount[sushis[i]] == 0 {
        uniqueSushiCount += 1
    }
    sushiCount[sushis[i]] += 1
}
answer = uniqueSushiCount
if sushiCount[c] == 0 {
    answer += 1
}

if answer == k + 1 {
    print(answer)
} else {
    for i in 1..<n {
        let removeSushi = sushis[i-1]
        let addSushi = sushis[i+k-1]
        
        if sushiCount[removeSushi] == 1 {
            uniqueSushiCount -= 1
        }
        sushiCount[removeSushi] -= 1
        
        if sushiCount[addSushi] == 0 {
            uniqueSushiCount += 1
        }
        sushiCount[addSushi] += 1
        
        var curUniqueSushiCount = uniqueSushiCount
        if sushiCount[c] == 0 {
            curUniqueSushiCount += 1
        }
        answer = max(answer, curUniqueSushiCount)
        if answer == k + 1 {
            break
        }
    }
    
    print(answer)
}

//for i in 0..<n {
//    var lastIndex = i+k-1
//    
////    if !isStart {
////        curCombi.removeFirst()
////        curCombi.append(sushis[lastIndex])
////    }
//    
//    let setCurCombi = Set(curCombi)
//    if setCurCombi.count == k {
//        if setCurCombi.contains(c) {
//            answer = max(k, answer)
//        } else {
//            answer = k+1
//            break
//        }
//    } else {
//        if setCurCombi.contains(c) {
//            answer = max(setCurCombi.count, answer)
//        } else {
//            answer = max(setCurCombi.count+1, answer)
//        }
//    }
//    
////    isStart = false
//}
//
//print(answer)
