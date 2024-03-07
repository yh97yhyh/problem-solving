//
//  questionMarks.swift
//  ProblemSolving
//
//  Created by 영현 on 2/8/24.
//

// https://coderbyte.com/results/yhyhyh:Questions%20Marks:Swift

import Foundation

let test1 = "9???1???9??1???9" // false
let test2 = "mbbv???????????4??????ddsdsdcc9?" // false
let test3 = "5??aaaaaaaaaaaaaaaaaaa?5?5" // false
let test4 = "9???1???9???1???9" // true
let test5 = "5??aaaaaaaaaaaaaaaaaaa?5?a??5" // true

func QuestionsMarks(_ str: String) -> String {

  let len = str.count
  var left = -1
  var right = -1
  var isCanStart = true
  var check = ""
  var isValid = false

  for c in str {
    if let n = Int(String(c)) {
      if left == -1 {
        left = n
      } else {
        right = n
        if left + right == 10 {
          if checkValid(check) {
            isValid = true
          } else {
            isValid = false
            break
          }
        }
        check = ""
        left = n
      }
    } else {
      if left != -1 {
        check += "\(String(c))"
      }
    }
  }

  return isValid ? "true" : "false"
}

func checkValid(_ str: String) -> Bool {
  var cnt = 0
  for c in str {
    if c == "?" {
      cnt += 1
    }
  }

  return cnt >= 3 ? true : false
}

print(QuestionsMarks(test2))
