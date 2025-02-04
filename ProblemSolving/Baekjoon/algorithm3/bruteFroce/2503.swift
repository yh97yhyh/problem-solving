//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2/5/25.
//

import Foundation

let n = Int(readLine()!)!
var candidates: [[Int]] = []
var questions: [([Int], Int, Int)] = []
var answer = 0

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let question = String(input[0]).map { Int(String($0))! }
    let strike = input[1]
    let ball = input[2]
    questions.append((question, strike, ball))
}

func generateCandidates() {
    for i in 1...9 {
        for j in 1...9 {
            if j == i {
                continue
            }
            for k in 1...9 {
                if k == i || k == j {
                    continue
                }
                candidates.append([i, j, k])
            }
        }
    }
}

func calculateStrikeAndBall(_ num1: [Int], _ num2: [Int]) -> (Int, Int) {
    var strike = 0
    var ball = 0
    
    for i in 0..<3 {
        if num1[i] == num2[i] {
            strike += 1
        } else if num2.contains(num1[i]) {
            ball += 1
        }
    }
    
    return (strike, ball)
}

generateCandidates()
for candidate in candidates {
    var isValid = true
    
    for (question, expectedStrike, expectedBall) in questions {
        let (strike, ball) = calculateStrikeAndBall(candidate, question)
        if expectedStrike != strike || expectedBall != ball {
            isValid = false
            break
        }
    }
    
    if isValid {
        answer += 1
    }
}

print(answer)
