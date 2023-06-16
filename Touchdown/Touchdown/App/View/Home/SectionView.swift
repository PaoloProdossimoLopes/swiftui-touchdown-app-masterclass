//
//  SectionView.swift
//  Touchdown
//
//  Created by Paolo Prodossimo Lopes on 15/06/23.
//

import SwiftUI

struct SectionView: View {
    @State var rotateClockWise: Bool
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockWise ? 90 : -90))
            
            Spacer()
        }
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            SectionView(rotateClockWise: true)
                .previewLayout(.sizeThatFits)
                .padding()
            SectionView(rotateClockWise: false)
                .previewLayout(.sizeThatFits)
                .padding()
        }
    }
}
