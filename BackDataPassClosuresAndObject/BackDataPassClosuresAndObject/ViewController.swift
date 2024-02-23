//
//  ViewController.swift
//  BackDataPassClosuresAndObject
//
//  Created by Prasenjeet Pandagale on 23/02/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var nameLabel: UILabel!
    
    @IBOutlet var middleNameLabel: UILabel!
    @IBOutlet var lastNameLabel: UILabel!
    var secondViewController : SecondViewController = SecondViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func nxtBtn(_ sender: Any) {
        secondViewController = self.storyboard?.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
        
        self.navigationController?.pushViewController(secondViewController, animated: true)
        
        secondViewController.backDataPassClosure = {Student in
            self.nameLabel.text = Student.name
            self.middleNameLabel.text = Student.middleName
            
            self.lastNameLabel.text = Student.lastName
        }
    }
    
}

