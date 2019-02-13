//
//  ViewController.swift
//  phoneNumber
//
//  Created by Bibek Shrestha on 2/12/19.
//  Copyright © 2019 Bibek Shrestha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let defaults = UserDefaults.standard
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var saveButtonTextView: UIButton!
    
    
    @IBAction func saveButton(_ sender: Any) {

        print("Button pressed")

        defaults.set(nameTextField.text!, forKey: "Name")
        defaults.set(numberTextField.text!,forKey: "PhoneNumber")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if UserDefaults.standard.string(forKey: "Name") != nil {
            nameTextField.text = defaults.string(forKey: "Name")
            numberTextField.text = defaults.string(forKey: "PhoneNumber")
            
            saveButtonTextView.setTitle("Update", for: .normal)
    
    }
    
}

}
