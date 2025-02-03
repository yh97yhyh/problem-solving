//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 11/13/24.
//

// A와 B 2
// 12919

// 문자열 뒤에 A 추가, 문자열 뒤에 B를 추가하고 문자열 뒤집기

import Foundation

let s = readLine()!
let t = readLine()!
let len = s.count

func recur(_ str: String) {
    if str == s {
        print(1)
        exit(0)
    }
    
    if str.count < len {
        return
    }
    
    if str.last == "A" {
        recur(String(str.dropLast()))
    }
    
    if str.first == "B" {
        recur(String(str.dropFirst().reversed()))
    }
}

recur(t)
print(0)

// 시간초과
//func recur(_ str: String) {
//    if str.count == len {
//        if str == t {
//            print(1)
//            exit(0)
//        }
//        return
//    }
//
//    recur(str+"A")
//    recur(String((str+"B").reversed()))
//
//}
