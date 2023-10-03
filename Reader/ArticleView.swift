//
//  ArticleView.swift
//  Reader
//
//  Created by Kellie Stein on 1/19/21.
//

import SwiftUI
import WebKit

struct ArticleView: View {
    var article: Article
    
    var body: some View {
        
        let resultString = "https://scp-wiki.wikidot.com/scp-" + article.paddedNum
        
        let myURL = URL(string: resultString)
        let myRequest = URLRequest(url: myURL!)
        WebView(request: myRequest)
    }
    
    
    
}


struct ArticleView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleView(article: Article(title: "My Test", isFavorite: false, number: 1))
    }
}
