//
//  ContentView.swift
//  Restaurant
//
//  Created by Svidt on 17/06/2023.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        
        TabView {
            
            MenuView()
                .tabItem {
                    VStack {
                        Image(systemName: "menucard")
                        Text("Menu")
                    }
                }
            
            AboutView()
                .tabItem {
                    VStack {
                        Image(systemName: "info.circle")
                        Text("About")
                    }
                }
            
            GalleryView()
                .tabItem {
                    VStack {
                        Image(systemName: "photo")
                        Text("Gallery")
                    }
                }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
