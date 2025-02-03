//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 7/13/24.
//

// 주식
// 11501

import Foundation

let t = Int(readLine()!)!

for _ in 0..<t {
    var result = 0
    let day = Int(readLine()!)!
    let prices = readLine()!.split(separator: " ").map { Int(String($0))! }
    
    var maxPrice = 0
    var profit = 0
    
    for price in prices.reversed() {
        if price > maxPrice {
            maxPrice = price
        } else {
            profit += maxPrice - price
        }
    }
    
    print(profit)
}


