//
//  ball.swift
//  Recursion
//
//  Created by 张一唯 on 2019-03-14.
//  Copyright © 2019 Yiwei. All rights reserved.
//

import Foundation

class Ball{
    var color:String = "red"
    func getColor()->String{
        return color
    }
}

/*
extension String {
    func index(from: Int) -> Index {
        return self.index(startIndex, offsetBy: from)
    }
    
    func substring(from: Int) -> String {
        let fromIndex = index(from: from)
        return substring(from: fromIndex)
    }
    
    func substring(to: Int) -> String {
        let toIndex = index(from: to)
        return substring(to: toIndex)
    }
    
    func substring(with r: Range<Int>) -> String {
        let startIndex = index(from: r.lowerBound)
        let endIndex = index(from: r.upperBound)
        return substring(with: startIndex..<endIndex)
    }
}
*/
