//
//  secondViewController.swift
//  2ndLesson 3rdMonth Home work
//
//  Created by Islam on 28/12/22.
//

import UIKit

class secondViewController: UIViewController {
    @IBOutlet weak var firstName: UITextField!
    
    @IBOutlet weak var lastName: UITextField!
    
    @IBOutlet weak var dataOfBirth: UITextField!
    
    @IBOutlet weak var idNumber: UITextField!
    
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var phoneNumber: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
    }
    
    @IBAction func submit(_ sender: Any) {
        let nameFirst = firstName.text
        if firstName.text == ""{
            firstName.attributedPlaceholder = NSAttributedString(string: "First Name*", attributes: [NSAttributedString.Key.foregroundColor: UIColor.red])
        }
        let nameLast = lastName.text
        if lastName.text == ""{
            lastName.attributedPlaceholder = NSAttributedString(string: "Last name*", attributes: [NSAttributedString.Key.foregroundColor : UIColor.red])
        }
        let dateOfBirth = dataOfBirth.text
        if dataOfBirth.text == ""{
            dataOfBirth.attributedPlaceholder = NSAttributedString(string: "DataOfBirth*", attributes: [NSAttributedString.Key.foregroundColor : UIColor.red])
        }
        let numberId = idNumber.text
        if idNumber.text == ""{
            idNumber.attributedPlaceholder = NSAttributedString(string: "Id Card*", attributes: [NSAttributedString.Key.foregroundColor : UIColor.red])
        }
        let mail = email.text
        if email.text == ""{
            email.attributedPlaceholder = NSAttributedString(string: "email*", attributes: [NSAttributedString.Key.foregroundColor : UIColor.red])
        }
        let numberPhone = phoneNumber.text
        if phoneNumber.text == ""{
            phoneNumber.attributedPlaceholder = NSAttributedString(string: "Phone Number*", attributes: [NSAttributedString.Key.foregroundColor : UIColor.red])
        }
        
        func submit(){
            performSegue(withIdentifier: "Submit", sender: nil)
        }
        
        let profileInfo = [nameFirst, nameLast, dateOfBirth, numberId, mail, numberPhone]
        var count = 0
        for (_, key) in profileInfo.enumerated(){
            if key == ""{
                
            }else{
                count += 1
            }
        }
        if count == 7{
            submit()
        }else{
            
            
        }
            
        
        }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Submit"{
            let newVC = segue.destination as! thirdViewController
            newVC.firstName = firstName.text
            newVC.lastName = lastName.text
            newVC.dateOfBirth = Int(dataOfBirth.text ?? "0")
            newVC.idCard = idNumber.text
            newVC.email = email.text
            newVC.phoneNumber = phoneNumber.text
        }
        
    }
}
