//
//  ViewController.swift
//  WebView
//
//  Created by Marta Fonda on 05/01/16.
//  Copyright © 2016 Marta Fonda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let url = NSURL(string: "https://stackoverflow.com")
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!){
            (data, response, error) in
            
            if error == nil {
            
                let urlContent = NSString(data: data!, encoding: NSUTF8StringEncoding)
                print(urlContent)
                self.webView.loadHTMLString(urlContent! as String, baseURL: nil)
            }
        }
        task.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

