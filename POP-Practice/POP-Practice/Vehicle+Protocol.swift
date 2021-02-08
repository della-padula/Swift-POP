//
//  Vehicle+Protocol.swift
//  POP-Practice
//
//  Created by Denny on 2021/02/09.
//

import Foundation

protocol Vehicle {
    var hitPoints: Int { get set }
}

extension Vehicle {
    mutating func takeHit(amount: Int) {
        hitPoints -= amount
    }
    
    func hitPointsRemaining() -> Int {
        return hitPoints
    }
    
    func isAlive() -> Bool {
        return hitPoints > 0 ? true : false
    }
}

protocol LandVehicle: Vehicle {
    var landAttack: Bool { get }
    var landMovement: Bool { get }
    var landAttackRange: Int { get }
    
    func doLandAttack()
    func doLandMovement()
}

protocol SeaVehicle: Vehicle {
    var seaAttack: Bool { get }
    var seaMovement: Bool { get }
    var seaAttackRange: Int { get }
    
    func doSeaAttack()
    func doSeaMovement()
}

protocol AirVehicle: Vehicle {
    var airAttack: Bool { get }
    var airMovement: Bool { get }
    var airAttackRange: Int { get }
    
    func doAirAttack()
    func doAirMovement()
}
