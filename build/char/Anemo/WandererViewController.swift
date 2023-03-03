//
//  WandererViewController.swift
//  build
//
//  Created by Laake, Nolan - Student on 3/2/23.
//

import UIKit
import WebKit

class WandererViewController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"https://genshin.gg/characters/wanderer/")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
}
