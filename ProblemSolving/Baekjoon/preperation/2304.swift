//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 7/14/24.
//

// 창고 다각형
// 2304

import Foundation

let n = Int(readLine()!)!

var arr = Array(repeating: Array(repeating: 0, count: 1001), count: 1001)

var pillars: [(x: Int, y: Int)] = []
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let x = input[0]
    let y = input[1]
    pillars.append((x, y))
}

pillars.sort {
    $0.x < $1.x
}

var answer = 0
var curMaxY = 0
var curLastX = 0
let len = pillars.count

for i in 0..<len {
    let x = pillars[i].x
    let y = pillars[i].y
    
    if i == 0 {
        for j in 0..<y {
            arr[j][x] = 1
        }
        curLastX = x + 1
        curMaxY = y
    } else if i == len - 1 {
        if y >= curMaxY {
            for j in 0..<y {
                arr[j][x] = 1
            }
    
            for j in curLastX..<x {
                for k in 0..<curMaxY {
                    arr[k][j] = 1
                }
            }

        } else {
            for j in curLastX...x {
                for k in 0..<y {
                    arr[k][j] = 1
                }
            }
        }
        
        curLastX = x
        curMaxY = max(y, curMaxY)
    } else {
        if y >= curMaxY {
            for j in 0..<y {
                arr[j][x] = 1
            }
    
            for j in curLastX..<x {
                for k in 0..<curMaxY {
                    arr[k][j] = 1
                }
            }
            
            curMaxY = y
            curLastX = x + 1
        } else {
            for j in curLastX...x {
                for k in 0..<y {
                    arr[k][j] = 1
                }
            }
//            
//            curLastX = x
        }
    }
    
//    for i in 0..<arr.count {
//        print(arr[i])
//    }
//    print("===================")
}

for i in 0..<curLastX+1 {
    for j in 0..<curMaxY + 1 {
        if arr[j][i] == 1 {
            answer += 1
        }
    }
}

print(answer)
