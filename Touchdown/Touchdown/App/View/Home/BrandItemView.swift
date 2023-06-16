//
//  BrandItemView.swift
//  Touchdown
//
//  Created by Paolo Prodossimo Lopes on 16/06/23.
//

import SwiftUI

struct BrandItemView: View {
    let brand: Brand
    
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .frame(width: 40, height: 40, alignment: .center)
            .padding()
            .background(
                Color.white.clipShape(RoundedRectangle(cornerRadius: 12))
            )
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(lineWidth: 1)
                    .fill(.gray)
            )
    }
}

struct BrandItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemView(brand: Brand.mock[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackgorund)
    }
}
