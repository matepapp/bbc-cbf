//
//  ViewController.swift
//  CorvinusBusinessFestival
//
//  Created by Mate Papp on 2017. 04. 18..
//  Copyright © 2017. BudapestBusinessClub. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    var webView: WKWebView!
    
    override func loadView() {
        self.webView = WKWebView()
        self.webView.navigationDelegate = self
        self.view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = URL(string: "http://budapestbusinessclub.com/app/") {
            let request = URLRequest(url: url)
            webView.load(request)
            webView.allowsBackForwardNavigationGestures = true
        } else {
            print("Couldn't load the URL.")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

