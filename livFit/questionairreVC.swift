//
//  questionairreVC.swift
//  livFit
//
//  Created by Akshat Gupta on 03/03/19.
//  Copyright © 2019 coded. All rights reserved.
//

import UIKit

class questionairreVC: UIViewController {

    @IBOutlet weak var Q1: UIView!
    @IBOutlet weak var startField: UITextField!
    
    @IBOutlet weak var Q2: UIView!
    @IBOutlet weak var toField: UITextField!
 
    @IBOutlet weak var doneBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboard()
     Q1.layer.cornerRadius = 10
        Q2.layer.cornerRadius = 10
        
        // Do any additional setup after loading the view.
    }
    
    func hideKeyboard() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    @objc func dismissKeyboard() {
        //        self.view.resignFirstResponder()
        self.view.endEditing(true)
    }

    
  
    
}
