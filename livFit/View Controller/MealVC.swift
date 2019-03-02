//
//  MealVC.swift
//  livFit
//
//  Created by Akshat Gupta on 27/02/19.
//  Copyright © 2019 coded. All rights reserved.
//

import UIKit

class MealVC: UIViewController {

    @IBOutlet weak var item1: UIButton!
    @IBOutlet weak var item2: UIButton!
    @IBOutlet weak var item3: UIButton!
    @IBOutlet weak var addBtn: UIButton!
    @IBOutlet weak var foodTextField: UITextField!
    @IBOutlet weak var scoreCard: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        item1.tag = 1
        item2.tag = 2
        item3.tag = 3
         item1.layer.cornerRadius = item1.bounds.height/4
        item2.layer.cornerRadius = item2.bounds.height/4
        item3.layer.cornerRadius = item3.bounds.height/4
        addBtn.layer.cornerRadius = addBtn.bounds.height/2
        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveMeal(_ sender: Any) {
        scoreCard.isHidden = false
    }
    @IBAction func return_to_home(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func mealAdd(sender: UIButton){
        foodTextField.text = sender.title(for: .normal)
        
        
    }
   

}
