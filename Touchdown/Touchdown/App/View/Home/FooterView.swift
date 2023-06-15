//
//  FooterView.swift
//  Touchdown
//
//  Created by Paolo Prodossimo Lopes on 13/06/23.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text(footerDescription)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            
            Image(logoWhiteVariantName)
                .renderingMode(.template)
                .foregroundColor(.gray)
                .layoutPriority(0)
            
            Text(footerCopyRight)
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
        }
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.sizeThatFits)
            .background(colorBackgorund)
    }
}
