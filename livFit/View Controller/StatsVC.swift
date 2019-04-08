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
    @IBOutlet weak var calorieContainer: UIView!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var moodContainer: UIView!
    @IBOutlet weak var moodBar: UIView!
    @IBOutlet weak var dietContainer: UIView!
    @IBOutlet weak var dietBar: UIView!
    @IBOutlet weak var fitnessBar: UIView!
    @IBOutlet weak var rewardBtnView: UIView!
    @IBOutlet weak var sleepBar: UIView!
    @IBOutlet weak var sleepContainer: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

       rewardBtnView.layer.cornerRadius = rewardBtnView.bounds.height/2
        rewardBtnView.clipsToBounds = true
        scoreView.layer.cornerRadius = scoreView.bounds.height/4
        roundTheCorners(myView: fitnessBar, num: 4)
        roundTheCorners(myView: moodBar, num: 4)
        roundTheCorners(myView: dietBar, num: 4)
        roundTheCorners(myView: calorieContainer, num: 4)
        roundTheCorners(myView: dietContainer, num: 4)
        roundTheCorners(myView: moodContainer, num: 4)
        roundTheCorners(myView: sleepBar, num: 4)
        roundTheCorners(myView: sleepContainer, num: 4)
    }
    func roundTheCorners(myView : UIView, num : Int){
        myView.clipsToBounds = true
        myView.layer.cornerRadius = myView.bounds.height/2
        if(num==2){
            myView.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
        }
        else{
            myView.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner,.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        }
        
    }
    

   

}
