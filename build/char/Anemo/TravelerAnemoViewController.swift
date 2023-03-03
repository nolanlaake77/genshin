//
//  TravelerAnemoViewController.swift
//  build
//
//  Created by Laake, Nolan - Student on 3/2/23.
//

import UIKit
import WebKit

class TravelerAnemoViewController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"https://genshin.gg/characters/traveler(anemo)/")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
}
