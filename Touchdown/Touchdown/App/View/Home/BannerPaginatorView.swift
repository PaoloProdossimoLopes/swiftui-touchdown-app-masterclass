//
//  BannerPaginatorView.swift
//  Touchdown
//
//  Created by Paolo Prodossimo Lopes on 15/06/23.
//

import SwiftUI

struct BannerPaginatorView: View {
    
    let players: [Player]
    
    var body: some View {
        TabView {
            ForEach(players) { player in
                PlayerBannerItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        }
        .frame(height: 250)
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        BannerPaginatorView(players: Player.mock)
            .previewDevice("iPhone 12 Pro")
            .background(Color.gray)
    }
}
