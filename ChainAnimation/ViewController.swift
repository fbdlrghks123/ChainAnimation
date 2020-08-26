//
//  ViewController.swift
//  ChainAnimation
//
//  Created by Ickhwan Ryu on 2020/08/26.
//  Copyright © 2020 Ickhwan Ryu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var testLabel: UILabel!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.prepareAnimation(withDuration: 0.3) {
            self.testLabel.alpha = 0
        }.then(withDuration: 0.3) {
            self.testLabel.alpha = 1
        }.animate()
    }
}

