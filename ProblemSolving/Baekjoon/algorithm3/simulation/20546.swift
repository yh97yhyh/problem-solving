//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2/3/25.
//

// 20546
// 기적의 매매법

import Foundation

let input = Int(readLine()!)!
var jhCash = input
var smCash = input
var jhStock = 0
var smStock = 0

var incCount = 0
var decCount = 0

let prices = readLine()!.split(separator: " ").map { Int(String($0))! }
var pre = prices[0]
let last = prices[13]
for i in 0..<14 {
    let price = prices[i]
    
    // jh
    if price <= jhCash {
        jhStock += jhCash / price
        jhCash = jhCash % price
        
    }
    
    //sm
    if pre < price {
        incCount += 1
        decCount = 0
    } else if pre > price {
        decCount += 1
        incCount = 0
    } else {
        decCount = 0
        incCount = 0
    }
    
    if incCount >= 3 {
        smCash += price * smStock
        smStock = 0
//        print("상민 매도가! \(price)")
    } else if decCount >= 3 {
        smStock += smCash / price
        smCash = smCash % price
//        print("상민 매수가! \(price) ")
    }
    
    pre = price
}

let jhResult = jhCash + last * jhStock
let smResult = smCash + last * smStock

if jhResult > smResult {
    print("BNP")
} else if smResult > jhResult {
    print("TIMING")
} else {
    print("SAMESAME")
}
