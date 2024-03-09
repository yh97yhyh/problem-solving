//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/9/24.
//

import Foundation

func solution(_ str:String) -> Int {
    var result = ""
    var toConvert = ""
    
    for c in str {
        let s = String(c)
        if let num = Int(s) {
            result += s
        } else {
            toConvert += s
        }
        if !toConvert.isEmpty {
            if let str = convert(toConvert) {
                result += str
                toConvert = ""
            }
        }
    }
    
    return Int(result)!
}

func convert(_ str: String) -> String? {
    switch str {
    case "one":
        return "1"
    case "two":
        return "2"
    case "three":
        return "3"
    case "four":
        return "4"
    case "five":
        return "5"
    case "six":
        return "6"
    case "seven":
        return "7"
    case "eight":
        return "8"
    case "nine":
        return "9"
    case "zero":
        return "0"
    default:
        return nil
    }
}
