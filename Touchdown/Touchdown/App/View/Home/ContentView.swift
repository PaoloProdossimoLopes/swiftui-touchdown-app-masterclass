//
//  ContentView.swift
//  Touchdown
//
//  Created by Paolo Prodossimo Lopes on 13/06/23.
//

import SwiftUI

struct ContentView: View {
    
    private let players = Player.mock
    private let categories = Category.mock
    
    private let categoryGridColuns = Array(repeating: GridItem(.flexible()), count: 2)
    private let categorySpace = CGFloat(10)
    
    var body: some View {
        ZStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    BannerPaginatorView(players: players)
                    
                    CategoryGridView(categories: categories)
                    
                    FooterView()
                        .padding(.horizontal)
                }
                
            }
        }
        .safeAreaInset(edge: .top) {
            NavigationBarView()
                .padding(.horizontal)
        }
        .background(colorBackgorund.ignoresSafeArea(.all))
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
