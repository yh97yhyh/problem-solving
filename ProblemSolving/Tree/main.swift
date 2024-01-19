//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/19.
//

// 트리 순회
// 1991

import Foundation

let n = Int(readLine()!)! // 이진 트리의 노드 개수

var childs: [[String]] = Array(repeating: [], count: n+1)

for _ in 0..<n {
    let inputs = readLine()!.split(separator: " ").map { String($0) }
    let a = inputs[0]
    let b = inputs[1]
    let c = inputs[2]
    
    
}

//func toCharacter(_ num: Int) -> Character {
//
//}
//
//func toInt(_ char: Character) -> Int {
//    return Int((char.asciiValue! - Character("A").asciiValue!))
//}
