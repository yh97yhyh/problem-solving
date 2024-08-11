//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 8/11/24.
//

// A와 B 2
// 12919

import Foundation

let s = readLine()!
let t = readLine()!
//let len = t.count
let len = s.count

var answer = 0

func recur(_ cur: String) {
//    print(cur)
    if cur == s {
        answer = 1
        return
    }
    
    if cur.count < len {
        return
    }
    
    if cur.last == "A" {
        let c = String(cur.dropLast())
        recur(c)
    }
    if cur.first == "B" {
        let c = String(cur.dropFirst().reversed())
        recur(c)
    }

}

recur(t)
print(answer)

//func recur(_ cur: String) {
//    if cur.count == len {
//        if cur == t {
//            answer = 1
//        }
//        return
//    }
//    
//    recur(cur + "A")
//    recur(String((cur + "B").reversed()))
//}
//
//recur(s)
//
//if answer == 1 {
//    print(1)
//} else {
//    print(0)
//}
