//
//  UserProfile.swift
//  MigraineTracker
//
//  Created by Simeon Cady on 10/28/15.
//  Copyright © 2015 Simeon Cady. All rights reserved.
//

import Foundation


public class UserProfile{

    public var age: Int = 0
    public var gender: Bool = false
    public var midDiagnosed: Bool = false
    public var diaDiagnosed: Bool = false
    public var glasses: Bool = false
    public var lastEyeExam: String = ""
    public var trig: String = ""
    public var firstName: String = ""
    public var lastName: String = ""
    public var email: String = ""
    public var docEmail: String = ""
    public var docName: String = ""
    var questions: [Questions] = []
    var migraines: [Migraine] = []
    var notes: [Notes] = []
    
    

}
