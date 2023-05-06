//
//  ContentView.swift
//  Lesson 13 Challenge
//
//  Created by Kristian Emil Hansen Svidt on 06/05/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var credits: Int = 0
    @State private var randomNum1: Int = 0
    @State private var randomNum2: Int = 0
    @State private var randomNum3: Int = 0
    
    var body: some View {
        VStack {
            
            Text("Slot Machine").font(.largeTitle).bold()
            
            Spacer()
            
            Text("Credits: \(credits)")
            
            HStack {
                Image(systemName: "\(randomNum1).circle.fill")
                Image(systemName: "\(randomNum2).circle.fill")
                Image(systemName: "\(randomNum3).circle.fill")
            }
            .font(.largeTitle)
            .padding(25)
            
            Button("Spin") {
                credits -= 10
                
                randomNum1 = generator()
                randomNum2 = generator()
                randomNum3 = generator()
                
                if (randomNum1, randomNum2) == (randomNum2, randomNum3) {
                    credits += 100
                }
            }
            .buttonBorderShape(.capsule)
            .buttonStyle(.borderedProminent)
            
            Spacer()
            Spacer()
            
        }
        .padding()
        
    }
}

func generator() -> Int {
    let num = Int.random(in: 1...3)
    return num
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
