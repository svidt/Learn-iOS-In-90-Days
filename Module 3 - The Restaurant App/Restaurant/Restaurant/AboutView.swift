//
//  AboutView.swift
//  Restaurant
//
//  Created by Svidt on 17/06/2023.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            
            VStack(alignment: .leading) {
                
                Text("About")
                    .font(.largeTitle)
                    .bold()
                
                Image("restaurant-inside")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.bottom)
                
                Text("""
    Discover a hidden gem nestled in the heart of the city—an exquisite sushi restaurant that delights the senses. Immerse yourself in the artistry and flavors of Japan at this intimate dining spot. From meticulously crafted sushi rolls to delicate sashimi, each dish is a masterpiece of flavor and presentation. Impeccably fresh ingredients sourced from local markets and beyond ensure an unforgettable dining experience. The tranquil ambiance, attentive service, and expertly curated menu make this restaurant a haven for sushi aficionados seeking an authentic and memorable culinary journey.
    """)
                Image("map")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Text("""
    〒123-4567 東京都港区赤坂1-2-3
    
    Postal Code (〒): 123-4567
    Prefecture (都道府県): 東京都 (Tokyo)
    Ward (区): 港区 (Minato Ward)
    Neighborhood/Block: 赤坂1-2-3 (Akasaka 1-2-3)
    Please note that this is a fictional address and not tied to any real location.
    """)
            }
            .padding(.horizontal)
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
