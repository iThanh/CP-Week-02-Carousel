//
//  LoginViewController.swift
//  WeekTwo
//
//  Created by Jan Senderek on 2/9/16.
//  Copyright © 2016 Jan Senderek. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController , UIScrollViewDelegate {
    
    //Outlets
    @IBOutlet weak var loginNavBar: UIImageView!
    @IBOutlet weak var loginScrollView: UIScrollView!
    @IBOutlet weak var fieldParentView: UIView!
    @IBOutlet weak var buttonParentView: UIView!
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var loginActivityIndicator: UIActivityIndicatorView!
    
    
    //Variables
    var fieldParentInitialY: CGFloat!
    var fieldParentOffset: CGFloat!
    var buttonParentInitialY: CGFloat!
    var buttonParentOffset: CGFloat!
    
    
    //ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        loginScrollView.delegate = self
        
        loginScrollView.contentSize = loginScrollView.frame.size
        loginScrollView.contentInset.bottom = 100
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
        
        
        fieldParentInitialY = fieldParentView.frame.origin.y
        fieldParentOffset = -80
        buttonParentInitialY = buttonParentView.frame.origin.y
        buttonParentOffset = -270
        
        
    }
    
    /*
    override func viewWillAppear(animated: Bool) {
    // Set initial transform values 20% of original size
    let transform = CGAffineTransformMakeScale(0.2, 0.2)
    // Apply the transform properties of the views
    loginNavBar.transform = transform
    fieldParentView.transform = transform
    // Set the alpha properties of the views to transparent
    loginNavBar.alpha = 0
    fieldParentView.alpha = 0
    }
    
    // The main view appeared...
    override func viewDidAppear(animated: Bool) {
        //Animate the code within over 0.3 seconds...
        UIView.animateWithDuration(0.3) { () -> Void in
            // Return the views transform properties to their default states.
            self.fieldParentView.transform = CGAffineTransformIdentity
            self.loginNavBar.transform = CGAffineTransformIdentity
            // Set the alpha properties of the views to fully opaque
            self.fieldParentView.alpha = 1
            self.loginNavBar.alpha = 1
        }
    }
    
    */
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    //Functions - Button Events
    @IBAction func didPressBackButton(sender: AnyObject) {
        navigationController?.popToRootViewControllerAnimated(true)
    }
    
    
    
    @IBAction func didPressLoginButton(sender: AnyObject) {
        //If email or password fields are empty
        if emailTextField.text!.isEmpty || passwordTextField.text!.isEmpty {
            //Show the following alert
            let missingTextAlert = UIAlertController(title: "Email or Password Missing", message: "Please tell me more!", preferredStyle: .Alert)
            
            let okAction = UIAlertAction(title: "OK", style: .Default) { (action) in
            }
    
            missingTextAlert.addAction(okAction)
            presentViewController(missingTextAlert, animated: true) {
            }
            
        }
        
            
        //Or else...
        else {
            //If password and email are a specific input
            if emailTextField.text == "jan@jansen.co" && passwordTextField.text == "jan" {
                //Start animating, delay and perform segue
                loginActivityIndicator.startAnimating()
                delay(2, closure: { () -> () in
                    self.loginActivityIndicator.stopAnimating()
                    self.performSegueWithIdentifier("loginSegue", sender: nil)
                })
            }
            //Or else...
            else {
                //Start animating, delay and show the following alternative alert
                loginActivityIndicator.startAnimating()
                delay(2, closure: { () -> () in
                    self.loginActivityIndicator.stopAnimating()
        
                    let wrongTextAlert = UIAlertController(title: "Wrong Password or Email", message: "Try again!", preferredStyle: .Alert)
    
                    let okAction = UIAlertAction(title: "OK", style: .Default) { (action) in
                    }
                
                    wrongTextAlert.addAction(okAction)
                    self.presentViewController(wrongTextAlert, animated: true) {
                    }
                
                })
            }
            
        }

    }
    
    
    
    
    
    //Functions - Scroll Events
    func scrollViewDidScroll(loginScrollView: UIScrollView) {
        // This method is called as the user scrolls
        
        if loginScrollView.contentOffset.y <= -50 {
            view.endEditing(true)
        }
    }
    
    
    
    //Functions - Keyboard Events
    func keyboardWillShow(notification: NSNotification!) {
        fieldParentView.frame.origin.y = fieldParentInitialY + fieldParentOffset
        buttonParentView.frame.origin.y = buttonParentInitialY + buttonParentOffset
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        fieldParentView.frame.origin.y = fieldParentInitialY
        buttonParentView.frame.origin.y = buttonParentInitialY
    }
    
    @IBAction func tappedView(sender: AnyObject) {
        view.endEditing(true)
    }

    
    

}
