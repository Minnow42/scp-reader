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
    
    @State var formatted: String = ""
    
    var body: some View {
        
        let myURL = URL(string: "https://scp-wiki.wikidot.com/scp-" + setNumFormat(scpNum: article.number))
        let myRequest = URLRequest(url: myURL!)
        WebView(request: myRequest)
    }
    
    func setNumFormat(scpNum: Int) -> String {
        print("scpNum: " + String(scpNum))
        if (scpNum >= 0 && scpNum < 1000) {
            formatted = String(format: "%03d", scpNum)
        } else if (scpNum >= 1000 && article.number < 10000) {
            formatted = String(format: "%04d", scpNum)
        }
        print("Num: " + formatted)
        return formatted
    }
    
}


struct ArticleView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleView(article: Article(title: "Test", number: 001, isFavorite: false))
    }
}
