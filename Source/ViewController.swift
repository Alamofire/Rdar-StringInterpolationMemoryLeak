//
//  ViewController.swift
//  String Interpolation
//
//  Created by Christian Noon on 6/12/16.
//  Copyright © 2016 Alamofire. All rights reserved.
//

import Alamofire
import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        Alamofire.request(.GET, "https://httpbin.org/GET").responseJSON { response in
            print(response.debugDescription)
        }
    }
}
