//
//  WorkoutPlanVC.swift
//  livFit
//
//  Created by Akshat Gupta on 27/02/19.
//  Copyright © 2019 coded. All rights reserved.
//

import UIKit

class WorkoutPlanVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let chest = ["Bench Press","Incline Bench","Decline Bench","Chest Fly","Cable Cross"]
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chest.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
       let ncell = tableView.dequeueReusableCell(withIdentifier: "exercise", for: indexPath) as! ExerciseCellTableViewCell
        ncell.name.text = chest[indexPath.row]
 
        return ncell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 82
    }
    

    @IBOutlet weak var submitBtn: UIButton!
    @IBOutlet weak var dateView: UIView!
    @IBOutlet weak var monthLabel: UILabel!
   
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var datePicker : UIDatePicker!
    
    @IBOutlet weak var workoutPlanTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        workoutPlanTable.delegate = self
        workoutPlanTable.dataSource = self
        
        //register custom cell
        workoutPlanTable.register(ExerciseCellTableViewCell.self, forCellReuseIdentifier: "exercise")
        workoutPlanTable.register(UINib(nibName: "ExerciseCellTableViewCell", bundle: nil), forCellReuseIdentifier: "exercise")
        
        submitBtn.layer.cornerRadius = submitBtn.bounds.height/3
        
        
         let date_tap = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        dateView.addGestureRecognizer(date_tap)
        
        // Do any additional setup after loading the view.
    }
    func getMonth(i : Int)-> String{
        var month : String
        switch i{
        case 1:
            month = "January"
        case 2:
            month = "February"
        case 3:
            month = "March"
        case 4:
            month = "April"
        case  5:
            month = "May"
        case  6:
            month = "June"
        case  7:
            month = "July"
        case  8:
            month = "August"
        case  9:
            month = "September"
        case 10:
            month = "October"
        case  11:
            month = "November"
        case  12:
            month = "December"
        default:
            month = "IV"
            
            
        }
        return month
    }
    @IBAction func date_changed(_ sender: Any) {
        let date = datePicker.date
        let dateComponents = NSCalendar.current.dateComponents([.day,.month,.year], from: date)
        if let day = dateComponents.day, let month = dateComponents.month, let year = dateComponents.year {
            let dayString = "\(day)"
            let monthString = getMonth(i: month) as String
            let yearString = "\(year)"
           
           self.dayLabel.text = dayString
           self.monthLabel.text = monthString
            self.yearLabel.text = yearString
        }
        
        
      
        self.datePicker.isHidden = true
        self.workoutPlanTable.isHidden = false
    }
   
    
    
    @objc func handleTap(){
        print("view tapped")
        datePicker.isHidden = false;
        workoutPlanTable.isHidden = true
        
    }
    @IBAction func return_to_workout(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func submit_pressed(_ sender: Any) {
    }
    

}
