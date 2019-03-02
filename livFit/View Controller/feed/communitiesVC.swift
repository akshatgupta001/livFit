//
//  communitiesVC.swift
//  livFit
//
//  Created by Akshat Gupta on 03/03/19.
//  Copyright © 2019 coded. All rights reserved.
//

import UIKit

class communitiesVC: UIViewController {

    @IBOutlet weak var card1: UIView!
    @IBOutlet weak var button1: UIButton!
    
    @IBOutlet weak var card2: UIView!
    @IBOutlet weak var button2: UIButton!
    
    @IBOutlet weak var card3: UIView!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var doneBtn: UIButton!
    @IBOutlet weak var card4: UIView!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var card5: UIView!
    @IBOutlet weak var button5: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        doneBtn.layer.cornerRadius = doneBtn.bounds.height/2
        card1.layer.cornerRadius = 10
        card2.layer.cornerRadius = 10
        card3.layer.cornerRadius = 10
        card4.layer.cornerRadius = 10
        card5.layer.cornerRadius = 10
        
        button1.layer.cornerRadius = button1.bounds.height/2
        button2.layer.cornerRadius = button2.bounds.height/2
        button3.layer.cornerRadius = button3.bounds.height/2
        button4.layer.cornerRadius = button4.bounds.height/2
        button5.layer.cornerRadius = button5.bounds.height/2
        
    }
    
    @IBAction func tap(sender : UIButton){
        sender.backgroundColor = UIColor.green
    }
    @IBAction func dismiss(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    

}
