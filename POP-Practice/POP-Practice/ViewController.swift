//
//  ViewController.swift
//  POP-Practice
//
//  Created by Denny on 2021/02/09.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var tank = Tank()
        takeHit(vehicle: &tank)
        print(tank.hitPointsRemaining())
    }

    func takeHit<T: Vehicle>(vehicle: inout T) {
        vehicle.takeHit(amount: 10)
    }
}

