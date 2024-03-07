//
//  brackerMatcher.swift
//  ProblemSolving
//
//  Created by 영현 on 2/8/24.
//

// https://coderbyte.com/results/yhyhyh:Bracket%20Matcher:Swift

import Foundation

func BracketMatcher(_ str: String) -> String {

  // code goes here
  // Note: feel free to modify the return type of this function

  var isValid = true
  var lCount = 0
  var rCount = 0
  for c in str {
    if c == "(" {
      lCount += 1
    } else if c == ")" {
      rCount += 1
      if lCount >= rCount {
        lCount -= 1
        rCount -= 1
      } else {
        isValid = false
        break
      }
    }
  }
  if rCount > 0 || lCount > 0 {
    isValid = false
  }

  return isValid ? "1" : "0"
}
