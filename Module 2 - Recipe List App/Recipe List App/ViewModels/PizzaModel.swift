//
//  PizzaModel.swift
//  Recipe List App
//
//  Created by Kristian Emil Hansen Svidt on 01/06/2023.
//

import Foundation

class PizzaModel: ObservableObject {
    
    @Published var pizza = [Pizza]()
    
    init() {
        pizza.append(Pizza(name: "Mamma's Pizza", topping1: "Aubergine", topping2: "Garlic", topping3: "Smelly Cheese"))
        pizza.append((Pizza(name: "Emil's Pizza", topping1: "Cheese", topping2: "Ananas", topping3: "Jalapenos")))
    }
    
    func addPizza() {
        pizza.append((Pizza(name: "Tak's Pizza", topping1: "Cheese", topping2: "Salami", topping3: "Garlic")))
    }
    
    func removePizza() {
        pizza.removeAll()
    }
}
