//
//  MenuView.swift
//  Restaurant
//
//  Created by Svidt on 17/06/2023.
//

import SwiftUI

struct MenuView: View {
    
    @State var menuItems:[MenuItem] = [MenuItem]()
    var dataService = DataService()
    
    var body: some View {
        
        List(menuItems) { item in
            
            MenuListRow(item: item)
        }
        .listStyle(.plain)
        .onAppear(perform: {
            menuItems = dataService.getData()
        })
        
        
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
