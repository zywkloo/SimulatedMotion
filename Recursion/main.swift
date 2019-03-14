//
//  main.swift
//  Recursion
//
//  Created by 张一唯 on 2019-03-14.
//  Copyright © 2019 Yiwei. All rights reserved.
//

import Foundation

func getInput()->String {
    
    let keyboard = FileHandle.standardInput
    let inputData = keyboard.availableData
    let strData = String(data:inputData, encoding:String.Encoding.utf8)!
    return strData.trimmingCharacters(in: CharacterSet.newlines)
    
}

func isPalindrome(input: String) -> Bool {
    let in1st = input.startIndex
    let in2nd = input.index(after: input.startIndex)
    let inLast = input.index(before: input.endIndex)
    let startChr:Character = input[in1st]
    let endChr:Character = input[inLast]
    if (input.count == 0 || input.count == 1 ) { return true }
    else {
        //print (input[in2nd..<inLast] )
        return startChr == endChr ? isPalindrome( input: String(input[in2nd..<inLast]) ):false
    }
}


var s1 = "Yiwei"
var s2 = ""
s2.insert("Y",at:s2.endIndex)
s2.insert("i",at:s2.endIndex)
s2.insert("w",at:s2.endIndex)
s2.insert("e",at:s2.endIndex)
print ("\(s1)==\(s2) is \(s1==s2)")

s2.insert("i",at:s2.endIndex)
print ("\(s1)==\(s2) is \(s1==s2)")

var ball: Ball = Ball()
print ("The ball is " + ball.getColor())

print("Please enter your name \u{1F496}" + " + Return")
var inputString = getInput()
print ("Hello " + inputString)
var flag:Bool = true;
while ( flag ) {
    print("Please Enter a String 🐶 " + " + Return")
    let inStr = getInput()
    if (inStr == "quit") {
        flag = false
    } else {
        print ("isPalindrome( \(inStr) ) --> \(isPalindrome(input: inStr)) \n")
    }
   
}

/*
extension String {
    subscript(_ range: CountableRange<Int>) -> String {
        let idx1 = index(startIndex, offsetBy: max(0, range.lowerBound))
        let idx2 = index(startIndex, offsetBy: min(self.count, range.upperBound))
        return String(self[idx1..<idx2])
    }
}
*/
