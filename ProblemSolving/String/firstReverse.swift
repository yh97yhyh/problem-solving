//
//  firstReverse.swift
//  ProblemSolving
//
//  Created by 영현 on 2/8/24.
//

// https://coderbyte.com/results/yhyhyh:First%20Reverse:Swift

import Foundation

func FirstReverse(_ str: String) -> String {
  var result = ""

  let reversed = String(str.reversed())
  let arr = reversed.split(separator: " ").map { String($0) }

  for s in arr {
    result += "\(s) "
  }

  return result

}
