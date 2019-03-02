//
//  ProfileVC.swift
//  livFit
//
//  Created by Akshat Gupta on 27/02/19.
//  Copyright © 2019 coded. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController{

    @IBOutlet weak var showLeaderboard: UIButton!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var sexTextField: UITextField!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboard()
     imgView.layer.cornerRadius = imgView.bounds.height/2
        
        showLeaderboard.layer.cornerRadius = showLeaderboard.bounds.height/2
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
