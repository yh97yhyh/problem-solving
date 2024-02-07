//
//  codelandUsernameValidation.swift
//  ProblemSolving
//
//  Created by 영현 on 2/7/24.
//

// https://coderbyte.com/results/yhyhyh:Codeland%20Username%20Validation:Swift

import Foundation

let test = "__bbbbbbb"

func CodelandUsernameValidation(_ str: String) -> String {

  // code goes here
  // Note: feel free to modify the return type of this function
  let isValid1 = str.count >= 4 && str.count <= 25
  let isValid2 = isNotNumber(str.first!)
  let isValid3 = isAllValid3(str)
  let isValid4 = str.last! != "_"
  // print(isValid1, isValid2, isValid3, isValid4)

  let isValid = isValid1 && isValid2 && isValid3 && isValid4

  return isValid ? "true" : "false"
}

func isNotNumber(_ c: Character) -> Bool {
  let val = Int(UnicodeScalar(String(c))!.value)
  if (val >= 65 && val <= 90) || (val >= 97 && val <= 122) {
    return true
  } else {
    return false
  }
}

func isAllValid3 (_ str: String) -> Bool {
  // 48~57, 65~90, 97~122, 95
  for c in str {
    let val = Int(UnicodeScalar(String(c))!.value)
    if (val >= 48 && val <= 57) || (val >= 65 && val <= 90) || (val >= 97 && val <= 122) || val == 95 {
      continue
    } else {
      return false
    }
  }
  return true
}

CodelandUsernameValidation(test)
