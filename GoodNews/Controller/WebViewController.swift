//
//  WebViewController.swift
//  GoodNews
//
//  Created by Halil YAŞ on 20.07.2023.
//

import UIKit
import WebKit

class WebViewController : UIViewController, WKNavigationDelegate {
    
    var webView : WKWebView!
    var url : URL!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView = WKWebView(frame: view.bounds)
        webView.navigationDelegate = self
        webView.allowsBackForwardNavigationGestures = true
        view.addSubview(webView)
        
        DispatchQueue.main.async {
            let request = URLRequest(url: self.url)
            self.webView.load(request)
        }
    }
    
}
