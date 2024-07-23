//
//  ViewController.swift
//  Aries
//
//  Created by Ola Adeoba on 2024-05-01.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var logoImage: UIImageView!
    
    
    @IBOutlet var emailImageIcon: UIImageView!
    
    @IBOutlet var messageImage: UIImageView!
    
    @IBOutlet var registerImageIcon: UIImageView!
    
    @IBOutlet var memberImage: UIImageView!
    
    
    var comp = Components()
    var track : SignIn?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
    }
    
    func updateUI(){
        
        logoImage.image = UIImage(named: comp.applogoImage)
        messageImage.image = UIImage(named: comp.messagelogo)
        emailImageIcon.image = UIImage(named: comp.emailImage)
        registerImageIcon.image = UIImage(named: comp.regImage)
        
        
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        if let track = sender as? SignIn{
            
            if segue.identifier == "Register"{
                
                if let destinationVC = segue.destination as? RegisterViewController{
                    destinationVC.track = track
                }
                
            }else if segue.identifier == "LogQuestion"{
                
                if let destinationVC = segue.destination as? LogQuestionViewController{
                    destinationVC.track = track
                }
                
            }
            
        }
        
    }
    
    @IBAction func registerButtonTapped(_ sender: Any) {
        
        
        
        performSegue(withIdentifier: "Register", sender: SignIn.register)
        
        
        
        
        
        
    }
    
    @IBAction func logPhoneButtonTapped(_ sender: Any) {
        
        
        performSegue(withIdentifier: "LogQuestion", sender: SignIn.phonelogin)
        
        
    }
    
    @IBAction func logEmailButtonTapped(_ sender: Any) {
        
        performSegue(withIdentifier: "LogQuestion", sender: SignIn.emaillogin)
        
        
    }
    
    
}

