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
    private let products = Product.mock
    
    var body: some View {
        ZStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    BannerPaginatorView(players: players)
                    
                    CategoryGridView(categories: categories)
                    
                    TitleView(title: "Helmets")
                    
                    ProductsList(products: products)
                        .padding(.horizontal)
                        .padding(.vertical, 15)
                    
                    Divider()
                    
                    FooterView()
                        .padding(.horizontal)
                }
                
            }
        }
        .safeAreaInset(edge: .top) {
            NavigationBarView()
                .padding(.horizontal)
                .padding(.vertical, 10)
                .background(Color.white)
                .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
        }
        .background(colorBackgorund.ignoresSafeArea(.all))
    }
    
    
    private struct ProductsList: View {
        let products: [Product]
        
        private let coluns = Array(repeating: GridItem(.flexible()), count: 2)
        private let colunmSpace = CGFloat(15)
        
        var body: some View {
            LazyVGrid(columns: coluns, spacing: colunmSpace) {
                ForEach(products) { product in
                    ProductItemView(product: product)
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
