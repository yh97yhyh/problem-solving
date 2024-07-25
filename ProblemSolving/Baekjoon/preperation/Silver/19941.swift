//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 7/9/24.
//

// 햄버거 분배
// 19941

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let k = input[1]

let str = Array(readLine()!)

var people: [Int] = []
var hambuergers: [Int] = []

for (i, item) in str.enumerated() {
    if item == "P" {
        people.append(i)
    } else {
        hambuergers.append(i)
    }
}

var answer = 0
var hamburgerI = 0

for person in people {
    
    while true {
        if hamburgerI >= hambuergers.count {
            break
        }
        
        if abs(person - hambuergers[hamburgerI]) <= k {
//            print(person, hambuergers[hamburgerI])
            answer += 1
            hamburgerI += 1
            break
        } else if person - hambuergers[hamburgerI] > k {
            hamburgerI += 1
        } else {
            break
        }
    }
}

print(answer)
