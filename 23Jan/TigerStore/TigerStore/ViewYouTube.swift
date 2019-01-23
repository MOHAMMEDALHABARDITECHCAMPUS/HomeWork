//
//  ViewYouTube.swift
//  TigerStore
//
//  Created by mac on 25/02/1440 AH.
//  Copyright © 1440 MOAHMMED. All rights reserved.
//

import UIKit

import WebKit

class ViewYouTube: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var YouTube: UIWebView!
    //outlet
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        YouTube.delegate = self
        let url = URL(string: "https://www.youtube.com/channel/UCeYtAhouhtXwQMEg79owmqg/videos")
        YouTube.loadRequest(URLRequest(url: url!))

    }
    
    @IBAction func reload(_ sender: Any) {
        //action
        YouTube.reload()
    }
    
    @IBAction func back(_ sender: Any) {
        //action
        YouTube.goBack()
    }
    
    
    
    
    
    @IBOutlet weak var avtivity: UIActivityIndicatorView!
    //outlet
    
    func webViewDidStartLoad(_ webView: UIWebView){
        avtivity.startAnimating()
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView){
        avtivity.stopAnimating()
    }

}
