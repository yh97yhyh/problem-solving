//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 7/13/24.
//

// 에디터
// 1406

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

//var str = Array(readLine()!)
//let n = Int(readLine()!)!
//
//var len = str.count
//var i = len
//
//for _ in 0..<n {
//    let input = readLine()!.split(separator: " ")
//    let command = String(input[0])
//    
//    switch command {
//    case "L":
//        if i > 0 {
//            i -= 1
//        }
//    case "D":
//        if i < len {
//            i += 1
//        }
//    case "B":
//        if i >= len {
//            str.removeLast()
//            len -= 1
//            i -= 1
//        } else if i > 0 {
//            str.remove(at: i-1)
//            i -= 1
//            len -= 1
//        }
//    case "P":
//        let c = input[1]
//        if i >= len {
//            str.append(c.first!)
//        } else {
//            str.insert(contentsOf: c, at: i)
//        }
//        i += 1
//        len += 1
//    default:
//        continue
//    }
//    
//}
//
//print(String(str))
