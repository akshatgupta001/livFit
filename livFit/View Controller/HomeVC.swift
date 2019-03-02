//
//  HomeVC.swift
//  livFit
//
//  Created by Akshat Gupta on 27/02/19.
//  Copyright © 2019 coded. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {
    var count = 0
    @IBOutlet weak var water: UILabel!
    @IBOutlet weak var targetView: UIView!
    @IBOutlet weak var targetBodyView: UIView!
    @IBOutlet weak var activityBodyView: UIView!
    
    @IBOutlet weak var waterBodyView: UIView!
    @IBOutlet weak var foodBodyView: UIView!
    
    @IBOutlet weak var careBodyView: UIView!
    @IBOutlet weak var careView: UIView!
    @IBOutlet weak var waterView: UIView!
    @IBOutlet weak var foodView: UIView!
    @IBOutlet weak var gameView: UIView!
    @IBOutlet weak var activityView: UIView!
    @IBOutlet weak var play: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        roundTheCorners(myView: targetView, num: 2)
        roundTheCorners(myView: activityView, num: 2)
        roundTheCorners(myView: foodView, num: 2)
        roundTheCorners(myView: waterView, num: 2)
        roundTheCorners(myView: careView, num: 2)
        roundTheCorners(myView: targetBodyView, num: 4)
        roundTheCorners(myView: activityBodyView, num: 4)
        roundTheCorners(myView: foodBodyView, num: 4)
        roundTheCorners(myView: waterBodyView, num: 4)
        roundTheCorners(myView: careBodyView, num: 4)
        let tap = UITapGestureRecognizer(target: self, action: #selector(playgame))
        play.addGestureRecognizer(tap)
    }
    @objc func playgame(){
        performSegue(withIdentifier: "playGame", sender: self)
        
    }
    
    func roundTheCorners(myView : UIView, num : Int){
        myView.clipsToBounds = true
        myView.layer.cornerRadius = 10
        if(num==2){
             myView.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
        }
        else{
            myView.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner,.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        }
       
    }
    @IBAction func addWater(_ sender: Any) {
        count += 1
        water.text = "\(count)"
        
    }
    
    @IBAction func subtractWater(_ sender: Any) {
        if count > 0{
            count -= 1}
        water.text = "\(count)"
    }
    

}
