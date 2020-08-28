//
//  ViewController.swift
//  Sample_Counter_Swift
//
//  Created by Akane Yasuda on 2020/06/07.
//  Copyright © 2020 Pochi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countText: UILabel!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func addCounter(_ sender: Any) {
        let count:Int? = Int(countText.text!)
        countText.text = String(count! + 1)
        changeButtonStatus()
    }
    
    @IBAction func minusCounter(_ sender: Any) {
        let count:Int? = Int(countText.text!)
        countText.text = String(count! - 1)
        changeButtonStatus()
    }
    
    @IBAction func resetButton(_ sender: Any) {
        countText.text = "0"
        changeButtonStatus()
    }
    
    
    func changeButtonStatus() {
        let count:Int? = Int(countText.text!)
        
        if count! == 0 {
            addButton.isEnabled = true
            minusButton.isEnabled = false
            resetButton.isEnabled = false
        } else if count! >= 100{
            addButton.isEnabled = false
            minusButton.isEnabled = true
            resetButton.isEnabled = true
        } else {
            addButton.isEnabled = true
            minusButton.isEnabled = true
            resetButton.isEnabled = true

        }
        
    }
    
}

