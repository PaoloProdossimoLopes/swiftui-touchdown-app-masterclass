//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Paolo Prodossimo Lopes on 15/06/23.
//

import SwiftUI

struct CategoryGridView: View {
    private let rows = Array(repeating: GridItem(.flexible()), count: 2)
    
    let categories: [Category]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows, alignment: .center, spacing: 10) {
                Section(
                    header: SectionView(rotateClockWise: false),
                    footer: SectionView(rotateClockWise: true), content: {
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    }
                })
            }
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        }
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView(categories: Category.mock)
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackgorund)
    }
}
