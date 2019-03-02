//
//  StatsVC.swift
//  livFit
//
//  Created by Akshat Gupta on 27/02/19.
//  Copyright © 2019 coded. All rights reserved.
//

import UIKit

class StatsVC: UIViewController {

    @IBOutlet weak var scoreView: UIView!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var moodBar: UIView!
    @IBOutlet weak var dietBar: UIView!
    @IBOutlet weak var fitnessBar: UIView!
    @IBOutlet weak var rewardBtnView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

       rewardBtnView.layer.cornerRadius = rewardBtnView.bounds.height/2
        rewardBtnView.clipsToBounds = true
        scoreView.layer.cornerRadius = scoreView.bounds.height/4
        
    }
    

   

}
