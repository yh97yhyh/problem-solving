//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/9/24.
//

import Foundation

let test = "banana"
let test2 = "foobar"

func solution(_ str:String) -> [Int] {
    var result: [Int] = []
    var passed: [Character] = []
    var distances: [Int] = []
    
    for i in 0..<str.count {
        let index = str.index(str.startIndex, offsetBy: i)
        let char = str[index]
        if passed.isEmpty || !passed.contains(char) {
            passed.append(char)
            distances.append(i)
            result.append(-1)
        } else {
            let j = Int(passed.firstIndex(of: char)!)
            result.append(i - distances[j])
            distances[j] = i
        }
//        print(passed)
//        print(distances)
    }
    
    return result
}

print(solution(test))
print(solution(test2))
