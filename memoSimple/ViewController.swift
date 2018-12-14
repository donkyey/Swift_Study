//
//  ViewController.swift
//  memoSimple
//
//  Created by leedonggi on 14/12/2018.
//  Copyright © 2018 leedonggi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {
    
    @IBOutlet weak var txtMemo: UITextView!
    @IBOutlet weak var lblHelp: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtMemo.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func btnAdd(_ sender: Any) {
        
        goBack()
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        lblHelp.isHidden = true
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if txtMemo.text == "" {
            lblHelp.isHidden = false
        }
    }
    
}

