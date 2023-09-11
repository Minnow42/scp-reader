//
//  ArticleRow.swift
//  Reader
//
//  Created by Kellie Stein on 1/19/21.
//

import SwiftUI

struct ArticleRow: View {
    var article: Article
    
    var body: some View {
        HStack {
//            if article.isFavorite {
//                Image(systemName: "star.fill")
//                    .foregroundColor(.yellow)
//            } else {
//                Image(systemName: "star")
//            }
            HStack {
                Text(article.title)
                    .multilineTextAlignment(.leading)
            }.padding([.bottom, .top], 10)
            .frame(maxWidth: .infinity, alignment: .leading)
        }.padding(.leading, 10)
    }
}

struct ArticleRow_Previews: PreviewProvider {
    static var previews: some View {
        ArticleRow(article: Article(title: "Test", number: 001, isFavorite: false))
    }
}
