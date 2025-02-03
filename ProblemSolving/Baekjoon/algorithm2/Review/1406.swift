//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 9/17/24.
//

// 에디터
// 1406
// L > 왼쪽으로 한 칸
// D > 오른쪽으로 한 칸
// B > 커서 왼쪽에 있는 문자 삭제, 커서 오른쪽에 있던 문자는 그대로
// P $ > $라는 문자를 커서 왼쪽에 추가함

import Foundation

var left = Array(readLine()!)
var right: [Character] = []
let n = Int(readLine()!)!

for _ in 0..<n {
    let command = readLine()!
    
    switch command {
    case "L":
        if !left.isEmpty {
            right.append(left.removeLast())
        }
    case "D" :
        if !right.isEmpty {
            left.append(right.removeLast())
        }
    case "B" :
        if !left.isEmpty {
            left.removeLast()
        }
    default:
        left.append(command.last!)
    }
}

print(String(left + right.reversed()))


//var cur = Array(readLine()!)
//let n = Int(readLine()!)!
//
//var cursor = cur.count
//
//for _ in 0..<n {
//    let input = readLine()!.split(separator: " ").map { String($0) }
//    let a = input[0]
//    
//    if a == "L" {
//        if cursor > 0 {
//            cursor -= 1
//        }
//    } else if a == "D" {
//        if cursor < cur.count {
//            cursor += 1
//        }
//    } else if a == "B" {
//        if cursor == cur.count {
//            cur.removeLast()
//            cursor -= 1
//        } else if cursor > 0 {
//            cur.remove(at: cursor-1)
//            cursor -= 1
//        }
//    } else if a == "P" {
//        let c = Character(input[1])
//        if cursor == cur.count {
//            cur.append(c)
//        } else {
//            cur.insert(c, at: cursor)
//        }
//        cursor += 1
//    }
//}
//
//print(String(cur))
