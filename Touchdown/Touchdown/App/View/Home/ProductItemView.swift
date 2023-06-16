//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Paolo Prodossimo Lopes on 15/06/23.
//

import SwiftUI

struct ProductItemView: View {
    let product: Product
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }
            .background(product.contentColor)
            .cornerRadius(12)
            
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            Text("$\(product.price)")
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        }
    }
}

private extension Product {
    var contentColor: Color {
        Color(
            red: color[0],
            green: color[1],
            blue: color[2]
        )
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: Product.mock[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
