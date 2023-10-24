//
//  ContentView.swift
//  Guidebook
//
//  Created by Svidt on 25/06/2023.
//

import SwiftUI

struct CityView: View {
    
    @State var cities = [City]()
    var dataService = DataService()
    
    var body: some View {
        
        NavigationStack {
            
            ScrollView(showsIndicators: false) {
                VStack {
                    
                    ForEach(cities) { city in
                        
                        NavigationLink {
                            AttractionView(city: city)
                        } label: {
                            CityCard(city: city)
                                .padding(.bottom)
                        }

                        
                        
                    }
                }
            }
            .padding(.horizontal)
            
        }
        .ignoresSafeArea()
        .onAppear {
            cities = dataService.getFileData()
        }
        
    }
}

#Preview {
    CityView()
}
