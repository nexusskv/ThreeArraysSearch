//
//  main.swift
//  ThreeArraysSearch
//
//  Created by Rostyslav Gress on 18.05.22.
//

import Foundation

let firstArray  = [1, 3, 4, 5]
let secondArray = [-1, 3, 0, 9]
let thirdArray  = [0, 31, 32, 22, 6]


let resultsArray = findTwoElements(firstArray, second: secondArray, third: thirdArray)

print("Found two elements at least present in two arrays -> \(resultsArray)")


func findTwoElements(_ first: [Int], second: [Int], third: [Int]) -> [Int] {
    var resultsArray = [Int]()
    
    let allNums = Set(first + second + third)
    
    for num in Array(allNums) {
        if (first.contains(num) && second.contains(num) ||
            first.contains(num) && third.contains(num)  ||
            second.contains(num) && third.contains(num)) {
            resultsArray.append(num)
        }
    }
    
    return resultsArray
}
