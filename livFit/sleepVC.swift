//
//  sleepVC.swift
//  livFit
//
//  Created by Akshat Gupta on 03/03/19.
//  Copyright © 2019 coded. All rights reserved.
//

import UIKit

class sleepVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    

}
/*
 
 health kit data
 
 import UIKit
 import HealthKit
 
 
 
 class ViewController: UIViewController {
 
 let healthKitStore : HKHealthStore = HKHealthStore()
 
 var alarmTime = Date()
 var endTime : Date?
 override func viewDidLoad() {
 super.viewDidLoad()
 let typestoRead = Set([
 HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.sleepAnalysis)!
 ])
 
 let typestoShare = Set([
 HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.sleepAnalysis)!
 ])
 
 
 self.healthKitStore.requestAuthorization(toShare: typestoShare, read: typestoRead) { (success, error) -> Void in
 if success == false {
 NSLog(" Display not allowed")
 }
 }
 // Do any additional setup after loading the view, typically from a nib.
 }
 @IBAction func auth_clicked(_ sender: Any) {
 endTime = Date()
 saveSleepAnalysis()
 retrieveSleepAnalysis()
 //        timer.invalidate()
 
 }
 
 @IBAction func get_details(_ sender: Any) {
 // alarmTime = Date()
 }
 
 
 
 //        func authorizeHealthKit(){
 //                    let healthkitTypesToRead : Set<HKObjectType> = [
 //                        HKObjectType.characteristicType(forIdentifier: HKCharacteristicTypeIdentifier.dateOfBirth)!,
 //                         HKObjectType.characteristicType(forIdentifier: HKCharacteristicTypeIdentifier.bloodType)!
 //                    ]
 //            let healthKitTypesToWrite : Set<HKSampleType> = []
 //
 //            if !HKHealthStore.isHealthDataAvailable(){
 //                print("error")
 //                return
 //            }
 //
 //            healthKitStore.requestAuthorization(toShare: healthKitTypesToWrite, read: healthkitTypesToRead) { (success, error) in
 //                print("read n write authorization succeded")
 //            }
 //
 //        }
 
 //save sleep data to health app
 func saveSleepAnalysis() {
 
 // alarmTime and endTime are NSDate objects
 if let sleepType = HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.sleepAnalysis) {
 
 // we create our new object we want to push in Health app
 let object = HKCategorySample(type:sleepType, value: HKCategoryValueSleepAnalysis.inBed.rawValue, start: self.alarmTime, end: self.endTime!)
 
 // at the end, we save it
 healthKitStore.save(object, withCompletion: { (success, error) -> Void in
 
 if error != nil {
 // something happened
 return
 }
 
 if success {
 print("My new data was saved in HealthKit")
 
 } else {
 // something happened again
 }
 
 })
 
 
 let object2 = HKCategorySample(type:sleepType, value: HKCategoryValueSleepAnalysis.asleep.rawValue, start: self.alarmTime, end: self.endTime!)
 
 healthKitStore.save(object2, withCompletion: { (success, error) -> Void in
 if error != nil {
 // something happened
 return
 }
 
 if success {
 print("My new data (2) was saved in HealthKit")
 } else {
 // something happened again
 }
 
 })
 
 }
 
 }
 
 //read sleep data
 func retrieveSleepAnalysis() {
 
 // first, we define the object type we want
 if let sleepType = HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.sleepAnalysis) {
 
 // Use a sortDescriptor to get the recent data first
 let sortDescriptor = NSSortDescriptor(key: HKSampleSortIdentifierEndDate, ascending: false)
 
 // we create our query with a block completion to execute
 let query = HKSampleQuery(sampleType: sleepType, predicate: nil, limit: 30, sortDescriptors: [sortDescriptor]) { (query, tmpResult, error) -> Void in
 
 if error != nil {
 
 // something happened
 return
 
 }
 
 if let result = tmpResult {
 
 // do something with my data
 for item in result {
 if let sample = item as? HKCategorySample {
 let value = (sample.value == HKCategoryValueSleepAnalysis.inBed.rawValue) ? "inBed" : "asleep"
 print("Healthkit sleep: \(sample.startDate) \(sample.endDate) - value: \(value)")
 }
 }
 }
 }
 
 // finally, we execute our query
 healthKitStore.execute(query)
 }
 }
 
 
 }
 

 
 
 */
