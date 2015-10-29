//
//  SecondViewController.swift
//  MigraineTracker
//
//  Created by Simeon Cady on 10/13/15.
//  Copyright (c) 2015 Simeon Cady. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var newMigraine: Migraine = Migraine()
    let def = NSUserDefaults.standardUserDefaults()
    
    @IBOutlet var printSeverity: UITextField!
    @IBOutlet var printSleep: UITextField!
    @IBOutlet var printLights: UITextField!
    @IBOutlet var printLoud: UITextField!
    @IBOutlet var printOdor: UITextField!
    @IBOutlet var printMedications: UITextField!
    @IBOutlet var printFood: UITextField!
    @IBOutlet var printNickname: UITextField!
    
    
    
    
    @IBAction func setLocation(sender: UITextField) {
        newMigraine.location = sender.text!
    }
    
    @IBAction func setSeverity(sender: UITextField) {
        newMigraine.severity = sender.tag
    }
    
    @IBAction func setHoursOfSleep(sender: UITextField) {
        newMigraine.hoursOfSleep = sender.tag
    }
    
    @IBAction func setLights(sender: UITextField) {
        if(sender.text == "y"){
            newMigraine.brightLights = true
        }
    }
    
    @IBAction func setSounds(sender: UITextField) {
        if(sender.text == "y"){
            newMigraine.loudSounds = true
        }
    }
    
    
    @IBAction func setOdors(sender: UITextField) {
        if(sender.text == "y"){
            newMigraine.strongOdors = true
        }
    }
    
    @IBAction func setMedications(sender: UITextField) {
        newMigraine.medication = sender.text!
    }
    
    @IBAction func setFoodItems(sender: UITextField) {
        newMigraine.food = sender.text!
    }
    
    @IBAction func setNickname(sender: UITextField) {
        newMigraine.nickName = sender.text!
    }
    
    //AREA OF MIGRAINE
    
    @IBAction func setMigOne(sender: UIButton) {
        newMigraine.location = "Forehead - Left"
    }
    
    @IBAction func setMigTwo(sender: UIButton) {
        newMigraine.location = "Forehead - Right"
        
    }
    
    @IBAction func setMigThree(sender: UIButton) {
        newMigraine.location = "Sinuses - Left"
        
    }
    
    @IBAction func setMigFour(sender: UIButton) {
        newMigraine.location = "Sinuses - Right"
        
    }
    
    
    @IBAction func setMigFive(sender: UIButton) {
        newMigraine.location = "Temple - Left"
    }
    
    @IBAction func setMigSix(sender: UIButton) {
        newMigraine.location = "Temple - Right"
        
    }
    
    @IBAction func setMigSeven(sender: UIButton) {
        newMigraine.location = "Neck - Back of Head"
        
    }
    
    @IBAction func saveProf(sender: UIButton) {
        def.setObject(self.newMigraine.location, forKey: "local")
        def.setObject(self.newMigraine.severity, forKey: "sever")
        def.setObject(self.newMigraine.hoursOfSleep, forKey: "sleep")
        def.setObject(self.newMigraine.brightLights, forKey: "light")
        def.setObject(self.newMigraine.loudSounds, forKey: "sound")
        def.setObject(self.newMigraine.medication, forKey: "med")
        def.setObject(self.newMigraine.food, forKey: "food")
        def.setObject(self.newMigraine.nickName, forKey: "name")
        
    }
    
    @IBAction func updateProfile(sender: UIButton) {
        if let _ = def.objectForKey("local") as? String {
            newMigraine.location = def.objectForKey("local") as! String
        }
        if let _ = def.objectForKey("sever") as? String {
            newMigraine.severity = def.objectForKey("sever") as! Int
            printSeverity.tag =  232 //newMigraine.severity
        }
        if let _ = def.objectForKey("sleep") as? String {
            newMigraine.hoursOfSleep = def.objectForKey("sleep") as! Int
            printSleep.tag = 232 //newMigraine.hoursOfSleep
        }
        if let _ = def.objectForKey("light") as? String {
            newMigraine.brightLights = def.objectForKey("light") as! Bool
            printLights.text = "a"
            
        }
        if let _ = def.objectForKey("sound") as? String {
            newMigraine.loudSounds = def.objectForKey("sound") as! Bool
            printMedications.text = "a"
        }
        if let _ = def.objectForKey("med") as? String {
            newMigraine.medication = def.objectForKey("med") as! String
            printMedications.text = newMigraine.medication
        }
        if let _ = def.objectForKey("food") as? String {
            newMigraine.food = def.objectForKey("food") as! String
            printFood.text = newMigraine.food
        }
        if let _ = def.objectForKey("name") as? String {
            newMigraine.nickName = def.objectForKey("name") as! String
            printNickname.text = newMigraine.nickName
        }
               
    }
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

