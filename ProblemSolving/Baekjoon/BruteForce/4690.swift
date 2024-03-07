//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/02/04.
//

// 완전 세제곱
// 4690

import Foundation

var result = ""
func perma(_ cube: Int) {
    for i in 2...cube {
        for j in i...cube {
            for k in j...cube {
//                if pow(Double(cube), 3) == pow(Double(i), 3) + pow(Double(j), 3) + pow(Double(k), 3) {
//                    result +=  "Cube = \(cube), Triple = (\(i),\(j),\(k))\n"
//                }
                if cube*cube*cube == i*i*i + j*j*j + k*k*k {
                    result +=  "Cube = \(cube), Triple = (\(i),\(j),\(k))\n"
                }
            }
        }
    }
}

for i in 6...100 {
    perma(i)
}
print(result)
