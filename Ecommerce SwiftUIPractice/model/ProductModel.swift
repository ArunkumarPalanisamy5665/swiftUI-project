//
//  ProductModel.swift
//  Ecommerce SwiftUIPractice
//
//  Created by DreamsTechnologies on 24/11/26.
//

import Foundation

struct ProductModel: Identifiable {
    let id = UUID()
    let name: String
    let price: Double
    let calories: Int
    let image: String
    var isFavourite: Bool
    var rating: Double = 4.8
}
