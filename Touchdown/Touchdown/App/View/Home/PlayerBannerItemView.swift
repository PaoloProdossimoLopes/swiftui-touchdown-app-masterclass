//
//  PlayerBannerItemView.swift
//  Touchdown
//
//  Created by Paolo Prodossimo Lopes on 15/06/23.
//

import SwiftUI

struct PlayerBannerItemView: View {
    let player: Player
    
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct PlayerBannerItemView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerBannerItemView(player: Player.mock[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
