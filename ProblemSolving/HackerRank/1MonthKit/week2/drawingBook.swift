//
//  drawingBook.swift
//  ProblemSolving
//
//  Created by 영현 on 2/14/24.
//

// Drawing Book
// https://www.hackerrank.com/challenges/one-month-preparation-kit-drawing-book/problem

import Foundation

func pageCount(n: Int, p: Int) -> Int {
    // Write your code here
    
    return min(abs(n/2 - p/2), p/2)
}
