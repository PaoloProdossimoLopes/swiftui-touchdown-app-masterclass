//
//  BrandsGridView.swift
//  Touchdown
//
//  Created by Paolo Prodossimo Lopes on 16/06/23.
//

import SwiftUI

struct BrandsGridView: View {
    let brands: [Brand]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: Array(repeating: GridItem(.flexible()), count: 2)) {
                ForEach(brands) { brand in
                    BrandItemView(brand: brand)
                        .padding(.vertical, 15)
                }
            }
            .frame(height: 150)
            .padding()
        }
    }
}

struct BrandsGridView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            colorBackgorund.ignoresSafeArea(.all)
            
            BrandsGridView(brands: Brand.mock)
                .previewDevice("iPhone 12 Pro")
        }
    }
}
