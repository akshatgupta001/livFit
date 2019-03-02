//
//  SelectPlanVC.swift
//  livFit
//
//  Created by Akshat Gupta on 27/02/19.
//  Copyright © 2019 coded. All rights reserved.
//

import UIKit

class SelectPlanVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
