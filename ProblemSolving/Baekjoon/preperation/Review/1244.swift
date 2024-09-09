//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 9/9/24.
//

// 스위치 켜고 끄기
// 1244
// 남학생은 자기가 받은 수의 배수의 스위치 상태를 바꿈
// 여학생은 자기가 받은 수와 같은 번호가 붙은 스위치를 중심으로 좌우가 대칭이면서 갖아 많은 스위치를 포함하는 구간의 스위치를 바꿈, 구간에 속한 스위치 개수는 항상 홀수가 됨

import Foundation

let n = Int(readLine()!)!
var switches = readLine()!.split(separator: " ").map { Int(String($0))! }
switches.insert(0, at: 0)
var studentNum = Int(readLine()!)!

for _ in 0..<studentNum {
    var isBoy = true
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let jender = input[0]
    let num = input[1]
    
    isBoy = jender == 1 ? true : false
    
    if isBoy {
        var i = num
        while true {
            if i > n {
                break
            }
            switches[i] = switches[i] == 1 ? 0 : 1
            i += num
        }
    } else {
        var offset = 1
        switches[num] = switches[num] == 1 ? 0 : 1
        while true {
            if num-offset < 1 || num+offset > n {
                break
            }
            
            if switches[num-offset] == switches[num+offset] {
                switches[num-offset] = switches[num-offset] == 1 ? 0 : 1
                switches[num+offset] = switches[num+offset] == 1 ? 0 : 1
            } else {
                break
            }
            offset += 1
        }
    }
//    print(switches)
}

var answer = ""
for i in 1...n {
    if i % 20 == 1 && i != 1{
        answer += "\n"
    }
    answer += "\(switches[i]) "
}
print(answer)
//let output = switches.map { String($0) }.joined(separator: " ")
//print(output)
