//
//  QuestionViewController.swift
//  Aries
//
//  Created by Ola Adeoba on 2024-07-08.
//

import Foundation
import UIKit

class LogQuestionViewController : UIViewController, UITextFieldDelegate{
    
    @IBOutlet var loginValue: UILabel!
    
    @IBOutlet var loginTextLabel: UITextField!
    
    @IBOutlet var LoginTextSend: UITextField!
    
    var track: SignIn?
    var comp = Components()
    var userInfo = User()
    
    @IBOutlet var logoImage: UIImageView!
    
    
    @IBOutlet var VerificationStack: UIStackView!
    
    @IBOutlet var LoginStack: UIStackView!
    
    
    @IBOutlet var firstTextField: UITextField!
    
    @IBOutlet var secondTextField: UITextField!
   
    
    @IBOutlet var thirdTextField: UITextField!
    
    @IBOutlet var fourthTextField: UITextField!
    
    @IBOutlet var fifthTextField: UITextField!
    
    @IBOutlet var sixthTextField: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sixthTextField.returnKeyType = .done
        
        loginTextLabel.delegate = self
        LoginTextSend.delegate = self
        firstTextField.delegate = self
        secondTextField.delegate = self
        thirdTextField.delegate = self
        fourthTextField.delegate = self
        fifthTextField.delegate = self
        sixthTextField.delegate = self
        
        updateUI()
        
    }
    
    func updateUI(){
        
        VerificationStack.isHidden = true
        firstTextField.textColor = UIColor.white
           secondTextField.textColor = UIColor.white
           thirdTextField.textColor = UIColor.white
           fourthTextField.textColor = UIColor.white
           fifthTextField.textColor = UIColor.white
           sixthTextField.textColor = UIColor.white
        
        logoImage.image = UIImage(named: comp.applogoImage )
        
        if track == .emaillogin{
            navigationItem.title = "Email Login"
            loginValue.text = "Email:"
            loginTextLabel.text = "enter email"
            
        }else if track == .phonelogin {
            navigationItem.title = "Phone Login"
            loginValue.text = "Phone:"
            loginTextLabel.text = "enter phone number"
            
        }
        
        
        
       
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField == loginTextLabel{
            LoginTextSend.becomeFirstResponder()
            
        }
        if textField == LoginTextSend {
            LoginTextSend.resignFirstResponder()
        }
        if textField == fifthTextField{
            sixthTextField.resignFirstResponder()
            print("Sixth Text Field: \(String(describing: sixthTextField.text))")
            if sixthTextField.returnKeyType == .done{
                
                var value:[String] = []
                
                
                
                userInfo.verify = "/()"
            
            }
        }
        return true
        
        
    }
    
    @IBAction func continuAction(_ sender: Any) {
        
        LoginStack.isHidden = true
        VerificationStack.isHidden = false
        
        
        
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        let currentText = textField.text ?? ""
        guard let stringRange = Range(range,in: currentText) else {return false}
        
        let updatedText = currentText.replacingCharacters(in: stringRange, with: string)
        
        print("Current Text: \(currentText)")
        print("Updated Text: \(updatedText)")
        
        if textField == firstTextField || textField == secondTextField || textField == thirdTextField || textField == fourthTextField || textField == fifthTextField || textField == sixthTextField {
            
            
            if updatedText.count > 1 {
                return false
            }
            
            // Check if the updated text length is greater than 1
            if textField == firstTextField || textField == secondTextField || textField == thirdTextField || textField == fourthTextField || textField == fifthTextField{
                
                // Update text field only if the change is allowed
                textField.text = updatedText
                
            }
               
               
            
        }
        
        if !string.isEmpty{
            if textField == firstTextField {
                secondTextField.becomeFirstResponder()
                print("First Text Field: \(String(describing: firstTextField.text))")
            }
            else if textField == secondTextField{
                thirdTextField.becomeFirstResponder()
                print("Second Text Field: \(String(describing: secondTextField.text))")
            }else if textField == thirdTextField{
                fourthTextField.becomeFirstResponder()
                print("Third Text Field: \(String(describing: thirdTextField.text))")
            } else if textField == fourthTextField{
                print("Fourth Text Field: \(String(describing: fourthTextField.text))")
                fifthTextField.becomeFirstResponder()
            } else if textField == fifthTextField{
                print("Fifth Text Field: \(String(describing: fifthTextField.text))")
                sixthTextField.becomeFirstResponder()
            }
        }
        return true
    }
    
}
