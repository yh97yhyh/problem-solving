//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/27/24.
//

// 나이순 정렬
// 10814

import Foundation

let N = Int(readLine()!)!

var peoples: [(Int, Int, String)] = []
for i in 0..<N {
    let inputs = readLine()!.split(separator: " ").map { String($0) }
    let people = (i, Int(inputs[0])!, inputs[1])
    peoples.append(people)
}

peoples.sort(by: {
    if $0.1 == $1.1 {
        return $0.0 < $1.0
    } else {
        return $0.1 < $1.1
    }
})

var answer = ""
for people in peoples {
    answer += "\(people.1) \(people.2)\n"
}
print(answer)
