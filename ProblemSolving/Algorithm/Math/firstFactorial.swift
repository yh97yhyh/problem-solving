//
//  firstFactorial.swift
//  ProblemSolving
//
//  Created by 영현 on 2/8/24.
//

// https://coderbyte.com/results/yhyhyh:First%20Factorial:Swift

import Foundation

func FirstFactorial(_ num: Int) -> Int {

  // code goes here
  // Note: feel free to modify the return type of this function
  var result = 1
  for i in 1...num {
    result *= i
  }

  return result

}
