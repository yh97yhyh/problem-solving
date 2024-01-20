//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/19.
//

// 트리 순회
// 1991

import Foundation

let n = Int(readLine()!)! // 이진 트리의 노드 개수

var childs: [[Int]] = Array(repeating: [], count: n)

for _ in 0..<n {
    let inputs = readLine()!.split(separator: " ").map { String($0) }
    let a = toInt(inputs[0]) // 부모
    let b = toInt(inputs[1]) // 왼쪽 노드
    let c = toInt(inputs[2]) // 오른쪽 노드
    childs[a].append(b)
    childs[a].append(c)
}

var preResult = ""
var inResult = ""
var postResult = ""

//print(childs)

// 전위 Root > L > R
func preOrder(_ x: Int) {
    if (x == -1) {
        return
    }
    preResult += "\(toString(x))"
    preOrder(childs[x][0])
    preOrder(childs[x][1])
}

// 중위 L > Root > R
func inOrder(_ x: Int) {
    if (x == -1) {
        return
    }
    inOrder(childs[x][0])
    inResult += "\(toString(x))"
    inOrder(childs[x][1])
}

// 후위 L > R > Root
func postOrder(_ x: Int) {
    if (x == -1) {
        return
    }
    postOrder(childs[x][0])
    postOrder(childs[x][1])
    postResult += "\(toString(x))"
}

func toString(_ int: Int) -> String {
    if int == -1 {
        return ""
    }
    return String(UnicodeScalar(int+65)!)
}

func toInt(_ str: String) -> Int {
    if str == "." {
        return -1
    }
    return (Int(UnicodeScalar(str)!.value) - 65)
}

preOrder(0)
inOrder(0)
postOrder(0)
print(preResult)
print(inResult)
print(postResult)
