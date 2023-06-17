//
//  ContentView.swift
//  Recipe List App
//
//  Created by Svidt on 29/05/2023.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = PizzaModel()
    
    @State private var pizzaArray = [String?]()
    
    
    var body: some View {
        
        VStack {
            List(model.pizza) { p in
                VStack(alignment: .leading) {
                    Text(p.name)
                        .font(.title)
                    HStack {
                        Text(p.topping1)
                        Text(p.topping2)
                        Text(p.topping3)
                    }
                    .font(.subheadline).opacity(0.5)
                    
                }
            }
            HStack {
                VStack {
                    Button("Add Pizza") {
                        model.addPizza()
                    }
                    .buttonBorderShape(.capsule)
                    .buttonStyle(.borderedProminent)
                    
                    Button("Clear") {
                        model.removePizza()
                    }
                    .buttonBorderShape(.capsule)
                    .buttonStyle(.bordered)
                }
                Spacer()
                VStack {
                    Button("Button 1") {
                        pizzaArray = [nil]
                    }
                    Button("Button 2") {
                        pizzaArray.append("Hello 1")
                        pizzaArray.append("Hello 2")
                        pizzaArray.append("Hello 3")
                        
                    }
                    if pizzaArray != nil {
                        List(pizzaArray, id: \.self) { p in
                            Text(p!)
                        }
                    } else {
                        Text("Array is ")
                        Text("nil").bold()
                        Text("Tap Button 2")
                    }
                }
                
            }
            .padding()

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
