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
        print("")
        
        var myBurger = Burger(builder: HamburgerBuilder())
        myBurger.showBurger()
        print("")
        
        var myCheeseBurgerBuilder = CheeseBurgerBuilder()
        var myCheeseBurger = Burger(builder: myCheeseBurgerBuilder)
        
        myCheeseBurger.tomato = false
        myCheeseBurger.showBurger()
        
        var burgerBuilder = AnotherBurgerBuilder()
        burgerBuilder.setCheese(choice: true)
        burgerBuilder.setBacon(choice: true)
        var dennyBurger = burgerBuilder.buildBurgerOld(name: "Denny's Burger")
        dennyBurger.showBurger()
        
    }

    func takeHit<T: Vehicle>(vehicle: inout T) {
        vehicle.takeHit(amount: 10)
    }
}

