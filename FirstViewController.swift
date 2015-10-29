//
//  FirstViewController.swift
//  MigraineTracker - USER PROFILE
//
//  Created by Simeon Cady on 10/13/15.
//  Copyright (c) 2015 Simeon Cady. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    //Set the default user
    let defaults = NSUserDefaults.standardUserDefaults()
    var newUser: UserProfile = UserProfile()
    
    //Fills textfields for appropriate variable
    @IBOutlet var printFirstName: UITextField!
    @IBOutlet var printLastName: UITextField!
    @IBOutlet var printGender: UITextField!
    @IBOutlet var printAge: UITextField!
    @IBOutlet var printEmail: UITextField!
    @IBOutlet var printDoc: UITextField!
    @IBOutlet var printDocEmail: UITextField!
    @IBOutlet var printMig: UITextField!
    @IBOutlet var printDia: UITextField!
    @IBOutlet var printGlasses: UITextField!
    @IBOutlet var printEyeExam: UITextField!
    @IBOutlet var printTrigger: UITextField!

    
    //All necessary functions to save to new profile
    @IBAction func firstName(sender: UITextField) {
        newUser.firstName = sender.text!
        
    }
    
    @IBAction func lastNameSet(sender: UITextField) {
        newUser.lastName = sender.text!
    }
    
    @IBAction func genderSet(sender: UITextField) {
        if(sender.text == "F"){
            newUser.gender = true
        }
    }
    
    @IBAction func ageSet(sender: UITextField) {
        newUser.age = sender.tag
    }
    
    @IBAction func emailSet(sender: UITextField) {
        newUser.email = sender.text!
    }
    
    @IBAction func doctorNameSet(sender: UITextField) {
        newUser.docName = sender.text!
    }
    
    @IBAction func doctorEmailSet(sender: UITextField) {
        newUser.docEmail = sender.text!
    }
    
    @IBAction func migDiaSet(sender: UITextField) {
        if(sender.text == "y"){
            newUser.midDiagnosed = true
        }
    }
    
    @IBAction func diabDiaSet(sender: UITextField) {
        if(sender.text == "y"){
            newUser.diaDiagnosed = true
        }
    }
    
    @IBAction func glassesSet(sender: UITextField) {
        if(sender.text == "y"){
            newUser.glasses = true
        }
    }
    @IBAction func lastEyeSet(sender: UITextField) {
        newUser.lastEyeExam = sender.text!
    }
    @IBAction func triggersSet(sender: UITextField) {
        newUser.trig = sender.text!
    }
    
    
    //Updated the textfields, if the user has already saved input
    @IBAction func updateProfile(sender: UIButton) {
        if let _ = defaults.objectForKey("firstName") as? String {
            newUser.firstName = defaults.objectForKey("firstName") as! String
            printFirstName.text = newUser.firstName
        }
        if let _ = defaults.objectForKey("lastName") as? String {
            newUser.lastName = defaults.objectForKey("lastName") as! String
            printLastName.text = newUser.lastName
        }
        if let _ = defaults.objectForKey("gender") as? String {
            newUser.gender = defaults.objectForKey("gender") as! Bool
            printGender.text = "m"
        }
        if let _ = defaults.objectForKey("age") as? String {
            newUser.age = defaults.objectForKey("age") as! Int
            printAge.tag = newUser.age

        }
        if let _ = defaults.objectForKey("email") as? String {
            newUser.email = defaults.objectForKey("email") as! String
            printEmail.text = newUser.email
        }
        if let _ = defaults.objectForKey("docName") as? String {
            newUser.docName = defaults.objectForKey("docName") as! String
            printDoc.text = newUser.docName
        }
        if let _ = defaults.objectForKey("docEmail") as? String {
            newUser.docEmail = defaults.objectForKey("docEmail") as! String
            printDocEmail.text = newUser.docEmail
        }
        if let _ = defaults.objectForKey("midDiagnosed") as? String {
            newUser.midDiagnosed = defaults.objectForKey("midDiagnosed") as! Bool
            //printMig.text = newUser.midDiagnosed
        }
        if let _ = defaults.objectForKey("diaDiagnosed") as? String {
            newUser.diaDiagnosed = defaults.objectForKey("diaDiagnosed") as! Bool
            //printMig.text = newUser.midDiagnosed
        }
        if let _ = defaults.objectForKey("glasses") as? String {
            newUser.glasses = defaults.objectForKey("glasses") as! Bool
            //printGlasses.text = newUser.glasses
        }
        if let _ = defaults.objectForKey("lastEyeExam") as? String {
            newUser.lastEyeExam = defaults.objectForKey("lastEyeExam") as! String
            printEyeExam.text = newUser.lastEyeExam
        }
        if let _ = defaults.objectForKey("trig") as? String {
            newUser.trig = defaults.objectForKey("trig") as! String
            printTrigger.text = newUser.trig
        }
        
        
    }

    // Saves all inputFields to system
    @IBAction func saveProfile(sender: AnyObject) {
        defaults.setObject(self.newUser.firstName, forKey: "firstName")
        defaults.setObject(self.newUser.lastName, forKey: "lastName")
        defaults.setObject(self.newUser.gender, forKey: "gender")
        defaults.setObject(self.newUser.age, forKey: "age")
        defaults.setObject(self.newUser.email, forKey: "email")
        defaults.setObject(self.newUser.docName, forKey: "docName")
        defaults.setObject(self.newUser.docEmail, forKey: "docEmail")
        defaults.setObject(self.newUser.age, forKey: "age")
        defaults.setObject(self.newUser.midDiagnosed, forKey: "midDiagnosed")
        defaults.setObject(self.newUser.diaDiagnosed, forKey: "diaDiagnosed")
        defaults.setObject(self.newUser.glasses, forKey: "glasses")
        defaults.setObject(self.newUser.lastEyeExam, forKey: "lastEyeExam")
        defaults.setObject(self.newUser.trig, forKey: "trig")
        
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

