//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 7/3/24.
//

// 스위치 켜고 끄기
// 1244
// 남학생은 스위치 번호가 자기가 받은 수의 배수이면 스위치 상태를 바꾼다
// 여학생은 받은 수의 스위치를 중심으로 좌우가 대칭이면서 가장 많은 스위치를 포함하는 구간을 찾아 그 구간에 속한 스위치의 상태를 모두빠군다.

import Foundation

let switchCount = Int(readLine()!)! // 스위치 개수
var states = readLine()!.split(separator: " ").map { Int(String($0))! } // 스위치 상태
let studentCount = Int(readLine()!)!

states.insert(0, at: 0)

for _ in 0..<studentCount {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let s = input[0]
    let n = input[1]
    
    if s == 1 {
        var cnt = 1
        
        while true {
            if n * cnt > switchCount {
                break
            }
            
            states[n * cnt] = (states[n * cnt] == 0) ? 1 : 0
            
            cnt += 1
        }
    } else {
        var cnt = 1
        
        while true {
            if n - cnt < 1 || n + cnt > switchCount {
                break
            }
            
            if states[n-cnt] == states[n+cnt] {
                states[n-cnt] = (states[n+cnt] == 0) ? 1 : 0
                states[n+cnt] = (states[n+cnt] == 0) ? 1 : 0
            } else {
                break
            }
            
            cnt += 1
        }
        
        states[n] = (states[n] == 0) ? 1 : 0
    }
}

states.removeFirst()

var answer = ""
for i in 0..<switchCount {
    if i % 20 == 0 && i != 0 {
        answer += "\n"
    }
    
    answer += "\(states[i]) "
}
print(answer)

//for i in 0..<switchCount {
//    if i % 20 == 0 {
//        print()
//    }
//
//    print(states[i], terminator: " ")
//}
