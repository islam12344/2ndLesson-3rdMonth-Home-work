//
//  thirdViewController.swift
//  2ndLesson 3rdMonth Home work
//
//  Created by Islam on 28/12/22.
//

import UIKit

class thirdViewController: UIViewController {

    var firstName: String?
    var lastName: String?
    var dateOfBirth: Int?
    var idCard: String?
    var email: String?
    var phoneNumber: String?
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("firstName: \(firstName ?? "empty")")
        print("lastName: \(lastName ?? "empty")")
        print("dateOfBirth: \(dateOfBirth ?? 0)")
        print("idCard: \(idCard ?? "empty")")
        print("email: \(email ?? "empty")")
        print("phoneNumber: \(phoneNumber ?? "empty")")
        
        

        // Do any additional setup after loading the view.
    }
    

 
}
