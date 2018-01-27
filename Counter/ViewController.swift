//
//  ViewController.swift
//  Counter
//
//  Created by Wisnu on 1/27/18.
//  Copyright © 2018 Wisnu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIGestureRecognizerDelegate, UITextFieldDelegate {

    @IBOutlet weak var tapButton: UIButton!
    @IBOutlet weak var countLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countLabel.text = "0"
        
        let longGesture = UILongPressGestureRecognizer(target: self, action: #selector(ViewController.onLongPressed(_:)))
        longGesture.minimumPressDuration = 1
        tapButton.addGestureRecognizer(longGesture)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

