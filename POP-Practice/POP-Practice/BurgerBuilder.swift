//
//  BurgerBuilder.swift
//  POP-Practice
//
//  Created by Denny on 2021/02/09.
//

import Foundation

protocol BurgetBuilder {
    var name: String { get }
    var patties: Int { get }
    var bacon: Bool { get }
    var cheese: Bool { get }
    var pickles: Bool { get }
    var ketchup: Bool { get }
    var mustard: Bool { get }
    var lettuce: Bool { get }
    var tomato: Bool { get }
}

struct HamburgerBuilder: BurgetBuilder {
    let name = "Burger"
    let patties: Int = 1
    let bacon: Bool = false
    let cheese: Bool = false
    let pickles: Bool = true
    let ketchup: Bool = true
    let mustard: Bool = true
    let lettuce: Bool = false
    let tomato: Bool = false
}

struct CheeseBurgerBuilder: BurgetBuilder {
    let name = "CheeseBurger"
    let patties: Int = 1
    let bacon: Bool = false
    let cheese: Bool = true
    let pickles: Bool = true
    let ketchup: Bool = true
    let mustard: Bool = true
    let lettuce: Bool = false
    let tomato: Bool = false
}

struct Burger {
    var name: String
    var patties: Int
    var bacon: Bool
    var cheese: Bool
    var pickles: Bool
    var ketchup: Bool
    var mustard: Bool
    var lettuce: Bool
    var tomato: Bool
    
    init(builder: BurgetBuilder) {
        self.name = builder.name
        self.patties = builder.patties
        self.bacon = builder.bacon
        self.cheese = builder.cheese
        self.pickles = builder.pickles
        self.ketchup = builder.ketchup
        self.mustard = builder.mustard
        self.lettuce = builder.lettuce
        self.tomato = builder.tomato
    }
    
    func showBurger() {
        print("Name: \(name)")
        print("Patties: \(patties)")
        print("Bacon: \(bacon)")
        print("Cheese: \(cheese)")
        print("Pickles: \(pickles)")
        print("Ketchup: \(ketchup)")
        print("Mustard: \(mustard)")
        print("Lettuce: \(lettuce)")
        print("Tomato: \(tomato)")
    }
}
