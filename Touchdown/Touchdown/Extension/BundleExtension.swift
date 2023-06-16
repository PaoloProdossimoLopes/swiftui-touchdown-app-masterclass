//
//  BundleExtension.swift
//  Touchdown
//
//  Created by Paolo Prodossimo Lopes on 15/06/23.
//

import Foundation

extension Bundle {
    func decode<D: Decodable>(_ file: String) -> D {
        guard let localURL = url(forResource: file, withExtension: nil) else {
            fatalError("Not find the file")
        }
        
        guard let data = try? Data(contentsOf: localURL) else {
            fatalError("Can't possible get data int url: \(localURL)")
        }
        
        let decoder = JSONDecoder()
        guard let object = try? decoder.decode(D.self, from: data) else {
            fatalError("Can't possible to decode data to type \(String(describing: D.self))")
        }
        
        return object
    }
}
