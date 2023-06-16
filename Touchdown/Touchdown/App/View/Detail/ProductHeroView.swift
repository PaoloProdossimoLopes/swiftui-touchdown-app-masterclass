//
//  ProductHeroView.swift
//  Touchdown
//
//  Created by Paolo Prodossimo Lopes on 16/06/23.
//

import SwiftUI

struct ProductHeroView: View {
    let product: Product
    
    @State private var isAnimating = false
    
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            VStack(alignment: .leading, spacing: 6) {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(product.amount)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            }
            .offset(y: isAnimating ? -50 : -75)
            
            Spacer()
            
            Image(product.image)
                .resizable()
                .scaledToFit()
                .opacity(isAnimating ? 1 : 0)
                .offset(y: isAnimating ? 0 : -15)
        }
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
    }
}

struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductHeroView(product: .mock[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
