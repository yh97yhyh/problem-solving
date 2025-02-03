//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/02/02.
//

// 용돈 관리
// 6236
// 하루에 한 번만 인출 가능!

// 테스트 케이스

// 2 2
// 500
// 501 > 501

// 5 5
// 1
// 1
// 1
// 1
// 100 > 100


import Foundation

let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = inputs[0] // n일동안
let m = inputs[1] // m번만 통장에서 돈을 뺌

var amounts: [Int] = []
var sum = 0
for _ in 0..<n {
    let a = Int(readLine()!)!
    amounts.append(a)
    sum += a
}

func sol() -> Int {
    var start = 0
    var end = sum
    var mid = 0
    var isSatisfied = true
    
    while true {
        if start >= end {
            break
        }
        
        isSatisfied = true
        var count = 0
        var myAmount = 0
        
        mid = (start + end) / 2
        
        myAmount += mid
        count += 1
        
        for amount in amounts {
            if myAmount >= amount {
                myAmount -= amount
            } else {
                myAmount = mid
                count += 1
                
                if myAmount < amount {
                    isSatisfied = false
                    break
//                    while true {
//                        if myAmount > amount {
//                            break
//                        }
//                        myAmount += mid
//                        count += 1
//                    }
                }
                myAmount -= amount
            }
            
            if count > m {
                isSatisfied = false
                break
            }
        }
        
//        print(mid, count, isSatisfied)
        
        if isSatisfied {
            end = mid
        } else {
            start = mid + 1
        }
        
    }
    
    return isSatisfied ? mid : mid+1
}

print(sol())
