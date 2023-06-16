//
//  NavigationBarView.swift
//  Touchdown
//
//  Created by Paolo Prodossimo Lopes on 15/06/23.
//

import SwiftUI

struct NavigationBarView: View {
    @State private var isLogoAppears = false
    
    var body: some View {
        HStack {
            Button(action: {}, label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            })
            
            Spacer()
            
            LogoView()
                .opacity(isLogoAppears ? 1 : 0)
                .offset(y: isLogoAppears ? 0 : -25)
                .onAppear {
                    withAnimation(.easeIn(duration: 0.5)) {
                        isLogoAppears = true
                    }
                }
            
            Spacer()
            
            Button(action: {}, label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.black)
                    
                    Circle()
                        .fill(.red)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x: 13, y: -10)
                }
            })
        }
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
