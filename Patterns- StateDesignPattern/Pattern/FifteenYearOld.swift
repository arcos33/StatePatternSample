//
//  HasCard.swift
//  FeedMe
//
//  Created by Joel Arcos on 11/20/18.
//  Copyright © 2018 Joel Arcos. All rights reserved.
//

import Foundation

class FifteenYearOld: KidState {
    
    var kid: Kid?
    
    init(kid: Kid) {
        self.kid = kid
    }
    
    func play() { print("playing with girlfriend") }
    
    func eat() { print("eating pizza") }
}
