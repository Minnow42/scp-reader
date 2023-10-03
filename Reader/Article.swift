//
//  Article.swift
//  Reader
//
//  Created by Kellie Stein on 1/19/21.
//

import Foundation

struct Article: Identifiable {
    var id = UUID()
    var title: String = "Test Title"
    var isFavorite: Bool = false
    var number: Int = 0
    var paddedNum: String {
        var formatted: String = ""
        print("scpNum: " + String(self.number))
        if (self.number >= 0 && self.number < 1000) {
            formatted = String(format: "%03d", self.number)
        } else if (self.number >= 1000 && self.number < 10000) {
            formatted = String(format: "%04d", self.number)
        }
        print("Formatted: " + formatted)
        return formatted
    }
}
