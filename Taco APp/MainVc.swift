//
//  ViewController.swift
//  Taco APp
//
//  Created by AKIL KUMAR THOTA on 1/1/17.
//  Copyright © 2017 AKIL KUMAR THOTA. All rights reserved.
//

import UIKit

class MainVC: UIViewController, finishloading {
    
    @IBOutlet weak var header: HeaderView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        header.addShadow()
        DataService.instance.loadDeliciousTacoData()
        
        DataService.instance.delegate = self
    }

    func dataloaded() {
        print("All Data is loaded and ready")
    }

}

