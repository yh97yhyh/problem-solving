//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 8/19/24.
//

// 빌런 호석
// 22251
// 호석이가 반전시킬 LED를 고를 수 있는 경우의 수

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0] // 총 n층
let k = input[1] // 디스플레이 k자리수
let p = input[2] // 최대 p개를 반전 (켜진 부분은 끄고, 꺼진 부분은 키고)
let x = input[3] // 현재 엘리베이터 x층

let numDisplays = [
    [1, 1, 1, 0, 1, 1, 1],
    [0, 0, 1, 0, 0, 1, 0],
    [0, 1, 1, 1, 1, 0, 1],
    [0, 1, 1, 1, 0, 1, 1],
    [1, 0, 1, 1, 0, 1, 0],
    [1, 1, 0, 1, 0, 1, 1],
    [1, 1, 0, 1, 1, 1, 1],
    [0, 1, 1, 0, 0, 1, 0],
    [1, 1, 1, 1, 1, 1, 1],
    [1, 1, 1, 1, 0, 1, 1]
]

var differences = Array(repeating: Array(repeating: 0, count: 10), count: 10)
for i in 0..<10 {
    for j in 0..<10 {
        let a = numDisplays[i]
        let b = numDisplays[j]
        for k in 0..<7 {
            if a[k] != b[k] {
                differences[i][j] += 1
            }
        }
    }
}
//print(differences)

let xDisplay = getDisplay(x)
var answer = 0

for i in 1...n {
    if String(i).count > k {
        break
    }
    
    if i == x {
        continue
    }
    
    let iDisplay = getDisplay(i)
    
    var count = 0
    var isValid = true
    for j in 0..<k {
        let n1 = Int(String(xDisplay[j]))!
        let n2 = Int(String(iDisplay[j]))!
        count += differences[n1][n2]
        
        if count > p {
            isValid = false
            break
        }
    }
    
    if isValid {
//        print(i)
        answer += 1
    }
}

func getDisplay(_ n: Int) -> [Character] {
    var strN = String(n)
    while strN.count < k {
        strN = "0" + strN
    }
    return Array(strN)
}

//print("--------")
print(answer)


// 이건 백준에서 런타임에러 남
//func getDisplay(_ n: Int) -> [Character] {
//    var display = ""
//    let strN = String(n)
//    let diffDigit = abs(k - strN.count)
//    if diffDigit > 0 {
//        display += "0"
//    }
//    display += strN
//    return Array(display)
//}
