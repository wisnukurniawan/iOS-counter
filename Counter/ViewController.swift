//
//  ViewController.swift
//  Counter
//
//  Created by Wisnu on 1/27/18.
//  Copyright © 2018 Wisnu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tapButton: UIButton!
    @IBOutlet weak var countLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let longGesture = UILongPressGestureRecognizer(target: self, action: #selector(ViewController.onLongPressed(_:)))
        longGesture.minimumPressDuration = 0.5
        tapButton.addGestureRecognizer(longGesture)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func onButtonTap(_ sender: UIButton) {
        if let tempNum = Int(self.countLabel.text!) {
            self.countLabel.text = "\(tempNum + 1)"
        }
    }
    
    @objc func onLongPressed(_ sender: UILongPressGestureRecognizer) {
        if sender.state == .changed {
            if let tempNum = Int(self.countLabel.text!) {
                self.countLabel.text = "\(tempNum + 1)"
            }
        }
    }

}

