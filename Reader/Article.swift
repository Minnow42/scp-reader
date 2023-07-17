//
//  Article.swift
//  Reader
//
//  Created by Kellie Stein on 1/19/21.
//

import Foundation

struct Article: Identifiable {
    var id = UUID()
    var title: String
    var number: Int
    var isFavorite: Bool
}
