//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 9/1/24.
//

// 1863
// 스카이라인
// 건물의 높이가 높아지면 그 뒤에 하나의 건물이 더 있다
// 건물의 높이가 낮아지면 뒤에 있는 건물이 끝났다
// https://velog.io/@leetaekyu2077/Python-%EB%B0%B1%EC%A4%80-1863%EB%B2%88-%EC%8A%A4%EC%B9%B4%EC%9D%B4%EB%9D%BC%EC%9D%B8-%EC%89%AC%EC%9A%B4%EA%B1%B0

import Foundation

let n = Int(readLine()!)!
var skylines: [Int] = []
var answer = 0

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let y = input[1]
    skylines.append(y)
}

skylines.append(0) // 마지막 건물을 세기 위해
var stack = [0] // 스택이 비지 않게

for p in skylines {
    var height = p // 마지막으로 카운트한 건물의 높이를 기록하고, 앞에서 카운트한 건물을 또 카운트하지 않도록 함
    while true {
        if stack.last! <= p {
            break
        }
        if stack.last != height {
            answer += 1
            height = stack.last!
        }
        stack.removeLast()
    }
    stack.append(p)
}

print(answer)

//var arr = Array(repeating: Array(repeating: 0, count: 5000001), count: 1000001)
//var checked = Array(repeating: Array(repeating: false, count: 5000001), count: 1000001)
//
//var preX = 0
//var preY = 0
//var maxX = 0
//var maxY = 0
//
//for _ in 0..<n {
//    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//    let curX = input[0]
//    let curY = input[1]
//    
//    for x in preX..<curX {
//        for y in 0...preY {
//            arr[x][y] = 1
//        }
//    }
//    
//    preX = curX
//    preY = curY
//    maxX = curX
//    maxY = max(maxY, curY)
//}
//
//for y in 0...preY {
//    arr[maxX][y] = 1
//}
