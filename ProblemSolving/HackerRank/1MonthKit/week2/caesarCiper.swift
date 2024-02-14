//
//  caesarCiper.swift
//  ProblemSolving
//
//  Created by 영현 on 2/14/24.
//

// Caesar Cipher
// https://www.hackerrank.com/challenges/one-month-preparation-kit-caesar-cipher-1/problem

import Foundation

func caesarCipher(s: String, k: Int) -> String {
    // Write your code here
    var result = ""
    
    for c in s {
        result += change(c, k)
    }
    
    return result
}

func change(_ c: Character, _ k: Int) -> String {
    let newK = k % 26
    let s = String(c)
    let ascii = Int(UnicodeScalar(s)!.value)
    if (ascii >= 65 && ascii <= 90) || (ascii >= 97 && ascii <= 122) {
        var newAscii = ascii + newK
        if ascii <= 90 && newAscii > 90 {
            newAscii = 65 + (ascii - 90 + newK - 1)
        } else if ascii >= 97 && newAscii > 122 {
            newAscii = 97 + (ascii - 122 + newK - 1)
        }
        let newS = String(UnicodeScalar(newAscii)!)
        return newS
    } else {
        return s
    }
}
