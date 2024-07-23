//
//  model.swift
//  Aries
//
//  Created by Ola Adeoba on 2024-07-07.
//

import Foundation
import UIKit

struct Components{
    
    var applogoImage: String = "A.png"
    var messagelogo: String = "Message.png"
    var regImage: String = "ftkwrite.png"
    var emailImage: String = "email.png"
    var profileBlabkImage: String = "Profile-PNG-File"
    
}

struct User{
    
    var email: String = ""
    var phoneNumber: String = ""
    var firstName: String = ""
    var lastName: String = ""
    var dateOfBirth: Date? = nil
    var profileIconImage: UIImage? = nil
    var profileImage: [UIImage?] = []
    var userAge: Int = 0
    var ageLimit: Int = 0
    var country: String = ""
    var register: Bool = false
    var login: Bool = false
    var signout: Bool = false
    var password: String = ""
    var userId: String = ""
    var answers: questions?
    var verify: Int = 0

}

struct questions{
    
    var q1: String = "What are your top 5 hobbies or interests"
    var q2: String = "How do you like to spend your weekends"
    var q3: String = "What is your current career"
    var q4: String = "Are you a morning person or a night owl"
    var q5: String = "How important is physical fitness or exercise to you"
    var q6: String = "What is your current height"
    var q7: String = "What body type are you"
    var q8: String = "what level of money do you make a year"
    var q9: String = "How important is your partners fiances to you"
    var q10: String = "What is your nationality"
    var q11: String = "What language do you speak"
    
    var ans : [String]
    
    enum Qnine{
        case little, alot, very
    }
    
    
}
enum SignIn{
    case register,phonelogin,emaillogin
}
