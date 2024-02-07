//
//  longestWord.swift
//  ProblemSolving
//
//  Created by 영현 on 2/8/24.
//

// https://coderbyte.com/results/yhyhyh:Longest%20Word:Swift

import Foundation

func LongestWord(_ sen: String) -> String {

  // code goes here
  // Note: feel free to modify the return type of this function
  let arr = sen.split(separator: " ").map { String($0) }

  var result = ""
  for str in arr.reversed() {
    if checkValidCount(result) <= checkValidCount(str) {
      result = str
    }
  }
  
  return result

}

func checkValidCount(_ str: String) -> Int {
  var cnt = 0
  for c in str {
    let asci = Int(UnicodeScalar("\(c)")!.value)
    if (asci >= 65 && asci <= 90) || (asci >= 97 && asci <= 122) || (asci >= 48 && asci <= 57) {
      cnt += 1
    }
  }
  // print(str, cnt)
  return cnt
}
