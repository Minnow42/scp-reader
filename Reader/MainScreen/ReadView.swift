//
//  ReadView.swift
//  Reader
//
//  Created by Kellie Stein on 4/13/23.
//

import SwiftUI

struct ReadView: View {
    var body: some View {
        @Environment(\.colorScheme) var colorScheme
        NavigationView {
            ScrollView {
                VStack {
                    Section (header: Text("Series 1 (001 - 999)")) {
                        ForEach(scrapeArticles(seriesNum: 1)) { article in
                            NavigationLink(destination: ArticleView(article: article)) {
                                ArticleRow(article: article)
                            }
                        }
                    }
                    //                Section (header: Text("Series 2 (1000 - 1999)")) {
                    //                    ForEach(scrapeArticles(seriesNum: 2)) { article in
                    //                        NavigationLink(destination: ArticleView(article: article)) {
                    //                            ArticleRow(article: article)
                    //                        }
                    //                    }
                    //                }
                    //                Section (header: Text("Series 3 (2000 - 2999)")) {
                    //                    ForEach(scrapeArticles(seriesNum: 3)) { article in
                    //                        NavigationLink(destination: ArticleView(article: article)) {
                    //                            ArticleRow(article: article)
                    //                        }
                    //                    }
                    //                }
                }
            }
            .navigationBarTitle("Articles")
        }
    }
    
    func scrapeArticles(seriesNum: Int) -> [Article] {
        var articles: [Article] = []
        var titles: [String] = []
        
        var count: Int = 0
        let sc = Scraper()
        
        titles = sc.findTitle(seriesNumber: seriesNum)
        
        for t in titles {
            count+=1
            articles.append(Article(title: t, number: count, isFavorite: false))
        }
        return articles
    }
    
    
    struct ReadView_Previews: PreviewProvider {
        static var previews: some View {
            ReadView()
        }
    }
}
