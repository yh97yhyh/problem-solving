//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/10.
//

// 국영수
// 10852

import Foundation

struct Student {
    var name: String
    var korean: Int
    var english: Int
    var math: Int
}
var students: [Student] = []

let n = Int(readLine()!)!
for i in 0..<n {
    let inputs = readLine()!.split(separator: " ")
    students.append(Student(name: String(inputs[0]), korean: Int(inputs[1])!, english: Int(inputs[2])!, math: Int(inputs[3])!))
    
}

let sortedStudents = students.sorted {
    if $0.korean != $1.korean {
        return $0.korean > $1.korean
    }
    if $0.english != $1.english {
        return $0.english < $1.english
    }
    if $0.math != $1.math {
        return $0.math > $1.math
    }
    return $0.name < $1.name

}

for student in sortedStudents {
    print(student.name)
}
