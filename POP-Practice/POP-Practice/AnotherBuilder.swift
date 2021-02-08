//
//  AnotherBuilder.swift
//  POP-Practice
//
//  Created by Denny on 2021/02/09.
//

import Foundation

struct BurgerOld {
    var name: String
    var patties: Int
    var bacon: Bool
    var cheese: Bool
    var pickles: Bool
    var ketchup: Bool
    var mustard: Bool
    var lettuce: Bool
    var tomato: Bool
    
    init(name: String, patties: Int, bacon: Bool, cheese: Bool, pickles: Bool, ketchup: Bool, mustard: Bool, lettuce: Bool, tomato: Bool) {
        self.name = name
        self.patties = patties
        self.bacon = bacon
        self.cheese = cheese
        self.pickles = pickles
        self.ketchup = ketchup
        self.mustard = mustard
        self.lettuce = lettuce
        self.tomato = tomato
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

struct AnotherBurgerBuilder {
    var name = "Burger"
    var patties = 1
    var bacon = false
    var cheese = false
    var pickles = true
    var ketchup = true
    var mustard = true
    var lettuce = false
    var tomato = false
    
    mutating func setPatties(choice: Int) { self.patties = choice }
    mutating func setBacon(choice: Bool) { self.bacon = choice }
    mutating func setCheese(choice: Bool) { self.cheese = choice }
    mutating func setPickles(choice: Bool) { self.pickles = choice }
    mutating func setKetchup(choice: Bool) { self.ketchup = choice }
    mutating func setMustard(choice: Bool) { self.mustard = choice }
    mutating func setLettuce(choice: Bool) { self.lettuce = choice }
    mutating func setTomato(choice: Bool) { self.tomato = choice }
    
    func buildBurgerOld(name: String) -> BurgerOld {
        return BurgerOld(name: name, patties: self.patties, bacon: self.bacon, cheese: self.cheese, pickles: self.pickles, ketchup: self.ketchup, mustard: self.mustard, lettuce: self.lettuce, tomato: self.tomato)
    }
}
