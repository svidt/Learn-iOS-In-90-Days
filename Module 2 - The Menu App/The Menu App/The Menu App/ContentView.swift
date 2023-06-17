//
//  ContentView.swift
//  The Menu App
//
//  Created by Svidt on 17/06/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var menuItems:[MenuItem] = [MenuItem]()
    var dataService = DataService()
    
    var body: some View {
        
        List(menuItems) { item in
            
            HStack {
                Image(item.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 50)
                    .cornerRadius(10)
                
                Text(item.name)
                    .bold()
                
                Spacer()
                
                Text("$" + item.price)
            }
            .listRowSeparator(.hidden)
            .listRowBackground(
                Color(.brown)
                    .opacity(0.1)
            )
        }
        .listStyle(.plain)
        .onAppear(perform: {
            menuItems = dataService.getData()
        })
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
