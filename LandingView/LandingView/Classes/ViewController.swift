//
//  ViewController.swift
//  LandingView
//
//  Created by Chainarong Chaiyaphat on 6/19/18.
//  Copyright © 2018 Chainarong Chaiyaphat. All rights reserved.
//

import UIKit
class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
       setVideoBackground()
        setButtonInterface(signInButton)
        setButtonInterface(registerButton)
        
        
    }

    private func setVideoBackground() {
        let htmlName = "WebViewContent"
        guard let htmlPath = Bundle.main.path(forResource: htmlName, ofType: "html") else { return }
        let htmlURL = URL(fileURLWithPath: htmlPath)
        guard let html = try? Data(contentsOf: htmlURL) else { return }
        
        self.webView.load(html, mimeType: "text/html", textEncodingName: "UTF-8", baseURL: htmlURL.deletingLastPathComponent())
    }
    
    private func setButtonInterface(_ button: UIButton) {
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 4
    }
    
    
}

