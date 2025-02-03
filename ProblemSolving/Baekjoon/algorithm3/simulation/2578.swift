//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2/3/25.
//

// 2578
// 빙고

import Foundation

var dict: [Int: (Int, Int)] = [:]
var check: [[(Bool, Int)]] = Array(repeating: Array(repeating: (false, 0), count: 5), count: 5) // (불렸는지 여부, 빙고 종류)
var answer = 0
var bingoCount = 0

for i in 0..<5 {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    for j in 0..<5 {
        let num = input[j]
        dict[num] = (i, j)
    }
}

//print(dict)

for _ in 0..<5 {
    let numbers = readLine()!.split(separator: " ").map { Int(String($0))! }
    
    for num in numbers {
        if let (i, j) = dict[num] {
            check[i][j].0 = true
            answer += 1
            calculateBingo(i, j, num)
            
            if bingoCount >= 3 {
                print(answer)
                exit(0)
            }
        }
    }
}

func calculateBingo(_ r: Int, _ c: Int, _ num: Int) {
    var bingoResult = [true, true, true, true]
    
    // 가로
    for j in 0..<5 {
        let val = check[r][j]
        if val.0 == false || val.1 == 1 {
            bingoResult[0] = false
            break
        }
    }
    
    if bingoResult[0] == true {
        for j in 0..<5 {
            check[r][j].1 = 1
        }
        bingoCount += 1
//        print("bingo1! \(num)")
    }
    
    // 세로
    for i in 0..<5 {
        let val = check[i][c]
        if val.0 == false || val.1 == 2 {
            bingoResult[1] = false
            break
        }
    }
    
    if bingoResult[1] == true {
        for i in 0..<5 {
            check[i][c].1 = 2
        }
        bingoCount += 1
//        print("bingo2! \(num)")
    }
    
    // 대각선1
    if r == c {
        for i in 0..<5 {
            let val = check[i][i]
            if val.0 == false || val.1 == 3 {
                bingoResult[2] = false
                break
            }
        }
        
        if bingoResult[2] == true {
            for i in 0..<5 {
                check[i][i].1 = 3
            }
            bingoCount += 1
//            print("bingo3! \(num)")
        }
    }
    
    // 대각선2
    if abs(4-r) == c {
        for i in 0..<5 {
            let val = check[i][4-i]
            if val.0 == false || val.1 == 4 {
                bingoResult[3] = false
                break
            }
        }
        
        if bingoResult[3] == true {
            for i in 0..<5 {
                check[i][4-i].1 = 4
            }
            bingoCount += 1
//            print("bingo4! \(num)")
        }
    }
}


print(answer)
