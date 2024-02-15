//
//  primeDates.swift
//  ProblemSolving
//
//  Created by 영현 on 2/15/24.
//

// Prime Dates
// https://www.hackerrank.com/challenges/one-month-preparation-kit-prime-date

import Foundation

import Foundation

var month = Array(repeating: 0, count: 15)

func updateLeapYear(_ year: Int) {
    if year % 400 == 0 {
        month[2] = 29 // month[2] = 28;
    } else if year % 100 == 0 {
        month[2] = 28 // month[2] = 29;
    } else if year % 4 == 0 {
        month[2] = 29
    } else {
        month[2] = 28
    }
}

func storeMonth() {
    month[1] = 31
    month[2] = 28
    month[3] = 31
    month[4] = 30
    month[5] = 31
    month[6] = 30
    month[7] = 31
    month[8] = 31
    month[9] = 30
    month[10] = 31
    month[11] = 30
    month[12] = 31
}

func findLuckyDates(d1: Int, m1: Int, y1: Int, d2: Int, m2: Int, y2: Int) -> Int {
    storeMonth()

    var result = 0

    var d1 = d1
    var m1 = m1
    var y1 = y1

    while true {
        var x = d1
        x = x * 100 + m1
        x = x * 10000 + y1 // x = x * 1000 + y1;
        if x % 4 == 0 || x % 7 == 0 { // if x % 4 == 0 && x % 7 == 0
            result = result + 1
        }
        if d1 == d2 && m1 == m2 && y1 == y2 {
            break
        }
        updateLeapYear(y1)
        d1 = d1 + 1
        if d1 > month[m1] {
            m1 = m1 + 1
            d1 = 1
            if m1 > 12 {
                y1 =  y1 + 1
                m1 = 1 // m1 = m1 + 1;
            }
        }
    }
    return result
}

let input = readLine()!
var components = input.components(separatedBy: "-")
for i in 0..<components.count {
    components[i] = components[i].trimmingCharacters(in: .whitespaces)
}
let d1 = Int(components[0])!
let m1 = Int(components[1])!
let y1 = Int(components[2])!
let d2 = Int(components[3])!
let m2 = Int(components[4])!
let y2 = Int(components[5])!

let result = findLuckyDates(d1: d1, m1: m1, y1: y1, d2: d2, m2: m2, y2: y2)
print(result)
