//
//  Vehicle+Class.swift
//  POP-Practice
//
//  Created by Denny on 2021/02/09.
//

import Foundation

struct Tank: LandVehicle {
    var hitPoints: Int = 68
    let landAttackRange: Int = 5
    let landAttack: Bool = true
    let landMovement: Bool = true
    
    func doLandAttack() {
        print("Tank Attack")
    }
    
    func doLandMovement() {
        print("Tank Movement")
    }
}
