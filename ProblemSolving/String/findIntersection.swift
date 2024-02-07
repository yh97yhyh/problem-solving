//
//  findIntersection.swift
//  ProblemSolving
//
//  Created by 영현 on 2/7/24.
//

// https://coderbyte.com/results/yhyhyh:Find%20Intersection:Swift

import Foundation

func FindIntersection(_ strArr: [String]) -> String {

  // code goes here
  // Note: feel free to modify the return type of this function

  var str1 = strArr[0]
  str1 = str1.replacingOccurrences(of: ",", with: "")
  let set1 = Set(str1.split(separator: " ").map { Int(String($0))! })

  var str2 = strArr[1]
  str2 = str2.replacingOccurrences(of: ",", with: "")
  let set2 = Set(str2.split(separator: " ").map { Int(String($0))! })

  let intersection = Array(set1.intersection(set2)).sorted()

  if intersection.isEmpty {
    return "false"
  } else {
    var result = ""
    for i in 0..<intersection.count {
      if i == intersection.count-1 {
        result += "\(intersection[i])"
      } else {
        result += "\(intersection[i]),"
      }
    }
    return result
  }
}
