//
//  ArticleViewController.swift
//  Reader
//
//  Created by Kellie Stein on 1/19/21.
//

import Foundation
import UIKit
import WebKit

class ArticleViewController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    var articleNumber = 001
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string: "http://www.scpwiki.com/scp-" + String(articleNumber))
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }}
