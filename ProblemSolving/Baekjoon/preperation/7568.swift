//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 6/30/24.
//

import Foundation

let n = Int(readLine()!)!

var arr: [(Int, Int, Int)] = []
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    arr.append((input[0], input[1], 1))
}

for i in 0..<n {
    for j in 0..<n {
        if arr[i].0 > arr[j].0 && arr[i].1 > arr[j].1 {
            arr[j].2 += 1
        }
    }
}

var answer = ""
for a in arr {
    answer += "\(a.2) "
}
print(answer)
