//
//  LeaderboardVC.swift
//  livFit
//
//  Created by Akshat Gupta on 03/03/19.
//  Copyright © 2019 coded. All rights reserved.
//

import UIKit

class LeaderboardVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var donebtn: UIButton!
    var names = ["Akshat", "Anubha", "Vartul", "Arushi", "Simra", "Tanmay"]
    var scores = [32,28,21,19,17,15]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let ncell = tableView.dequeueReusableCell(withIdentifier: "scorecell", for: indexPath) as! scoreCell
        ncell.name.text = names[indexPath.row]
        ncell.score.text = String(scores[indexPath.row])
        
        return ncell
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
        
    }
    

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(scoreCell.self, forCellReuseIdentifier: "scorecell")
        tableView.register(UINib(nibName: "scoreCell", bundle: nil), forCellReuseIdentifier: "scorecell")
        donebtn.layer.cornerRadius = donebtn.bounds.height/2
        // Do any additional setup after loading the view.
    }
    

    @IBAction func dismiss(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    

}
