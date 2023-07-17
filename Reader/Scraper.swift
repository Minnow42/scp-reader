//
//  Scraper.swift
//  Reader
//
//  Created by Kellie Stein on 5/2/21.
//

import Foundation
import SwiftSoup

class Scraper {
    
    func findTitle(seriesNumber: Int) -> Array<String> {
        var contentURL: String = ""
        switch seriesNumber {
        case 2:
            contentURL = "https://scp-wiki.wikidot.com/scp-series-2"
            
        case 3:
            contentURL = "https://scp-wiki.wikidot.com/scp-series-3"
            
        case 4:
            contentURL = "https://scp-wiki.wikidot.com/scp-series-4"
            
        case 5:
            contentURL = "https://scp-wiki.wikidot.com/scp-series-5"
            
        case 6:
            contentURL = "https://scp-wiki.wikidot.com/scp-series-6"
            
        default:
            contentURL = "https://scp-wiki.wikidot.com/scp-series"
        }
        
        var itemText = ""
        var titleArray: [String] = []
        
        do {
            //let content = try String(contentsOf: URL(string: contentURL)!)
            
            if let url = URL(string: contentURL) {
                let content = try String(contentsOf: url)
                let doc: Document = try SwiftSoup.parse(content)
    //            let elements = try doc.getAllElements()
                
                let seriesList: Elements = try doc.select("li")
    //            print(try seriesList.text())

                for item in seriesList {
                    itemText = try item.text()
                    
                    if itemText.contains("SCP-") {
                        titleArray.append(itemText)
                    }
                }
                
    //            print(titleArray)
    //            for elem in elements {
    //                switch elem.tagName() {
    //                case "li":
    //                    print("item: \(try elem.className())  id: \(elem.id())")
    //                default:
    //                    let _ = 1
    //                }
    //            }
            } else {
                // URL was bad
            }
        } catch {
            print("Function called but there was an error")
        }
        return titleArray
    }
}
