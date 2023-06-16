//
//  Constant.swift
//  Touchdown
//
//  Created by Paolo Prodossimo Lopes on 13/06/23.
//

import SwiftUI

// MARK: - Texts
let footerDescription = "We offer the most cutting edge, conformtable, lightweight and durable football helmets in the market at affordable prices."
let footerCopyRight = "Copyright © Paolo Prodossimo\nAll right reserved"

// MARK: - Logos
let logoWhiteVariantName = "logo-lineal"

// MARK: - Colors
let colorBackgorund = Color("ColorBackground")
let colorGray = Color(UIColor.systemGray4)


// MARK: - Mocks
extension Player {
    static var mock: [Self] {
        Bundle.main.decode("player.json")
    }
}

extension Category {
    static var mock: [Self] {
        Bundle.main.decode("category.json")
    }
}

extension Product {
    static var mock: [Self] {
        Bundle.main.decode("product.json")
    }
}

extension Brand {
    static var mock: [Self] {
        Bundle.main.decode("brand.json")
    }
}
