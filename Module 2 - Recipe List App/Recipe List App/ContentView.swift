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

struct ContentView: View {
    
    @State private var randomCard = ""
    @State private var historyOfCards = [String]()
    
    var body: some View {
        
        
        NavigationView {
            VStack {
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
                        print(historyOfCards)
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
