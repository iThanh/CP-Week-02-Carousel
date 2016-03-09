//
//  SignupViewController.swift
//  WeekTwo
//
//  Created by Jan Senderek on 2/10/16.
//  Copyright © 2016 Jan Senderek. All rights reserved.
//

import UIKit

class SignupViewController: UIViewController {
    
    
    //Outlets
    @IBOutlet weak var signupScrollView: UIScrollView!
    @IBOutlet weak var fieldParentView: UIView!
    @IBOutlet weak var buttonParentView: UIView!
    @IBOutlet weak var firstNameText: UITextField!
    @IBOutlet weak var lastNameText: UITextField!
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var buttonText: UITextField!
    @IBOutlet weak var signupButton: UIButton!
    

    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        
//        signupScrollView.delegate = self
//        
//        signupScrollView.contentSize = signupScrollView.frame.size
//        signupScrollView.contentInset.bottom = 100
//        
//        
//        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
//        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
//        
//        
//        fieldParentInitialY = fieldParentView.frame.origin.y
//        fieldParentOffset = -80
//        buttonParentInitialY = buttonParentView.frame.origin.y
//        buttonParentOffset = -270


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
