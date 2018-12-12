//
//  ATMMachine.swift
//  FeedMe
//
//  Created by Joel Arcos on 11/20/18.
//  Copyright © 2018 Joel Arcos. All rights reserved.
//

import Foundation

class Kid {
    // These are the states are like the ages for a kid
    var oneYearOld: OneYearOld?
    var fifteenYearOld: FifteenYearOld?
    var idle: Idle?

    
    var kidState: KidState?
    
    init() {

        idle = Idle(kid: self)
        oneYearOld = OneYearOld(kid: self)
        fifteenYearOld = FifteenYearOld(kid: self)
        
        self.kidState = idle
    }
    
    func setKidState(newKidState: KidState) {
        self.kidState = newKidState
    }

    // These are the four behaviors
    
    func play() {
        self.kidState?.play()
    }
    
    func eat() {
        self.kidState?.eat()
    }
    
    
    // These are the four states
    
    func getOneYearOldState() -> KidState {
        return oneYearOld!
    }
    
    func getFifteenYearOldState() -> KidState {
        return fifteenYearOld!
    }
}
