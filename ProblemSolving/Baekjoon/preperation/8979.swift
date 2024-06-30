//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 6/26/24.
//

// 올림픽
// 8979

import Foundation

let input1 = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input1[0] // 국가 수
let k = input1[1] // 등수를 알고 싶은 국가

var contries: [(Int, Int, Int, Int, Int)] = []

for i in 1...n {
    let medals = readLine()!.split(separator: " ").map { Int(String($0))! }
    let medal = (medals[0], medals[1], medals[2], medals[3], 0)
    
    contries.append(medal)
}

contries.sort {
    if $0.1 == $1.1 && $0.2 == $1.2 {
        return $0.3 > $1.3
    } else if $0.1 == $1.1 {
        return $0.2 > $1.2
    } else {
        return $0.1 > $1.1
    }
}

var preRank = 1
var sameCount = 0
for i in 0..<n {
    if i == 0 {
        contries[i].4 = 1
    } else {
        if contries[i-1].1 == contries[i].1 &&
            contries[i-1].2 == contries[i].2 &&
            contries[i-1].3 == contries[i].3  {
            contries[i].4 = preRank
            sameCount += 1
//            print("1 : \(contries[i].0)")
        } else {
            preRank += sameCount + 1
            contries[i].4 = preRank
            sameCount = 0
//            print("2 : \(contries[i].0)")

        }
    }
}

for i in 0..<n {
    if contries[i].0 == k {
        print(contries[i].4)
    }
}
