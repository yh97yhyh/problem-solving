//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/27/24.
//

// 좌표 정렬하기 2
// 11651

import Foundation

let N = Int(readLine()!)!

var coords: [[Int]] = []

for i in 0..<N {
    let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
    coords.append(inputs)
}

coords.sort(by: {
    if $0[1] == $1[1] {
        return $0[0] < $1[0]
    } else {
        return $0[1] < $1[1]
    }
})

var answer = ""
for coord in coords {
    answer += "\(coord[0]) \(coord[1])\n"
}
print(answer)


