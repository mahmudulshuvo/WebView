//
//  ViewController.swift
//  WebView
//
//  Created by SHUVO on 7/11/16.
//  Copyright © 2016 SHUVO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = NSBundle.mainBundle().URLForResource("index", withExtension: "html")
        
        do {
            let fileHtml = try NSString(contentsOfURL: url!, encoding: NSUTF8StringEncoding)
            webView.loadHTMLString(fileHtml as String, baseURL: url?.URLByDeletingLastPathComponent)
        }
        catch {
            print(error)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

