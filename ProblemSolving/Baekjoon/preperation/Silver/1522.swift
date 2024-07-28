//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 7/25/24.
//

// 문자열 교환
// 1522

import Foundation

let str = Array(readLine()!)
let len = str.count
print(getAnswer())

func getAnswer() -> Int {
    let countA = str.filter { $0 == "a" }.count
    if countA == 0 || countA == len {
        return 0
    }

    let extendedStr = str + str
    var minSwaps = len

    for i in 0..<len {
        var swaps = 0
        for j in i..<i+countA {
            if extendedStr[j] == "b" {
                swaps += 1
            }
        }
        minSwaps = min(minSwaps, swaps)
    }

    return minSwaps
}

//func getAnswer() -> Int {
//    let count1 = calculate(true, leftChar: "a", rightChar: "b")
//    if count1 == 0 {
//        return 0
//    }
//    let count2 = calculate(true, leftChar: "b", rightChar: "a")
//    if count2 == 0 {
//        return 0
//    }
//    let count3 = calculate(false, leftChar: "a", rightChar: "b")
//    if count3 == 0 {
//        return 0
//    }
//    let count4 = calculate(false, leftChar: "b", rightChar: "a")
//    if count4 == 0 {
//        return 0
//    }
//    
//    return min(count1, count2, count3, count4)
//}
//
//func calculate(_ isStartLeft: Bool, leftChar: Character, rightChar: Character) -> Int {
//    var left = 0
//    var right = len - 1
//    var count = 0
//    
//    if isStartLeft {
//        while true {
//            if right == -1 {
//                return 0
//            }
//            
//            if str[right] == rightChar {
//                right -= 1
//            } else {
//                break
//            }
//        }
//    } else {
//        while true {
//            if left == len {
//                return 0
//            }
//            
//            if str[left] == "a" {
//                left += 1
//            } else {
//                break
//            }
//        }
//    }
//    
//    while true {
//        if right - left <= 1 {
//            break
//        }
//        
//        if str[left] != leftChar {
//            left += 1
//        }
//        
//        if str[right] != rightChar  {
//            right -= 1
//        }
//        
//        if str[left] == leftChar && str[right] == rightChar {
////            print(left, right)
//            left += 1
//            right -= 1
//            count += 1
//        }
//    }
//    
//    return count
//}

//func getAnswer() -> Int {
//    if len <= 3 {
//        return 0
//    }
//    
//    var left = 0
//    var right = len - 1
//    var count1 = 0
//    var count2 = 0
//    
//    // 왼쪽의 b와 오른쪽의 a를 교환
//    while true {
//        if right == -1 {
//            return 0
//        }
//        
//        if str[right] == "a" {
//            right -= 1
//        } else {
//            break
//        }
//    }
//    while true {
//        if right - left <= 1 {
//            break
//        }
//        
//        if str[left] != "b" {
//            left += 1
//        }
//        
//        if str[right] != "a" {
//            right -= 1
//        }
//        
//        if str[left] == "b" && str[right] == "a" {
//            print(left, right)
//            left += 1
//            right -= 1
//            count1 += 1
//        }
//    }
//    
//    print("-----------------")
//    
//    left = 0
//    right = len - 1
//    
//    // 왼쪽의 a와 오른쪽의 b를 교환
//    while true {
//        if left == len {
//            return 0
//        }
//        
//        if str[left] == "a" {
//            left += 1
//        } else {
//            break
//        }
//    }
//    while true {
//        if right - left <= 1 {
//            break
//        }
//        
//        if str[left] != "a" {
//            left += 1
//        }
//        
//        if str[right] != "b" {
//            right -= 1
//        }
//        
//        if str[left] == "a" && str[right] == "b" {
//            print(left, right)
//            left += 1
//            right -= 1
//            count2 += 1
//        }
//    }
//    
//    print("-----------------")
//    
//    print(count1, count2)
//    return min(count1, count2)
//}
