//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2/7/24.
//

// https://coderbyte.com/results/yhyhyh:Tree%20Constructor:Swift

import Foundation

let test = ["(2,5)", "(2,6)"] // false

func TreeConstructor(_ strArr: [String]) -> String {
  // code goes here
  // Note: feel free to modify the return type of this function

  var result = ""
  var trees: [Int: [Int]] = [:]
  var childs: [Int] = []

  for str in strArr {
    var newStr = ""
    newStr = str.replacingOccurrences(of: "(", with: "")
    newStr = newStr.replacingOccurrences(of: ")", with: "")
    let nums = newStr.split(separator: ",").map { Int($0)! } // child, parent
    if trees.keys.contains(nums[1]) {
      trees[nums[1]]!.append(nums[0])
    } else {
      trees[nums[1]] = [nums[0]]
    }

    if childs.contains(nums[0]) {
      return "false"
    } else {
      childs.append(nums[0])
    }
  }

  for tree in trees {
    if tree.value.count > 2 {
      return "false"
    }
  }
  return "true"
}

print(TreeConstructor(test))
