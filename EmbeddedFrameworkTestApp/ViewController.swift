//
//  ViewController.swift
//  EmbeddedFrameworkTestApp
//
//  Created by Daniel Ramteke on 2/12/15.
//  Copyright (c) 2015 Newsela. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(animated: Bool) {
        Alamofire.request(.GET, "http://google.com", parameters: nil).responseString { (_,_,data,_) in
            println(data)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

