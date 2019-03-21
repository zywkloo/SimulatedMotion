//
//  Controller.swift
//  Recursion
//
//  Created by 张一唯 on 2019-03-20.
//  Copyright © 2019 Yiwei. All rights reserved.
//

import Foundation

class Controller:NSObject{
    
    override init () {
    }
    
    func getInput()->String {
        
        let keyboard = FileHandle.standardInput
        let inputData = keyboard.availableData
        let strData = String(data:inputData, encoding:String.Encoding.utf8)!
        return strData.trimmingCharacters(in: CharacterSet.newlines)
        
    }

    
    func launch()->Void{
        var flag:Bool = true
        var inStr:String
        var hei,ang,vel,div:Float?
        while ( flag ) {
            print("Type \"quit\" at any time to quit the app.🐱")
            print("Please Enter initial HEIGHT of the projectile above the ground (in meters) 🐶")
            inStr = getInput()
            if (inStr == "quit") {
                flag = false
                break
            } else {
                hei = Float(inStr)
            }
            
            print("initial ANGLE of release (in degrees)🐷")
            inStr = getInput()
            if (inStr == "quit") {
                flag = false
                break
            } else {
                ang = Float(inStr)
            }
            
            print("initial velocity of the projectile (in meters/sec).🐭")
            inStr = getInput()
            if (inStr == "quit") {
                flag = false
                break
            } else {
                vel = Float(inStr)
            }
            
            print("number of divisions per second for the simulation to use (e.g. 100).🐰")
            inStr = getInput()
            if (inStr == "quit") {
                flag = false
                break
            } else {
                div = Float(inStr)
            }
            
            guard let h = hei , let a = ang, let v = vel ,let d = div else {
                print("Init failed, h \(String(describing: hei)) ,a\(String(describing: ang)), v\(String(describing: vel)) .\n ")
                continue
            }
            let ball =  Ball( height: h, angle:a, velocity:v)
            ball.advance(division: d)
            
        }
        
        
        
        
    }
}
