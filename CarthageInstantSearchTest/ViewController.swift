//
//  ViewController.swift
//  CarthageInstantSearchTest
//
//  Created by Guy Daher on 21/06/2017.
//  Copyright © 2017 Guy Daher. All rights reserved.
//

import UIKit
import AlgoliaSearch

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var client: Client = Client(appID: "asas", apiKey: "asdsad")
        var x = client.index(withName: "aaa")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

