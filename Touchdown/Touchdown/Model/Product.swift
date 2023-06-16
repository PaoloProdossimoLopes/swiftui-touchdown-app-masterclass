//
//  Product.swift
//  Touchdown
//
//  Created by Paolo Prodossimo Lopes on 15/06/23.
//

import Foundation

struct Product: Identifiable, Decodable {
    let id: Int
    let name: String
    let image: String
    let price: Double
    let description: String
    let color: [Double]
}
