//
//  SecondViewController.swift
//  BackDataPassClosuresAndObject
//
//  Created by Prasenjeet Pandagale on 23/02/24.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet var nameTF: UITextField!
    @IBOutlet var middleNameTF: UITextField!
    
    @IBOutlet var lastNameTF: UITextField!
    var backDataPassClosure : ((Student)-> Void)?
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func backBtn(_ sender: Any) {
        let extractedFirstName = self.nameTF.text
        let extractedMiddleName = self.middleNameTF.text
        let extractedLastName = self.lastNameTF.text
        let studentObject = Student(name: extractedFirstName!, middleName: extractedMiddleName!, lastName: extractedLastName!)
//        guard let backDataPassClosure1 = backDataPassClosure else
//        {return}
        backDataPassClosure?(studentObject)
        
        
        self.navigationController?.popViewController(animated: true)
    }
}
