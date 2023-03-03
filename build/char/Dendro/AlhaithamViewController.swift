//
//  AlhaithamViewController.swift
//  build
///Users/77817/Desktop/School/Coding/build/build/char/AlhaithamViewController.swift
//  Created by Laake, Nolan - Student on 3/2/23.
//

import UIKit
import WebKit

class AlhaithamViewController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"https://genshin.gg/characters/Alhaitham/")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
}

