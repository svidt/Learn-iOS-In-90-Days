//
//  ContentView.swift
//  Recipe List App
//
//  Created by Svidt on 29/05/2023.
//

import SwiftUI

struct Card {
    let cardNumber: Array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 12, 13]
    let cardSuit: Array = ["Clubs", "Diamonds", "Hearts", "Spades"]
    
    func chosenCard() -> String {
        let number = String(cardNumber[Int.random(in: 0..<12)])
        let suit = cardSuit[Int.random(in: 0...3)]
        
        let string = "\(number) of \(suit)"
        
        return string
    }
    
}

class Person {
    var name: String = "Emil"
    
    func introduceMyself() {
        print("Hi, my name is \(name)")
    }
}

class Chef: Person {
    override func introduceMyself() {
        print("Hi, my name is \(name)")
        print("I'm a Chef!")
    }
}

class Poet: Person {
    override func introduceMyself() {
        print("Hi, my name is \(name)")
        print("I'm a Poet!")
    }
}
class Astronaut: Person {
    override func introduceMyself() {
        print("Hi, my name is \(name)")
        print("I'm a Astronaut!")
    }
}

struct ContentView: View {
    
    @State private var randomCard = ""
    @State private var historyOfCards = [String]()
    
    @State private var arrayDemo = ["Element 1", "Element 2", "Element 3"]
    
    var body: some View {
        
        var num = 0
        var classInstance = Person()
        
        NavigationView {
            VStack {
                Button("While - Repeat loop") {
                    repeat {
                        classInstance.name = "Paul"
                        classInstance.introduceMyself()
                        print(num)
                        num += 1
                    } while (num < 10)
                }
                
//                List(arrayDemo, id: \.self) { item in
//                    NavigationLink(
//                        destination: Text("Hello there"),
//                        label: {
//                            Text(item)
//                        })
//                }
                Button("Click me!") {
                    
                    let num = Int.random(in: 1...10)
                    
                    if num != 7 {
                        arrayDemo.append(String(num))
                        
                    } else {
                        print("7")
                    }
                }
                Button("Clear me!") {
                    arrayDemo.removeAll()
                }
                
                Spacer()
                
                Text(randomCard)
                List(historyOfCards, id:\.self) {
                    Text($0)
                }
                .animation(.easeInOut, value: historyOfCards)
                Spacer()
                HStack(spacing: 50) {
                    Button("Button 1") {
                        randomCard = Card().chosenCard()
                        historyOfCards.insert(randomCard, at: 0)
                    }
                    Button("Button 2") {
                        for demo in historyOfCards {
                            print(demo)
                        }
                        historyOfCards.removeAll()
                    }
                }
                .padding()
            }
            .navigationTitle("My List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
