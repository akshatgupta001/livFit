//
//  SelectPlanVC.swift
//  livFit
//
//  Created by Akshat Gupta on 27/02/19.
//  Copyright © 2019 coded. All rights reserved.
//

import UIKit

class SelectPlanVC: UIViewController {
    
    @IBOutlet weak var beginnnerBtn: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
            beginnnerBtn.layer.cornerRadius = 10
        button2.layer.cornerRadius = 10
        button3.layer.cornerRadius = 10
        button4.layer.cornerRadius = 10
        button5.layer.cornerRadius = 10
        button6.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }
    
    @IBAction func beginnerTapped(_ sender: Any) {
        performSegue(withIdentifier: "showPlan", sender: self)
    }
    
    @IBAction func fatLossTapped(_ sender: Any) {
        performSegue(withIdentifier: "showPlan", sender: self)
    }
    
    @IBAction func MuscleGainTapped(_ sender: Any) {
        performSegue(withIdentifier: "showPlan", sender: self)
    }
    
    @IBAction func StrengthTapped(_ sender: Any) {
        performSegue(withIdentifier: "showPlan", sender: self)
    }
    @IBAction func HomeWorkoutTapped(_ sender: Any) {
        performSegue(withIdentifier: "showPlan", sender: self)
    }
    @IBAction func YogaTapped(_ sender: Any) {
        performSegue(withIdentifier: "showPlan", sender: self)
    }
    
}
