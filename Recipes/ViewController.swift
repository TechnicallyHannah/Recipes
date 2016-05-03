//
//  ViewController.swift
//  Recipes
//
//  Created by A712948 on 5/2/16.
//  Copyright © 2016 A712948. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    //MARK: PROPERTIES
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    
    //MARK : UITextFieldDelegate 
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        //Hide the keyboard
        textField.resignFirstResponder()
        return true
    }
    func textFieldDidEndEditing(textField: UITextField) {
        mealNameLabel.text = textField.text
    }
    
    //MARK: ACTIONS
    
    @IBAction func setDefaultLabelText(sender: UIButton) {
        mealNameLabel.text = "Default Label"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

