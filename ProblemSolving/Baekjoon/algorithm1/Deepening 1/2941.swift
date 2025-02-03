//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/28/24.
//

// 크로아티아 알파벳
// 2941

import Foundation

var targets = ["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="]
var str = String(readLine()!)

for target in targets {
    str = str.replacingOccurrences(of: target, with: "1")
}

print(str.count)
