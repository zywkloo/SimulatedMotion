//
//  ball.swift
//  Recursion
//
//  Created by 张一唯 on 2019-03-14.
//  Copyright © 2019 Yiwei. All rights reserved.
//

import Foundation

class Ball{
    private var color:String = "red"
    
    private var Inix:Float
    private var Iniy:Float
    private var IniVx:Float
    private var IniVy:Float
    
    private var Ex:Float
    private var Ey:Float
    private var EVx:Float
    private var EVy:Float
    
    private var Cx:Float
    private var Cy:Float
    private var CVx:Float
    private var CVy:Float

    private static let GRAVITY_g:Float = 9.88
    //private static let TOTAL_TIME:Float = 17.02
    
    private var Ax:Float
    private var Ay:Float
    
    private var lastTime:Float
    
    
    init (height:Float, angle:Float, velocity:Float){
        let h = height , a = angle, v = velocity
        self.Inix = v * sin(a * Float.pi / 180)
        self.Iniy = v * cos(a * Float.pi / 180)
        self.IniVx = 0.0
        self.IniVy = h
        self.Ex = self.Inix
        self.Ey = self.Iniy
        self.Cx = self.Inix
        self.Cy = self.Iniy
        self.EVx = v * sin(a * Float.pi / 180)
        self.EVy = v * cos(a * Float.pi / 180)
        self.CVx = v * sin(a * Float.pi / 180)
        self.CVy = v * cos(a * Float.pi / 180)
        self.Ax = 0
        self.Ay = Ball.GRAVITY_g
        self.lastTime = 0.0
    }
    
    func getColor()->String{
        return color
    }
    
    func updateEulerPos(time:Float) {
        let delta = time - self.lastTime
        self.EVx += delta * self.Ax
        self.EVy += delta * self.Ay
        self.Ex += delta * self.EVx
        self.Ey += delta * self.EVy
        self.lastTime = time
    }
    
    func updateCalPos(time:Float) {
        self.Cx = time * self.IniVx + 0.5 * self.Ax * powf(time,2.0)
        self.Cy = time * self.IniVy + 0.5 * self.Ay * powf(time,2.0)
    }
    
    func advance(division:Float){
        var time:Float = 0.0
        let delta=1/division
        while self.Cy > 0 {
            updateEulerPos(time:time)
            updateCalPos(time:time)
            print("  ")
            time += delta
        }
    }
}

